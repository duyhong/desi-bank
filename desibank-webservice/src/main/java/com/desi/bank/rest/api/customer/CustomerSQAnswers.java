package com.desi.bank.rest.api.customer;

import java.util.Hashtable;

public class CustomerSQAnswers {
	private String userId;
	private Hashtable<Integer, String> answers;
	
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public Hashtable<Integer, String> getAnswers() {
		return answers;
	}
	public void setAnswers(Hashtable<Integer, String> answers) {
		this.answers = answers;
	}

	
}
