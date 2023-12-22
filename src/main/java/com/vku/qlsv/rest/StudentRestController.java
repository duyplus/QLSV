package com.vku.qlsv.rest;

import com.vku.qlsv.entity.Student;
import com.vku.qlsv.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@CrossOrigin("*")
@RestController
@RequestMapping("/rest/student")
public class StudentRestController {
    @Autowired
    StudentService studentService;

    @GetMapping()
    public List<Student> getAll() {
        return studentService.findAll();
    }

    @GetMapping("{id}")
    public Student getOne(@PathVariable("id") String id) {
        return studentService.findById(id);
    }

    @PostMapping()
    public Student create(@RequestBody Student student) {
        return studentService.create(student);
    }

    @PutMapping("{id}")
    public Student update(@PathVariable("id") String id, @RequestBody Student student) {
        return studentService.update(student);
    }

    @DeleteMapping("{id}")
    public void delete(@PathVariable("id") String id) {
        studentService.delete(id);
    }
}
