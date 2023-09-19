<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.List"%>
<%@ page import="br.edu.exemplo.model.Aluno"%>

<!DOCTYPE html>
<html>

<head>
<title>Lista Alunos</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js" integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+" crossorigin="anonymous"></script>

</head>
<body class="text-bg-dark p-3">
<jsp:useBean id="aluno" scope="session" class="br.edu.exemplo.model.Aluno" />
<!-- Barra de controle -->
<ul class="nav nav-tabs nav justify-content">

  <li class="nav-item">
    <a class="nav-link active" aria-current="page" href="index.html">Home</a>
  </li>
 
  <li class="nav-item">
    <a class="nav-link active" href="html/incluir.html">Incluir Aluno</a>
  </li>
  <li class="nav-item">
    <a class="nav-link active" aria-current="page" href="html/consultar.html">Consultar Aluno</a>
  </li>
</ul>
<!-- Tabela onde contém as informações -->
	<table class="table table-sm">
		<tr>
			<th colspan="8">
				<h5><center>Lista de Alunos</center></h5>
			</th>
		</tr>
		
		<tr>
			<th>RA</th>
			<th>Nome</th>
			<th>Endereço</th>
			<th>E-mail</th>
			<th>Nascimento</th>
			<th>Periodo</th>
			<th colspan="2">Status</th>
		</tr>
		
		<%SimpleDateFormat data = new SimpleDateFormat("dd/MM/yyyy");
		List<Aluno> lista = new ArrayList<Aluno>();
		lista = (ArrayList) request.getAttribute("alunosList");
		for (Aluno a : lista) {
		%>
		<tr>
			<td><%=a.getRa()%></td>
			<td><%=a.getNome()%></td>
			<td><%=a.getEndereco()%></td>
			<td><%=a.getEmail()%></td>
			<td><%=data.format(a.getDataNascimento())%></td>
			<td><%=a.getPeriodo()%></td>
			
			<td>
			<form action="ServletAluno?cmd=atu&txtRa=<%=a.getRa()%>" method="post">
			<input type="hidden" size="10" value="Enviar">
             <button type="submit" class="btn btn-outline-secondary">
			<img src="images/editar.png" width = "25px" height = "25px">
			</button>
			</form>
			</td>
			
			<td>
			<form action="ServletAluno?cmd=excluir&txtRa=<%=a.getRa()%>" method="post">
			<input type="hidden" size="10" value="Enviar">
             <button type="submit" class="btn btn-outline-secondary">
			<img src="images/excluir.png" width = "25px" height = "25px" > 
			</button>
			</form>
			</td>
		</tr>
		<% } %>
		
	</table>
</body>

</html>

