package com.vku.qlsv.service.impl;

import com.vku.qlsv.entity.Graduate;
import com.vku.qlsv.entity.Student;
import com.vku.qlsv.repository.GraduateDAO;
import com.vku.qlsv.repository.StudentDAO;
import com.vku.qlsv.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class StudentServiceImpl implements StudentService {
    @Autowired
    StudentDAO dao;

    @Autowired
    GraduateDAO graduateDAO;

    @Override
    public List<Student> findAll() {
        return dao.findAll();
    }

    @Override
    public Student findById(String id) {
        return dao.findById(id).get();
    }

    public Student create(Student student) {
//        String socmnd = student.getSocmnd();
//        Graduate graduate = graduateDAO.findByCmnd(socmnd);
//        graduate.setSocmnd(socmnd);
//        graduateDAO.save(graduate);
        return dao.save(student);
    }

    @Override
    public Student update(Student student) {
        String socmnd = student.getSocmnd();
        Graduate graduate = graduateDAO.findByCmnd(socmnd);
        graduate.setSocmnd(socmnd);
        graduateDAO.save(graduate);
        return dao.save(student);
    }

    @Override
    public void delete(String id) {
        graduateDAO.deleteByCmnd(id);
        dao.deleteById(id);
    }

}
