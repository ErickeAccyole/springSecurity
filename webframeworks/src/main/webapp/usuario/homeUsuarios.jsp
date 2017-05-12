<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>

<head>
	<meta charset="UTF-8" />
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="viewport" content="width=device-width" />
	<title>Posts</title>
	<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet"></link>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="panel panel-default">
		<div class="panel-heading">
			<strong>Posts</strong>
		</div>
		<div class="panel-body">
			<div class="table-responsive">
				<table class="table table-sm table-striped table-hover table-bordered">
					<thead>
						<tr>
							<th>Id</th>
							<th>Nome</th>
							<th>Email</th>		
							<th>Ações</th>			
						</tr>
						</thead>
					<tbody>
						<c:forEach items="${usuarios}" var="usuario">
							<tr >
								<td>${usuario.id}</td>
								<td>${usuario.nome}</td>
								<td>${usuario.email}</td>
								<td>	
									<a class="btn btn-sm btn-success" href="/usuario/viewUsuario?id=${usuario.id}" >Atualizar</a>
									<a class="btn btn-sm btn-success" href="/usuario/delete?id=${usuario.id}" >Remover</a>
								</td>						
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
		<div class="panel-footer">
			
		</div>
	</div>
</body>
</html>