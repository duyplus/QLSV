package com.vku.qlsv.entity;

import lombok.Getter;
import lombok.Setter;

import java.io.Serializable;
import java.util.Objects;

@Getter
@Setter
public class JobsId implements Serializable {
    private String ngayvaocty;
    private String socmnd;

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        JobsId jobsId = (JobsId) o;
        return Objects.equals(ngayvaocty, jobsId.ngayvaocty) && Objects.equals(socmnd, jobsId.socmnd);
    }

    @Override
    public int hashCode() {
        return Objects.hash(ngayvaocty, socmnd);
    }
}
