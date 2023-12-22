package com.vku.qlsv.entity;


import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.Data;

@Data
@Entity
@Table(name = "schools")
public class School {

    @Id
    @Column(name = "matruong")
    private String matruong;

    @Column(name = "tentruong")
    private String tentruong;

    @Column(name = "diachi")
    private String diachi;

    @Column(name = "sdt")
    private String sdt;
}
