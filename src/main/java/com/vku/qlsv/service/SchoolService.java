package com.vku.qlsv.service;

import com.vku.qlsv.entity.School;

import java.util.List;

public interface SchoolService {
    public List<School> findAll();

    public School findById(String id);

    public School create(School major);

    public School update(School major);

    public void delete(String id);
}
