package com.vku.qlsv.rest;

import com.vku.qlsv.entity.School;
import com.vku.qlsv.service.SchoolService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@CrossOrigin("*")
@RestController
@RequestMapping("/rest/school")
public class SchoolRestController {
    @Autowired
    SchoolService schoolService;

    @GetMapping()
    public List<School> getAll() {
        return schoolService.findAll();
    }

    @GetMapping("{id}")
    public School getOne(@PathVariable("id") String id) {
        return schoolService.findById(id);
    }

    @PostMapping()
    public School create(@RequestBody School school) {
        return schoolService.create(school);
    }

    @PutMapping("{id}")
    public School update(@PathVariable("id") String id, @RequestBody School school) {
        return schoolService.update(school);
    }

    @DeleteMapping("{id}")
    public void delete(@PathVariable("id") String id) {
        schoolService.delete(id);
    }
}
