package com.eip.pojo;

public class SystemManager {
    private Integer SMId;
    private String SMName;
    private String SMPwd;

    public Integer getSMId() {
        return SMId;
    }

    public void setSMId(Integer SMId) {
        this.SMId = SMId;
    }

    public String getSMName() {
        return SMName;
    }

    public void setSMName(String SMName) {
        this.SMName = SMName;
    }

    public String getSMPwd() {
        return SMPwd;
    }

    public void setSMPwd(String SMPwd) {
        this.SMPwd = SMPwd;
    }

    @Override
    public String toString() {
        return "SystemManager{" + "SMId=" + SMId + ", SMName='" + SMName + '\'' + ", SMPwd='" + SMPwd + '\'' + '}';
    }
}
