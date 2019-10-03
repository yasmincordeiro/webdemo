<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!doctype html>
<html lang="en">
<head>
	<c:import url="/WEB-INF/templates/common/_metatags.jsp" />
	<c:import url="/WEB-INF/templates/common/_bootstrap_css.jsp" />
	<title>Usuário</title>
</head>
<body class="container">
	<h1>Usuáris</h1> 
	
	<c:if test="${param.success}">
		<div class="alert alert-success" role="alert">
		  Usuário criado com sucesso!
		</div>
	</c:if>

	<table class="table">
		<thead>
			<tr>
				<th scope="col">#</th>
				<th scope="col">Nome</th>
				<th scope="col">Sobrenome</th>
				<th scope="col">Idade</th>
				<th scope="col">Sexo</th>
				<th scope="col">Telefone</th>
				<th scope="col">E-mail</th>
				<th scope="col"></th>
			</tr>
		</thead>
		<tbody>
			
				<tr>
					<th scope="row">${usuario.id}</th>
					<td>${usuario.nome}</td>
					<td>${usuario.sobrenome}</td>
					<td>${usuario.idade}</td>
					<td>${usuario.sexo}</td>
					<td>${usuario.telefone}</td>
					<td>${usuario.email}</td>
					<td>
						<a href="/usuarios/edit/${usuario.id}">Editar Usuário</a>
						<a href="/usuarios/show/${usuario.id}">Mostrar Usuário</a>
					</td>
				</tr>
			
		</tbody>
	</table>
	
	<a href="/usuarios/create" class="btn btn-primary">Criar</a>
	
	<c:import url="/WEB-INF/templates/common/_bootstrap_js.jsp" />
	
</body>
</html>