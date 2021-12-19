<%@page import="model.Aluno"%>
<%@page import="model.Modelo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registro de Alunos(as)</title>
<link rel="stylesheet" href="bootstrap.css">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
	integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
	integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
	crossorigin="anonymous"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
	integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
	crossorigin="anonymous"></script>

</head>
<body>
	<%
	out.print(Modelo.menu());
	%>

	<form style="margin-top:50px;" action="#">
		<fieldset>
			<legend class="text-center">Registro de Alunos(as)</legend>
			<div class="row">

				<div class="form-group">
					<div class="col-md-6 offset-md-3">
						<label>Nome do(a) aluno(a)</label> 
						<input type="text" name="nome" class="form-control " placeholder="Digite o nome do(a) aluno(a)">
					</div>
					
					<div class="col-md-6 offset-md-3">
						<label>CPF do(a) aluno(a)</label> 
						<input type="text" name="cpf" class="form-control " placeholder="Digite o CPF do(a) aluno(a)">
					</div>
					
					<div class="col-md-6 offset-md-3">
						<label>Turma do(a) aluno(a)</label> 
						<input type="text" name="turma" class="form-control " placeholder="Digite a turma do(a) aluno(a)">
					</div>
				</div>

				<div class="col text-center">
					<button type="submit" style="margin-top:10px;" class="btn btn-default">Registrar Aluno</button>
				</div>
			</div>
		</fieldset>
	</form>
	
	<%
	if(request.getParameter("nome")!=null)
	{
		String a = request.getParameter("nome");
		String b = request.getParameter("cpf");
		String c = request.getParameter("turma");
		Modelo.a.add(new Aluno(a,b,c));
	}
	%>
</body>
</html>