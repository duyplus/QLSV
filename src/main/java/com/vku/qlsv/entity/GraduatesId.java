package com.vku.qlsv.entity;

import lombok.Getter;
import lombok.Setter;

import java.io.Serializable;
import java.util.Objects;

@Getter
@Setter
public class GraduatesId implements Serializable {
    private String socmnd;
    private String matruong;
    private Integer manganh;

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        GraduatesId that = (GraduatesId) o;
        return manganh == that.manganh && Objects.equals(socmnd, that.socmnd) && Objects.equals(matruong, that.matruong);
    }

    @Override
    public int hashCode() {
        return Objects.hash(socmnd, matruong, manganh);
    }
}
