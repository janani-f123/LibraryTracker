package com.library.model;

public class Book {
    private int id;
    private int userId;
    private String title;
    private String author;
    private String tag;
    private String imagePath;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public String getTag() {
		return tag;
	}
	public void setTag(String tag) {
		this.tag = tag;
	}
	public String getImagePath() {
	    return imagePath;
	}

	public void setImagePath(String imagePath) {
	    this.imagePath = imagePath;
	}

    
}