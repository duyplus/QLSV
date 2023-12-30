package com.vku.qlsv.service.impl;

import com.vku.qlsv.entity.Graduate;
import com.vku.qlsv.entity.Student;
import com.vku.qlsv.repository.GraduateDAO;
import com.vku.qlsv.repository.StudentDAO;
import com.vku.qlsv.service.GraduateService;
import com.vku.qlsv.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class GraduateServiceImpl implements GraduateService {
    @Autowired
    GraduateDAO dao;

    @Override
    public List<Graduate> findAll() {
        return dao.findAll();
    }

    @Override
    public Graduate findById(String id) {
        return dao.findById(id).get();
    }

    public Graduate create(Graduate graduate) {
        return dao.save(graduate);
    }

    @Override
    public Graduate update(Graduate graduate) {
        return dao.save(graduate);
    }

    @Override
    public void delete(String id) {
        dao.deleteById(id);
    }

}
