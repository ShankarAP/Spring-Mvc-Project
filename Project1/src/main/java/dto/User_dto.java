package dto;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class User_dto 
{
private String name;
@Id
private int number;
private String email;
private String location;
private String dob;
private String id;
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public int getNumber() {
	return number;
}
public void setNumber(int number) {
	this.number = number;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getLocation() {
	return location;
}
public void setLocation(String location) {
	this.location = location;
}
public String getDob() {
	return dob;
}
public void setDob(String dob) {
	this.dob = dob;
}
public String getId() {
	return id;
}
public void setId(String id) {
	this.id = id;
}
@Override
public String toString() {
	return "User_dto [name=" + name + ", number=" + number + ", email=" + email + ", location=" + location + ", dob="
			+ dob + ", id=" + id + "]";
}
}