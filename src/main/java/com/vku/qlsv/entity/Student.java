package com.vku.qlsv.entity;


import jakarta.persistence.*;
import lombok.Data;

@Data
@Entity
@Table(name = "students")
public class Student {

    @Id
    @Column(name = "socmnd")
    private String socmnd;

    @Column(name = "hoten")
    private String hoten;

    @Column(name = "email", unique = true)
    private String email;

    @Column(name = "sdt")
    private String sdt;

    @ManyToOne
    @JoinColumns({@JoinColumn(name = "socmnd", referencedColumnName = "socmnd", insertable = false, updatable = false)})
    private Graduate graduate;
}
