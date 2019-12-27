package org.courses.controller;

import org.apache.log4j.Logger;
import org.courses.form.LoginForm;
import org.courses.service.UserService;
import org.springframework.beans.propertyeditors.StringTrimmerEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.Validator;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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


    @RequestMapping(value = "/login-form")
    public String loginForm(Model model) {
        LoginForm loginForm = new LoginForm();
        model.addAttribute("loginForm", loginForm);

        return "loginForm";
    }

    @RequestMapping(value = "/process-login-form", method = RequestMethod.POST)
    public String processLoginForm(@Valid @ModelAttribute("loginForm") LoginForm loginForm, BindingResult error, Model model) {
        if (error.hasErrors()) {
            return "loginForm";
        }
//        if (userService.userExist(loginForm.getName(), loginForm.getEmail())) {
//        userService.passwordSame();
//        }


        return "loginForm";
    }

}
