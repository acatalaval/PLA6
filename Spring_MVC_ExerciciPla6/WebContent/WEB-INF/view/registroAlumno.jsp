<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registro del Alumno</title>
</head>
<body>
<h2>
Alumn@ registrad@ correctamente con los siguientes datos: <br/><br/>
</h2>
Nombre del alumn@: <strong> ${miAlumno.nombre}</strong> <br/><br/>
NIF: <strong> ${miAlumno.nif}</strong> <br/><br/>
Correo electrónico <strong> ${miAlumno.email}</strong><br/><br/>
Alumn@ Becad@: <strong> ${miAlumno.becado}</strong><br/><br/>
La/s asignatura/s escogida/s es/son: <strong>${miAlumno.asignaturas} </strong><br/><br/>


Asignaturas (Segunda opción):
<ul>
<c:forEach var="asignatura" items="${miAlumno.asignaturas2}">
<li>${asignatura}</li>
</c:forEach>
</ul>


</body>
</html>