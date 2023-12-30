package com.vku.qlsv.service;

import com.vku.qlsv.entity.Graduate;
import com.vku.qlsv.entity.Student;

import java.util.List;

public interface GraduateService {
	public List<Graduate> findAll();

	public Graduate findById(String id);

	public Graduate create(Graduate graduate);

	public Graduate update(Graduate graduate);

	public void delete(String id);
}
