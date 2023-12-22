package com.vku.qlsv.service.impl;

import com.vku.qlsv.entity.School;
import com.vku.qlsv.repository.SchoolDAO;
import com.vku.qlsv.service.SchoolService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SchoolServiceImpl implements SchoolService {
    @Autowired
    SchoolDAO dao;

    @Override
    public List<School> findAll() {
        return dao.findAll();
    }

    @Override
    public School findById(String id) {
        return dao.findById(id).get();
    }

    public School create(School major) {
        return dao.save(major);
    }

    @Override
    public School update(School major) {
        return dao.save(major);
    }

    @Override
    public void delete(String id) {
        dao.deleteById(id);
    }

}
