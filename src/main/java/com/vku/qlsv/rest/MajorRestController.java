package com.vku.qlsv.rest;

import com.vku.qlsv.entity.Major;
import com.vku.qlsv.service.MajorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@CrossOrigin("*")
@RestController
@RequestMapping("/rest/major")
public class MajorRestController {
    @Autowired
    MajorService majorService;

    @GetMapping()
    public List<Major> getAll() {
        return majorService.findAll();
    }

    @GetMapping("{id}")
    public Major getOne(@PathVariable("id") Integer id) {
        return majorService.findById(id);
    }

    @PostMapping()
    public Major create(@RequestBody Major major) {
        return majorService.create(major);
    }

    @PutMapping("{id}")
    public Major update(@PathVariable("id") Integer id, @RequestBody Major major) {
        return majorService.update(major);
    }

    @DeleteMapping("{id}")
    public void delete(@PathVariable("id") Integer id) {
        majorService.delete(id);
    }
}
