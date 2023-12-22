package com.vku.qlsv.repository;

import com.vku.qlsv.entity.School;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface SchoolDAO extends JpaRepository<School, String> {
    // You can add custom query methods here if needed
}
