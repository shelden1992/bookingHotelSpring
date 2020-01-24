package org.courses.controller;

import org.apache.log4j.Logger;
import org.courses.form.RegistrationForm;
import org.courses.model.User;
import org.courses.model.UserRole;
import org.courses.service.UserService;
import org.springframework.beans.propertyeditors.StringTrimmerEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.Validator;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import javax.annotation.Resource;
import javax.validation.Valid;

@Controller
public class RegistrationController {
    private static final Logger LOG = Logger.getLogger(RegistrationController.class);
    @Resource
    private UserService userService;
    @Resource(name = "registrationFormValidator")
    private Validator validator;

    @InitBinder
    private void initBinder(WebDataBinder dataBinder) {
        StringTrimmerEditor stringTrimmerEditor = new StringTrimmerEditor(true);
        dataBinder.registerCustomEditor(String.class, stringTrimmerEditor);
        dataBinder.setValidator(validator);
    }

    @GetMapping(value = "/registration-form")
    public String getRegistrationFormPage(Model model) {
        model.addAttribute("registrationForm", new RegistrationForm());
        LOG.debug("Added to attribute \"registrationForm\"");

        return "registrationForm";
    }

    @PostMapping(value = "/processing-registration")
    public String processingRegistrationForm(@Valid @ModelAttribute(name = "registrationForm") RegistrationForm registrationForm, BindingResult error, Model model) {
        if (error.hasErrors()) {
            LOG.debug("Error in registration form " + error.toString());
            return "registrationForm";
        }
        User user = userService.registerUser(registrationForm, UserRole.USER);
        if (user == null) {
            error.rejectValue("email", "error.email.exist");
            return "registrationForm";
        }
        return "redirect:/";
    }

}
