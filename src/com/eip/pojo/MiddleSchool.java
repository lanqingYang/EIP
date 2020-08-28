package com.eip.pojo;

public class MiddleSchool extends Organization{
    private Integer MSId;
    private String MSName;
    private String MSAddress;
    private String MSDescription;
    private Integer MSStuffs;
    private Integer MSTeachers;
    private Integer MSCapacity;
    private Integer MSCapacityYears;
    private Float MSPointX;
    private Float MSPointY;

    public MiddleSchool() {
    }

    public MiddleSchool(Integer MSId, String MSName, String MSAddress, String MSDescription, Integer MSStuffs, Integer MSTeachers, Integer MSCapacity, Integer MSCapacityYears, Float MSPointX, Float MSPointY) {
        this.MSId = MSId;
        this.MSName = MSName;
        this.MSAddress = MSAddress;
        this.MSDescription = MSDescription;
        this.MSStuffs = MSStuffs;
        this.MSTeachers = MSTeachers;
        this.MSCapacity = MSCapacity;
        this.MSCapacityYears = MSCapacityYears;
        this.MSPointX = MSPointX;
        this.MSPointY = MSPointY;
    }

    public Integer getMSId() {
        return MSId;
    }

    public void setMSId(Integer MSId) {
        this.MSId = MSId;
    }

    public String getMSName() {
        return MSName;
    }

    public void setMSName(String MSName) {
        this.MSName = MSName;
    }

    public String getMSAddress() {
        return MSAddress;
    }

    public void setMSAddress(String MSAddress) {
        this.MSAddress = MSAddress;
    }

    public String getMSDescription() {
        return MSDescription;
    }

    public void setMSDescription(String MSDescription) {
        this.MSDescription = MSDescription;
    }

    public Integer getMSStuffs() {
        return MSStuffs;
    }

    public void setMSStuffs(Integer MSStuffs) {
        this.MSStuffs = MSStuffs;
    }

    public Integer getMSTeachers() {
        return MSTeachers;
    }

    public void setMSTeachers(Integer MSTeachers) {
        this.MSTeachers = MSTeachers;
    }

    public Integer getMSCapacity() {
        return MSCapacity;
    }

    public void setMSCapacity(Integer MSCapacity) {
        this.MSCapacity = MSCapacity;
    }

    public Integer getMSCapacityYears() {
        return MSCapacityYears;
    }

    public void setMSCapacityYears(Integer MSCapacityYears) {
        this.MSCapacityYears = MSCapacityYears;
    }

    public Float getMSPointX() {
        return MSPointX;
    }

    public void setMSPointX(Float MSPointX) {
        this.MSPointX = MSPointX;
    }

    public Float getMSPointY() {
        return MSPointY;
    }

    public void setMSPointY(Float MSPointY) {
        this.MSPointY = MSPointY;
    }

    @Override
    public String toString() {
        return "MiddleSchool{" + "MSId=" + MSId + ", MSName='" + MSName + '\'' + ", MSAddress='" + MSAddress + '\'' + ", MSDescription='" + MSDescription + '\'' + ", MSStuffs=" + MSStuffs + ", MSTeachers=" + MSTeachers + ", MSCapacity=" + MSCapacity + ", MSCapacityYears=" + MSCapacityYears + ", MSPointX=" + MSPointX + ", MSPointY=" + MSPointY + '}';
    }
}
