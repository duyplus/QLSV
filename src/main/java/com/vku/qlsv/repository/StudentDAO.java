package com.vku.qlsv.repository;

import com.vku.qlsv.entity.Student;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface StudentDAO extends JpaRepository<Student, String> {
    // You can add custom query methods here if needed
}
