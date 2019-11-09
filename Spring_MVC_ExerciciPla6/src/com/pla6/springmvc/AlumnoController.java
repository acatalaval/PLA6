package com.pla6.springmvc;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/alumno")
public class AlumnoController {
	
	@RequestMapping("/form")
	public String form (Model modelo) {
			
		Alumno elAlumno=new Alumno();
		
		modelo.addAttribute("miAlumno", elAlumno);
		
		return "alumnoRegistroFormulario";		
	}
	
	@RequestMapping("/formResults")
	 public String formResults (@Valid @ModelAttribute("miAlumno") Alumno elAlumno,
			 BindingResult resultadoValidacion) {
		
		if(resultadoValidacion.hasErrors()) {
			return "alumnoRegistroFormulario";
		} else {
		
			return "registroAlumno";
		}
	}

}