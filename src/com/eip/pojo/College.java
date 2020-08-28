package com.eip.pojo;

public class College extends Organization{
    private Integer CId;
    private String CName;
    private String CAddress;
    private String CDescription;
    private Integer CStuffs;
    private Integer CTeachers;
    private Integer CCapacity;
    private Integer CCapacityYears;
    private Float CPointX;
    private Float CPointY;

    public College() {
    }

    public College(Integer CId, String CName, String CAddress, String CDescription, Integer CStuffs, Integer CTeachers, Integer CCapacity, Integer CCapacityYears, Float CPointX, Float CPointY) {
        this.CId = CId;
        this.CName = CName;
        this.CAddress = CAddress;
        this.CDescription = CDescription;
        this.CStuffs = CStuffs;
        this.CTeachers = CTeachers;
        this.CCapacity = CCapacity;
        this.CCapacityYears = CCapacityYears;
        this.CPointX = CPointX;
        this.CPointY = CPointY;
    }

    public Integer getCId() {
        return CId;
    }

    public void setCId(Integer CId) {
        this.CId = CId;
    }

    public String getCName() {
        return CName;
    }

    public void setCName(String CName) {
        this.CName = CName;
    }

    public String getCAddress() {
        return CAddress;
    }

    public void setCAddress(String CAddress) {
        this.CAddress = CAddress;
    }

    public String getCDescription() {
        return CDescription;
    }

    public void setCDescription(String CDescription) {
        this.CDescription = CDescription;
    }

    public Integer getCStuffs() {
        return CStuffs;
    }

    public void setCStuffs(Integer CStuffs) {
        this.CStuffs = CStuffs;
    }

    public Integer getCTeachers() {
        return CTeachers;
    }

    public void setCTeachers(Integer CTeachers) {
        this.CTeachers = CTeachers;
    }

    public Integer getCCapacity() {
        return CCapacity;
    }

    public void setCCapacity(Integer CCapacity) {
        this.CCapacity = CCapacity;
    }

    public Integer getCCapacityYears() {
        return CCapacityYears;
    }

    public void setCCapacityYears(Integer CCapacityYears) {
        this.CCapacityYears = CCapacityYears;
    }

    public Float getCPointX() {
        return CPointX;
    }

    public void setCPointX(Float CPointX) {
        this.CPointX = CPointX;
    }

    public Float getCPointY() {
        return CPointY;
    }

    public void setCPointY(Float CPointY) {
        this.CPointY = CPointY;
    }

    @Override
    public String toString() {
        return "College{" + "CId=" + CId + ", CName='" + CName + '\'' + ", CAddress='" + CAddress + '\'' + ", CDescription='" + CDescription + '\'' + ", CStuffs=" + CStuffs + ", CTeachers=" + CTeachers + ", CCapacity=" + CCapacity + ", CCapacityYears=" + CCapacityYears + ", CPointX=" + CPointX + ", CPointY=" + CPointY + '}';
    }
}
