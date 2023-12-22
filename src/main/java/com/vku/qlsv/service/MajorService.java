package com.vku.qlsv.service;

import com.vku.qlsv.entity.Major;

import java.util.List;

public interface MajorService {
    public List<Major> findAll();

    public Major findById(Integer id);

    public Major create(Major major);

    public Major update(Major major);

    public void delete(Integer id);
}
