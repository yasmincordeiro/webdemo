<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="minha" tagdir="/WEB-INF/tags" %>

<!doctype html>
<html lang="en">
<head>
	<c:import url="/WEB-INF/templates/common/_metatags.jsp" />
	<c:import url="/WEB-INF/templates/common/_bootstrap_css.jsp" />	
	<title>Editar Usuário</title>
</head>
<body class="container">
	<h1>Editar Usuário</h1>
	
	<form method="post" action="/usuarios/edit/${Usuario.id}">
		<div class="form-group">
		<minha:validatedinputtext rotulo="Nome" valor="${Usuario.nome}"
			erroValidacao="${NomeInvalido}" invalido="${empty NomeInvalido}"
			textoPlaceholder="Seu Nome" 
			idCampo="nome-input" nomeCampo="nome" /> 
		</div>
		<div class="form-group">
			<minha:validatedinputtext rotulo="Sobrenome" valor="${Usuario.sobrenome}"
				erroValidacao="${SobrenomeInvalido}" invalido="${empty SobrenomeInvalido}"
				textoPlaceholder="Seu Sobrenome"
				idCampo="sobrenome-input" nomeCampo="sobrenome" />	
		</div>
		
		<div class="form-group">
			<minha:validatedinputtext rotulo="Idade" valor="${param.idade}"
				erroValidacao="${IdadeInvalido}" invalido="${empty IdadeInvalido}"
				textoPlaceholder="Idade"
				idCampo="idade-input" nomeCampo="idade" />	
		</div>
		<div class="form-group">
			<minha:validatedinputtext rotulo="Sexo" valor="${param.sexo}"
				erroValidacao="${sexoInvalido}" invalido="${empty sexoInvalido}"
				textoPlaceholder="Sexo"
				idCampo="sexo-input" nomeCampo="sexo" />	
		</div>
		<div class="form-group">
			<minha:validatedinputtext rotulo="Telefone" valor="${param.telefone}"
				erroValidacao="${telefoneInvalido}" invalido="${empty telefoneInvalido}"
				textoPlaceholder="Telefone"
				idCampo="telefone-input" nomeCampo="telefone" />	
		</div>
		<div class="form-group">
			<minha:validatedinputtext rotulo="E-mail" valor="${param.email}"
				erroValidacao="${emailInvalido}" invalido="${empty emailInvalido}"
				textoPlaceholder="E-mail"
				idCampo="email-input" nomeCampo="email" />	
		</div>
		
		<a href="/usuarios" class="btn btn-danger">Cancelar</a>
		<button type="submit" class="btn btn-primary">Salvar</button>
	</form>

	<c:import url="/WEB-INF/templates/common/_bootstrap_js.jsp" />
</body>
</html>