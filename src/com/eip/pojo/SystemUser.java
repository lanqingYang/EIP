package com.eip.pojo;

public class SystemUser {
    private Integer SUId;
    private String SUName;
    private String SUPwd;
    private String SUMail;
    private String SUTel;
    private String SUQuestion;
    private String SUAnswer;
    private String SUChar;
    private String SUImage;
    private Integer SUQualify;
    private Integer SUVerify;

    public SystemUser() {
    }

    public SystemUser(Integer SUId, String SUName, String SUPwd, String SUMail, String SUTel, String SUQuestion, String SUAnswer, String SUChar, String SUImage, Integer SUQualify, Integer SUVerify) {
        this.SUId = SUId;
        this.SUName = SUName;
        this.SUPwd = SUPwd;
        this.SUMail = SUMail;
        this.SUTel = SUTel;
        this.SUQuestion = SUQuestion;
        this.SUAnswer = SUAnswer;
        this.SUChar = SUChar;
        this.SUImage = SUImage;
        this.SUQualify = SUQualify;
        this.SUVerify = SUVerify;
    }

    public Integer getSUId() {
        return SUId;
    }

    public void setSUId(Integer SUId) {
        this.SUId = SUId;
    }

    public String getSUName() {
        return SUName;
    }

    public void setSUName(String SUName) {
        this.SUName = SUName;
    }

    public String getSUPwd() {
        return SUPwd;
    }

    public void setSUPwd(String SUPwd) {
        this.SUPwd = SUPwd;
    }

    public String getSUMail() {
        return SUMail;
    }

    public void setSUMail(String SUMail) {
        this.SUMail = SUMail;
    }

    public String getSUTel() {
        return SUTel;
    }

    public void setSUTel(String SUTel) {
        this.SUTel = SUTel;
    }

    public String getSUQuestion() {
        return SUQuestion;
    }

    public void setSUQuestion(String SUQuestion) {
        this.SUQuestion = SUQuestion;
    }

    public String getSUAnswer() {
        return SUAnswer;
    }

    public void setSUAnswer(String SUAnswer) {
        this.SUAnswer = SUAnswer;
    }

    public String getSUChar() {
        return SUChar;
    }

    public void setSUChar(String SUChar) {
        this.SUChar = SUChar;
    }

    public String getSUImage() {
        return SUImage;
    }

    public void setSUImage(String SUImage) {
        this.SUImage = SUImage;
    }

    public Integer getSUQualify() {
        return SUQualify;
    }

    public void setSUQualify(Integer SUQualify) {
        this.SUQualify = SUQualify;
    }


    public Integer getSUVerify() {
        return SUVerify;
    }

    public void setSUVerify(Integer SUVerify) {
        this.SUVerify = SUVerify;
    }

    @Override
    public String toString() {
        return "SystemUser{" + "SUId=" + SUId + ", SUName='" + SUName + '\'' + ", SUPwd='" + SUPwd + '\'' + ", SUMail='" + SUMail + '\'' + ", SUTel='" + SUTel + '\'' + ", SUQuestion='" + SUQuestion + '\'' + ", SUAnswer='" + SUAnswer + '\'' + ", SUChar='" + SUChar + '\'' + ", SUImage='" + SUImage + '\'' + ", SUQualify=" + SUQualify + ", SUVerify=" + SUVerify + '}';
    }
}
