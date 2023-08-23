package com.sunbeaminfo.DTO;

import com.sunbeaminfo.entities.User;

public class LoginResponceDTO {
    private String user;
    private String jwt;

    public LoginResponceDTO(){
        super();
    }

    public LoginResponceDTO(User user, String jwt){
        this.user = user.getEmail();
        this.jwt = jwt;
    }

    public String getUser(){
        return this.user;
    }

    public void setUser(String user){
        this.user = user;
    }

    public String getJwt(){
        return this.jwt;
    }

    public void setJwt(String jwt){
        this.jwt = jwt;
    }

}
