package com.vku.qlsv.service.impl;

import com.vku.qlsv.entity.Major;
import com.vku.qlsv.repository.MajorDAO;
import com.vku.qlsv.service.MajorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MajorServiceImpl implements MajorService {
    @Autowired
    MajorDAO dao;

    @Override
    public List<Major> findAll() {
        return dao.findAll();
    }

    @Override
    public Major findById(Integer id) {
        return dao.findById(id).get();
    }

    public Major create(Major major) {
        return dao.save(major);
    }

    @Override
    public Major update(Major major) {
        return dao.save(major);
    }

    @Override
    public void delete(Integer id) {
        dao.deleteById(id);
    }

}
