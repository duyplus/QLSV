package com.vku.qlsv.entity;


import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.Data;

@Data
@Entity
@Table(name = "majors")
public class Major {

    @Id
    @Column(name = "manganh")
    private Integer manganh;

    @Column(name = "tennganh")
    private String tennganh;

    @Column(name = "loainganh")
    private String loainganh;
}
