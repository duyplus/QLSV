package com.vku.qlsv.repository;

import com.vku.qlsv.entity.Major;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface MajorDAO extends JpaRepository<Major, Integer> {
    // You can add custom query methods here if needed
}
