package com.vku.qlsv.entity;


import jakarta.persistence.*;
import lombok.Data;

@Data
@Entity
@Table(name = "graduates")
@IdClass(GraduatesId.class)
public class Graduate {

    @Id
    @Column(name = "socmnd")
    private String socmnd;

    @Id
    @Column(name = "matruong")
    private String matruong;

    @Id
    @Column(name = "manganh")
    private Integer manganh;

    @Column(name = "hetn")
    private String hetn;

    @Column(name = "ngaytn")
    private String ngaytn;

    @Column(name = "loaitn")
    private String loaitn;
}
