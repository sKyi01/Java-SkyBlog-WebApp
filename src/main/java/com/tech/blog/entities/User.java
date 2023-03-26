package com.tech.blog.entities;

import java.sql.*;

public class User {

	private String password;
	private String about;
	private String name;
	private String email;
	private String gender;
	private Timestamp date;
	private String profile;
	private int id;
	

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getProfile() {
		return profile;
	}

	public void setProfile(String profile) {
		this.profile = profile;
	}

	public User(String name, String email, String password, String gender, String about) {

		this.name = name;
		this.email = email;
		this.password = password;
		this.gender = gender;
		// this.date=date;
		this.about = about;
	}

	/*
	 * public User(String name,String email,String password,String gender,String
	 * about) {
	 * 
	 * this.name=name; this.email=email; this.password=password; this.gender=gender;
	 * //this.date=date; this.about=about; }
	 */
	public User() {
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getName() {
		return name;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getEmail() {
		return email;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getPassword() {
		return password;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getGender() {
		return gender;
	}

	
	 public void setDate(Timestamp date)
	 { this.date=date;
	 }
	 
	 
	 public Timestamp
	  getDate() {
		 return date; 
		 }
	 
	public void setAbout(String about) {
		this.about = about;
	}

	public String getAbout() {
		return about;
	}

}
