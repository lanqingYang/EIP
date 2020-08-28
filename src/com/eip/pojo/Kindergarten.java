package com.eip.pojo;

public class Kindergarten{
    private Integer KId;
    private String KName;
    private String KAddress;
    private String KDescription;
    private Integer KStuffs;
    private Integer KTeachers;
    private Integer KCapacity;
    private Integer KCapacityYears;
    private Float KPointX;
    private Float KPointY;

    public Kindergarten() {
    }

    public Kindergarten(Integer KId, String KName, String KAddress, String KDescription, Integer KStuffs, Integer KTeachers, Integer KCapacity, Integer KCapacityYears, Float KPointX, Float KPointY) {
        this.KId = KId;
        this.KName = KName;
        this.KAddress = KAddress;
        this.KDescription = KDescription;
        this.KStuffs = KStuffs;
        this.KTeachers = KTeachers;
        this.KCapacity = KCapacity;
        this.KCapacityYears = KCapacityYears;
        this.KPointX = KPointX;
        this.KPointY = KPointY;
    }

    public Integer getKId() {
        return KId;
    }

    public void setKId(Integer KId) {
        this.KId = KId;
    }

    public String getKName() {
        return KName;
    }

    public void setKName(String KName) {
        this.KName = KName;
    }

    public String getKAddress() {
        return KAddress;
    }

    public void setKAddress(String KAddress) {
        this.KAddress = KAddress;
    }

    public String getKDescription() {
        return KDescription;
    }

    public void setKDescription(String KDescription) {
        this.KDescription = KDescription;
    }

    public Integer getKStuffs() {
        return KStuffs;
    }

    public void setKStuffs(Integer KStuffs) {
        this.KStuffs = KStuffs;
    }

    public Integer getKTeachers() {
        return KTeachers;
    }

    public void setKTeachers(Integer KTeachers) {
        this.KTeachers = KTeachers;
    }

    public Integer getKCapacity() {
        return KCapacity;
    }

    public void setKCapacity(Integer KCapacity) {
        this.KCapacity = KCapacity;
    }

    public Integer getKCapacityYears() {
        return KCapacityYears;
    }

    public void setKCapacityYears(Integer KCapacityYears) {
        this.KCapacityYears = KCapacityYears;
    }

    public Float getKPointX() {
        return KPointX;
    }

    public void setKPointX(Float KPointX) {
        this.KPointX = KPointX;
    }

    public Float getKPointY() {
        return KPointY;
    }

    public void setKPointY(Float KPointY) {
        this.KPointY = KPointY;
    }

    @Override
    public String toString() {
        return "KindergartenMapper{" + "KId=" + KId + ", KName='" + KName + '\'' + ", KAddress='" + KAddress + '\'' + ", KDescription='" + KDescription + '\'' + ", KStuffs=" + KStuffs + ", KTeachers=" + KTeachers + ", KCapacity=" + KCapacity + ", KCapacityYears=" + KCapacityYears + ", KPointX=" + KPointX + ", KPointY=" + KPointY + '}';
    }
}
