package com.desi.bank.customer.web.controller.form;

import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement
public class ProfileForm {
	
	private String email;
	private String userid;
	
	
	
    public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	private byte[] image;

	public byte[] getImage() {
		return image;
	}

	public void setImage(byte[] image) {
		this.image = image;
	}
    
    

}
