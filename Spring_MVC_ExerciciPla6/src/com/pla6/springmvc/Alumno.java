package com.pla6.springmvc;

import javax.validation.constraints.Email;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import com.sun.istack.internal.NotNull;

public class Alumno {

	public String getAsignaturas2() {
		return asignaturas2;
	}

	public void setAsignaturas2(String asignaturas2) {
		this.asignaturas2 = asignaturas2;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getNif() {
		return nif;
	}

	public void setNif(String nif) {
		this.nif = nif;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getBecado() {
		return becado;
	}

	public void setBecado(String becado) {
		this.becado = becado;
	}

	public String getAsignaturas() {
		return asignaturas;
	}

	public void setAsignaturas(String asignaturas) {
		this.asignaturas = asignaturas;
	}

	@NotNull
	@Size(min=3, message="*ATENCIÓN campo requerido*")
	private String nombre;
	
	@Pattern(regexp="[0-9]{8}[A-Z]{1}",message="NIF incorrecto")
	private String nif;
	
	@Email()
	private String email;
	
	private String becado;
	
	private String asignaturas;
	
	private String asignaturas2; //opción con checkbox
	
	
}
