package com.vku.qlsv.controller;

import com.vku.qlsv.service.MajorService;
import com.vku.qlsv.service.SchoolService;
import com.vku.qlsv.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class StudentController {
    @Autowired
    StudentService studentService;
    @Autowired
    MajorService majorService;
    @Autowired
    SchoolService schoolService;

    @RequestMapping({"/", "/home", "/index"})
    public String index() {
        return "redirect:/home/index.html#!/student";
    }
}