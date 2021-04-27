package model;

public class Game implements Model {
	private String title;
	private String genre;
	private int degree;
	private String company;
	private String imageLink;
	
	public Game(String title, String genre, int degree, String company, String imageLink) {
		this.title = title;
		this.genre = genre;
		this.degree = degree;
		this.company = company;
		this.imageLink = imageLink;
	}

	public String getGenre() {
		return genre;
	}

	public void setGenre(String genre) {
		this.genre = genre;
	}

	public int getDegree() {
		return degree;
	}

	public void setDegree(int degree) {
		this.degree = degree;
	}

	public String getCompany() {
		return company;
	}

	public void setCompany(String company) {
		this.company = company;
	}

	public String getImageLink() {
		return imageLink;
	}

	public void setImageLink(String imageLink) {
		this.imageLink = imageLink;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}
}
