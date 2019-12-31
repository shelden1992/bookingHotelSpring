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
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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

    @RequestMapping(value = "/registration-form", method = RequestMethod.GET)
    public String getRegistrationFormPage(Model model) {
        model.addAttribute("registrationForm", new RegistrationForm());
        LOG.debug("Added to attribute \"registrationForm\"");

        return "registrationForm";
    }

    @RequestMapping(value = "/processing-registration-form", method = RequestMethod.POST)
    public String processingRegistrationForm(@Valid @ModelAttribute(name = "registrationForm") RegistrationForm registrationForm, BindingResult error, Model model) {
        if (error.hasErrors()) {
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
