package com.vku.qlsv.repository;

import com.vku.qlsv.entity.Job;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface JobDAO extends JpaRepository<Job, String> {
    // You can add custom query methods here if needed
}
