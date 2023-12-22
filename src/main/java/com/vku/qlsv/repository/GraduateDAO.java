package com.vku.qlsv.repository;

import com.vku.qlsv.entity.Graduate;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface GraduateDAO extends JpaRepository<Graduate, String> {
    // You can add custom query methods here if needed
}
