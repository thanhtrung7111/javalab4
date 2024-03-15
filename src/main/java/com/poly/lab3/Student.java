package com.poly.lab3;

public class Student {
	private int id;
	private String fullName;
	private String[] hobbies;
	private String major;
	private String photo;
	
	public Student() {
		super();
	}
	public Student(int id, String fullName, String[] hobbies, String major, String photo) {
		super();
		this.id = id;
		this.fullName = fullName;
		this.hobbies = hobbies;
		this.major = major;
		this.photo = photo;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getFullName() {
		return fullName;
	}
	public void setFullName(String fullName) {
		this.fullName = fullName;
	}
	public String[] getHobbies() {
		return hobbies;
	}
	public void setHobbies(String[] hobbies) {
		this.hobbies = hobbies;
	}
	public String getMajor() {
		return major;
	}
	public void setMajor(String major) {
		this.major = major;
	}
	public String getPhoto() {
		return photo;
	}
	public void setPhoto(String photo) {
		this.photo = photo;
	}
	
	
}
