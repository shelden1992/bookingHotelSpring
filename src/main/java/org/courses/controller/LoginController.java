package org.courses.controller;

import org.apache.log4j.Logger;
import org.courses.form.LoginForm;
import org.courses.model.User;
import org.courses.service.UserServiceImpl;
import org.springframework.beans.propertyeditors.StringTrimmerEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.validation.Validator;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import javax.annotation.Resource;
import javax.validation.Valid;

@Controller
public class LoginController {
    private static final Logger LOG = Logger.getLogger(LoginController.class);
    @Resource
    private UserServiceImpl userServiceImpl;
    @Resource(name = "loginFormValidator")
    private Validator validator;

    @InitBinder
    public void initBinder(WebDataBinder dataBinder) {
        StringTrimmerEditor stringTrimmerEditor = new StringTrimmerEditor(true);
        dataBinder.registerCustomEditor(String.class, stringTrimmerEditor);
//        dataBinder.setValidator(validator);
    }


    @GetMapping(value = "/login-form")
    public String loginForm(Model model) {
        model.addAttribute("loginForm", new LoginForm());
        return "loginForm";
    }

    @PostMapping(value = "/processing-login")
    public String processLoginForm(@Valid @ModelAttribute("loginForm") LoginForm loginForm, BindingResult error, Model model) {
        System.out.println("Field error " + error.getFieldError());
        error.getAllErrors().stream().map(ObjectError::getObjectName).forEach(System.out::println);
        if (error.hasErrors()) {
            LOG.debug("Error in loginForm " + error);
            return "loginForm";
        }
        LOG.debug("LoginForm " + loginForm);
        User user = userServiceImpl.getUserByEmail(loginForm.getEmail());
        if (user != null) {
            if (userServiceImpl.passwordSame(loginForm.getPassword(), user.getPassword())) {
                return "index";
            }
        }
        error.rejectValue("password", "error.login.emailOrPassword");


        return "loginForm";
    }

}
