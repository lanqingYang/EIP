package com.eip.pojo;

public class Survey {
    private Integer id;
    private Integer Q1;
    private Integer Q2;
    private Integer Q3;
    private Integer Q4;
    private Integer Q5;
    private Integer Q6;
    private Integer Q7;

    public Survey() {
    }

    public Survey(Integer id, Integer q1, Integer q2, Integer q3, Integer q4, Integer q5, Integer q6, Integer q7) {
        this.id = id;
        Q1 = q1;
        Q2 = q2;
        Q3 = q3;
        Q4 = q4;
        Q5 = q5;
        Q6 = q6;
        Q7 = q7;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getQ1() {
        return Q1;
    }

    public void setQ1(Integer q1) {
        Q1 = q1;
    }

    public Integer getQ2() {
        return Q2;
    }

    public void setQ2(Integer q2) {
        Q2 = q2;
    }

    public Integer getQ3() {
        return Q3;
    }

    public void setQ3(Integer q3) {
        Q3 = q3;
    }

    public Integer getQ4() {
        return Q4;
    }

    public void setQ4(Integer q4) {
        Q4 = q4;
    }

    public Integer getQ5() {
        return Q5;
    }

    public void setQ5(Integer q5) {
        Q5 = q5;
    }

    public Integer getQ6() {
        return Q6;
    }

    public void setQ6(Integer q6) {
        Q6 = q6;
    }

    public Integer getQ7() {
        return Q7;
    }

    public void setQ7(Integer q7) {
        Q7 = q7;
    }

    @Override
    public String toString() {
        return "Survey{" + "id=" + id + ", Q1=" + Q1 + ", Q2=" + Q2 + ", Q3=" + Q3 + ", Q4=" + Q4 + ", Q5=" + Q5 + ", Q6=" + Q6 + ", Q7=" + Q7 + '}';
    }
}
