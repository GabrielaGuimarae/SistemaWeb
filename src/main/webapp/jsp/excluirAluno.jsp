<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="UTF-8"%>
<%@page import="java.text.SimpleDateFormat"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sistema Acadêmico</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js" integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+" crossorigin="anonymous"></script>

</head>
<body class="text-bg-dark p-3">
	<h2>Excluir Aluno</h2>
	<jsp:useBean id="aluno" scope="session" class="br.edu.exemplo.model.Aluno" />
	<% 	SimpleDateFormat data = new SimpleDateFormat("dd/MM/yyyy");	%>
	<form action="ServletAluno?cmd=excluir" method="post">
		  <table class="table table-sm">
		  <tr>
			<th colspan="8">
				<h5><center>Atualizar Aluno</center></h5>
			</th>
		</tr>
			<tr>
				<td>RA:</td>
				<td><input type="text" maxlength="60" size="60" name="txtRa"
					value="<%=aluno.getRa()%>" readonly="readonly" /></td>
			</tr>
			<tr>
				<td>Nome:</td>
				<td><input type="text" maxlength="60" size="60" name="txtNome"
					value="<%=aluno.getNome()%>" /></td>
			</tr>
			<tr>
				<td>E-mail:</td>
				<td><input type="text" maxlength="60" size="60" name="txtEmail"
					value="<%=aluno.getEmail()%>" /></td>
			</tr>
			<tr>
				<td>Endereço:</td>
				<td><input type="text" maxlength="60" size="60"
					name="txtEndereco" value="<%=aluno.getEndereco()%>" /></td>
			</tr>
			<tr>
				<td>Nascimento (dd/mm/aaaa):</td>
				<td><input type="text" size="60" name="txtData"
					value="<%=data.format(aluno.getDataNascimento())%>" /></td>
			</tr>

			<tr>
				<td>Período:</td>
				<td><input type="text" maxlength="60" size="60" name="txtIdade"
					value="<%=aluno.getPeriodo()%>" readonly="readonly" /></td>
			</tr>
			<tr>
				<th colspan="2"><input type="submit" value="Confirmar Exclusão" /></th>
			</tr>
			<tr>
				<th colspan="2"><a href="index.html">Página Principal</a></th>
			</tr>
		</table>
	</form>
</body>
</html>
