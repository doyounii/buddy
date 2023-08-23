package com.buddy.dto;

public class CommuComment {
    private int cno;
    private int comuno;
    private String author;
    private String resdate;
    private String content;

    public int getCno() {
        return cno;
    }

    public void setCno(int cno) {
        this.cno = cno;
    }

    public int getComuno() {
        return comuno;
    }

    public void setComuno(int comuno) {
        this.comuno = comuno;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getResdate() {
        return resdate;
    }

    public void setResdate(String resdate) {
        this.resdate = resdate;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }
}
