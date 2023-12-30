package com.vku.qlsv.repository;

import com.vku.qlsv.entity.Graduate;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
public interface GraduateDAO extends JpaRepository<Graduate, String> {
    // You can add custom query methods here if needed
    @Query("SELECT g FROM Graduate g WHERE g.socmnd = ?1")
    public Graduate findByCmnd(String socmnd);

    @Transactional
    @Modifying
    @Query("DELETE FROM Graduate g WHERE g.socmnd = ?1")
    public void deleteByCmnd(String socmnd);
}
