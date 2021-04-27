package model;

public class Member implements Model {
	private String username;
	private String password;
	private String name;
	private String email;
	private String phoneNumber;
	private String job;
	private String gender;
	private int getEmail;
	private int getPhone;
	private String explanation;
	
	public Member(String username, String password, String name, String email, String phoneNumber, String job,
			String gender, int getEmail, int getPhone, String explanation) {
		this.username = username;
		this.password = password;
		this.name = name;
		this.email = email;
		this.phoneNumber = phoneNumber;
		this.job = job;
		this.gender = gender;
		this.getEmail = getEmail;
		this.getPhone = getPhone;
		this.explanation = explanation;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public String getJob() {
		return job;
	}

	public void setJob(String job) {
		this.job = job;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String sex) {
		this.gender = sex;
	}

	public int isGetEmail() {
		return getEmail;
	}

	public void setGetEmail(int getEmail) {
		this.getEmail = getEmail;
	}

	public int isGetPhone() {
		return getPhone;
	}

	public void setGetPhone(int getPhone) {
		this.getPhone = getPhone;
	}

	public String getExplanation() {
		return explanation;
	}

	public void setExplanation(String explanation) {
		this.explanation = explanation;
	}
}
