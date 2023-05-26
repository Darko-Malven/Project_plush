package com.codingdojo.leonel.models;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name="organizations")
public class Organization {
	@Id
	@GeneratedValue(strategy= GenerationType.IDENTITY)
	private Long id;
	@NotEmpty(message="Organization name is obligatory.")
	@Size(min=2, message="Organization name must be at least 2 characters")
	private String orgaName;
	@NotEmpty(message="El acronimo es obligatorio")
	@Size(min=2, message="El acronimo debe tener al menos 2 caracteres.")
	private String acronym; 
	@NotEmpty(message="Email is obligatory.")
	@Email
	private String email;
	@NotEmpty(message="Password is obligatory")
	@Size(min=6,message="Password must be at least 6 characters")
	private String password;
	@Transient
	@NotEmpty(message="Password is obligatory")
	@Size(min=6,message="Password must be at least 6 characters")
	private String confirm;
	@Column(updatable=false)
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date createdAt;
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date updatedAt;
}
