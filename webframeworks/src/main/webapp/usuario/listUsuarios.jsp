<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<jsp:include page="/template/header.jsp"/>

	<div class="panel panel-default">
		<div class="panel-heading">
			<strong>Posts</strong>
		</div>
		<div class="panel-body">
			<div class="table-responsive">
				<table class="table table-sm table-striped table-hover table-bordered">
					<thead>
						<tr>
							<th>Nome</th>
							<th>Email</th>		
							<th>Senha</th>	
							<th>Ações</th>			
						</tr>
						</thead>
					<tbody>
						<c:forEach items="${usuarios}" var="usuario">
							<tr >
								<td>${usuario.nome}</td>
								<td>${usuario.email}</td>											
								<td>${usuario.senha}</td>
								<td>	
									<a class="btn btn-sm btn-success" href="/usuario/viewusUario?id=${usuario.id}" >Atualizar</a>
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
	
<jsp:include page="/template/footer.jsp"/>