package org.courses.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/gallery")
public class GalleryController {
    @GetMapping
    public String goGalleryPage() {
        return "gallery";
    }
}
