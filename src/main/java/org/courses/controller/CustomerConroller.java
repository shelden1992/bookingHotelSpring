//package org.courses.controller;
//
//import org.courses.form.RegistrationForm;
//import org.courses.model.User;
//import org.courses.service.UserService;
//import org.springframework.beans.propertyeditors.StringTrimmerEditor;
//import org.springframework.stereotype.Controller;
//import org.springframework.ui.Model;
//import org.springframework.validation.BindingResult;
//import org.springframework.validation.Validator;
//import org.springframework.validation.annotation.Validated;
//import org.springframework.web.bind.WebDataBinder;
//import org.springframework.web.bind.annotation.*;
//
//import javax.annotation.Resource;
//import javax.validation.Valid;
//import java.util.List;
//
//@Controller
//@RequestMapping("user")
//public class UserController {
//    private static final String USER = "user";
//    @Resource(name = "userServiceImpl")
//    private UserService userService;
//    @Resource(name = "registrationFormValidator")
//    private Validator validator;
//
//    @InitBinder
//    public void initBinder(WebDataBinder webDataBinder) {
//        StringTrimmerEditor stringTrimmerEditor = new StringTrimmerEditor(true);
//        webDataBinder.registerCustomEditor(String.class, stringTrimmerEditor);
//        webDataBinder.setValidator(validator);
//
//    }
//
//
//    @GetMapping("/showFormForUpdate")
//    public String showUserFormUpdate(@RequestParam("UserId") int theId, Model model) {
//        User user = UserService.getUser(theId);
//        UserForm UserForm = getUserForm(User);
//        model.addAttribute("UserForm", UserForm);
//        return "show-form-for-updater";
//    }
//
//    @GetMapping("/deleteUser")
//    public String deleteUser(@RequestParam("UserId") int theId, Model model) {
//        UserService.deleteUser(theId);
//        return "redirect:/User/list";
//    }
//
//    @PostMapping("/searchUsers")
//    public String searchUsers(@Validated @ModelAttribute("searchUsersForm") RegistrationForm registrationForm, BindingResult error, Model model) {
//        String searchName = registrationForm.getSearchName();
//        if (searchName == null || searchName.isEmpty()) {
//            return "redirect:/User/list";
//        }
//        List<User> Users = UserService.searchUsers(searchName);
//        model.addAttribute(USER, Users);
//
//
//        return "list-Users";
//    }
//
//    @PostMapping("/processing-form")
//    public String processingForm(@ModelAttribute("UserForm") @Valid UserForm UserForm, BindingResult error, Model model) {
//        validator.validate(UserForm, error);
//        if (error.hasErrors()) {
//            return "show-form-add-User";
//        }
//        User User = getUser(UserForm);
//        UserService.creatUser(User);
//        return "redirect:/User/list";
//    }
//
//    @PostMapping("/update-form")
//    public String updateForm(@ModelAttribute("UserForm") @Valid UserForm UserForm, BindingResult error, Model model) {
//        validator.validate(UserForm, error);
//        if (error.hasErrors()) {
//            return "show-form-for-updater";
//        }
//        User User = getUser(UserForm);
//        UserService.saveOrUpdate(User);
//        return "redirect:list-Users";
//    }
//
//    private User getUser(UserForm UserForm) {
//        User User = new User(UserForm.getFirstName(), UserForm.getLastName(), UserForm.getEmail());
//        if (UserForm.getId() != 0) {
//            int id = UserForm.getId();
//            User.setId(id);
//        }
//        return User;
//    }
//
//
//    private UserForm getUserForm(User User) {
//        UserForm UserForm = new UserForm(User.getFirstName(), User.getLastName(), User.getEmail());
//        if (User.getId() != 0) {
//            UserForm.setId(User.getId());
//        }
//        return UserForm;
//    }
//}
