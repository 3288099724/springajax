package com.bs.entity;

public class Conn {
    private String id;
    private String u_id;
    private String c_id;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getU_id() {
        return u_id;
    }

    public void setU_id(String u_id) {
        this.u_id = u_id;
    }

    public String getC_id() {
        return c_id;
    }

    public void setC_id(String c_id) {
        this.c_id = c_id;
    }

    public Conn() {
    }

    public Conn(String id, String u_id, String c_id) {
        this.id = id;
        this.u_id = u_id;
        this.c_id = c_id;
    }
}
