package com.vku.qlsv.service;

import java.util.List;

import com.vku.qlsv.entity.Student;

public interface StudentService {
	public List<Student> findAll();

	public Student findById(String id);

	public Student create(Student student);

	public Student update(Student student);

	public void delete(String id);
}
