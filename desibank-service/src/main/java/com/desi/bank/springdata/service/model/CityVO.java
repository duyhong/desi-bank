package com.desi.bank.springdata.service.model;

public class CityVO {

	private int cid;
	private String ccode;
	private String name;

	public int getCid() {
		return cid;
	}

	public void setCid(int cid) {
		this.cid = cid;
	}

	public String getCcode() {
		return ccode;
	}

	public void setCcode(String ccode) {
		this.ccode = ccode;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Override
	public String toString() {
		return "CityVO [cid=" + cid + ", ccode=" + ccode + ", name=" + name + "]";
	}
}
