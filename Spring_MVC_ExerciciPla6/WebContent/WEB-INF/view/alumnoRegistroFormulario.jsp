<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Formulario de Alta</title>
</head>
<body>

	<form:form action="formResults" modelAttribute="miAlumno">
<h2>
Formulario de Alta de Alumn@: <br/>
</h2>
	Nombre: <form:input path="nombre"/> <form:errors path="nombre" style="color:red"/>
	
	<br><br><br>
	
	NIF: <form:input path="nif"/> <form:errors path="nif" style="color:red"/>
	
	<br><br><br>
	
	e-mail: <form:input path="email"/> <form:errors path="email" style="color:red"/>
	
	<br/><br/><br/>
	¿Dispone de alguna beca?: 
		Sí <form:radiobutton path="becado" value="Sí"/>
		No <form:radiobutton path="becado" value="No"/>
		
	<br/><br/>
	
	Asignaturas: <br/>
	
	<form:select path="asignaturas" multiple="true">
	
	   <form:option value="PHP" label="PHP"/>
	   <form:option value="JAVA" label="JAVA"/>
	   <form:option value="JS" label="JS"/>
	   <form:option value=".NET" label=".NET"/>	
	
	</form:select>
	
	<br/><br/>
	Asignaturas (segunda opción): <br/>
	
		PHP <form:checkbox path="asignaturas2" value="PHP"/>
		JAVA <form:checkbox path="asignaturas2" value="JAVA"/>
		JS <form:checkbox path="asignaturas2" value="JS"/>
		.NET <form:checkbox path="asignaturas2" value=".NET"/>
	
	<br/><br/>
	
	<input type="submit" value="Enviar">
	
	</form:form>

</body>
</html>