package org.courses.controller;

import org.apache.log4j.Logger;
import org.courses.form.LoginForm;
import org.courses.model.User;
import org.courses.service.UserService;
import org.springframework.beans.propertyeditors.StringTrimmerEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.Validator;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.validation.Valid;

@Controller
public class LoginController {
    private static final Logger LOG = Logger.getLogger(LoginController.class);
    @Resource
    private UserService userService;
    @Resource(name = "loginFormValidator")
    private Validator validator;

    @InitBinder
    public void initBinder(WebDataBinder dataBinder) {
        StringTrimmerEditor stringTrimmerEditor = new StringTrimmerEditor(true);
        dataBinder.registerCustomEditor(String.class, stringTrimmerEditor);
        dataBinder.setValidator(validator);
    }


    @GetMapping(value = "/login-form")
    public String loginForm(Model model) {
        model.addAttribute("loginForm", new LoginForm());
        return "loginForm";
    }

    @PostMapping(value = "/processing-login")
    public String processLoginForm(@Valid @ModelAttribute("loginForm") LoginForm loginForm, BindingResult error, Model model) {
        if (error.hasErrors()) {
            LOG.debug("Error in loginForm " + error);
            return "loginForm";
        }
        LOG.debug("LoginForm " + loginForm);
        User user = userService.getUserByEmail(loginForm.getEmail());
        if (user != null) {
            if (userService.passwordSame(loginForm.getPassword(), user.getPassword())) {
                return "index";
            }
        }
        error.rejectValue("password", "error.login.emailOrPassword");


        return "loginForm";
    }

}
