package com.vku.qlsv.service.impl;

import com.vku.qlsv.entity.Student;
import com.vku.qlsv.repository.StudentDAO;
import com.vku.qlsv.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class StudentServiceImpl implements StudentService {
    @Autowired
    StudentDAO dao;

    @Override
    public List<Student> findAll() {
        return dao.findAll();
    }

    @Override
    public Student findById(String id) {
        return dao.findById(id).get();
    }

    public Student create(Student student) {
        return dao.save(student);
    }

    @Override
    public Student update(Student student) {
        return dao.save(student);
    }

    @Override
    public void delete(String id) {
        dao.deleteById(id);
    }

}
