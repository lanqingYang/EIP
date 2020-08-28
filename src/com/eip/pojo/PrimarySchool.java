package com.eip.pojo;

public class PrimarySchool extends Organization{
    private Integer PSId;
    private String PSName;
    private String PSAddress;
    private String PSDescription;
    private Integer PSStuffs;
    private Integer PSTeachers;
    private Integer PSCapacity;
    private Integer PSCapacityYears;
    private Float PSPointX;
    private Float PSPointY;

    public PrimarySchool() {
    }

    public PrimarySchool(Integer PSId, String PSName, String PSAddress, String PSDescription, Integer PSStuffs, Integer PSTeachers, Integer PSCapacity, Integer PSCapacityYears, Float PSPointX, Float PSPointY) {
        this.PSId = PSId;
        this.PSName = PSName;
        this.PSAddress = PSAddress;
        this.PSDescription = PSDescription;
        this.PSStuffs = PSStuffs;
        this.PSTeachers = PSTeachers;
        this.PSCapacity = PSCapacity;
        this.PSCapacityYears = PSCapacityYears;
        this.PSPointX = PSPointX;
        this.PSPointY = PSPointY;
    }

    public Integer getPSId() {
        return PSId;
    }

    public void setPSId(Integer PSId) {
        this.PSId = PSId;
    }

    public String getPSName() {
        return PSName;
    }

    public void setPSName(String PSName) {
        this.PSName = PSName;
    }

    public String getPSAddress() {
        return PSAddress;
    }

    public void setPSAddress(String PSAddress) {
        this.PSAddress = PSAddress;
    }

    public String getPSDescription() {
        return PSDescription;
    }

    public void setPSDescription(String PSDescription) {
        this.PSDescription = PSDescription;
    }

    public Integer getPSStuffs() {
        return PSStuffs;
    }

    public void setPSStuffs(Integer PSStuffs) {
        this.PSStuffs = PSStuffs;
    }

    public Integer getPSTeachers() {
        return PSTeachers;
    }

    public void setPSTeachers(Integer PSTeachers) {
        this.PSTeachers = PSTeachers;
    }

    public Integer getPSCapacity() {
        return PSCapacity;
    }

    public void setPSCapacity(Integer PSCapacity) {
        this.PSCapacity = PSCapacity;
    }

    public Integer getPSCapacityYears() {
        return PSCapacityYears;
    }

    public void setPSCapacityYears(Integer PSCapacityYears) {
        this.PSCapacityYears = PSCapacityYears;
    }

    public Float getPSPointX() {
        return PSPointX;
    }

    public void setPSPointX(Float PSPointX) {
        this.PSPointX = PSPointX;
    }

    public Float getPSPointY() {
        return PSPointY;
    }

    public void setPSPointY(Float PSPointY) {
        this.PSPointY = PSPointY;
    }

    @Override
    public String toString() {
        return "PrimarySchool{" + "PSId=" + PSId + ", PSName='" + PSName + '\'' + ", PSAddress='" + PSAddress + '\'' + ", PSDescription='" + PSDescription + '\'' + ", PSStuffs=" + PSStuffs + ", PSTeachers=" + PSTeachers + ", PSCapacity=" + PSCapacity + ", PSCapacityYears=" + PSCapacityYears + ", PSPointX=" + PSPointX + ", PSPointY=" + PSPointY + '}';
    }
}
