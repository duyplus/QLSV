package com.vku.qlsv.entity;

import jakarta.persistence.*;
import lombok.Data;

@Data
@Entity
@Table(name = "jobs")
@IdClass(JobsId.class)
public class Job {

    @Id
    @Column(name = "ngayvaocty")
    private String ngayvaocty;

    @Id
    @Column(name = "socmnd")
    private String socmnd;

    @Column(name = "tencv")
    private String tencv;

    @Column(name = "tencty")
    private String tencty;

    @Column(name = "diachicty")
    private String diachicty;

    @Column(name = "tglamviec")
    private String tglamviec;
}
