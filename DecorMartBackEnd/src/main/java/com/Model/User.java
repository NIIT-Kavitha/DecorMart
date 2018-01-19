package com.Model;

import java.io.Serializable;

public class User implements Serializable {
	
	
	private static final long serialVersionUID = 1L;
	private String email;
	private String name;
	private String phoneno;
	private String address;
	public String password;
	public String Country;
	
	public User(String email, String name, String phoneno, String address, String password,String Country) {
		this.email=email;
		this.name=name;
		this.phoneno=phoneno;
		this.address=address;
		this.password=password;
		this.Country=Country;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPhoneno() {
		return phoneno;
	}
	public void setPhoneno(String phoneno) {
		this.phoneno = phoneno;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getCountry() {
		return Country;
	}
	public void setCountry(String country) {
		Country = country;
	}

}
