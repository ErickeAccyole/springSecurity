<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<jsp:include page="/template/header.jsp"/>
     <br>
     <br>
     <br>  
     <div id="top" class="row">
 		<div class="col-md-3">
        <h2>Contatos</h2>
	    </div>
	 
	    <div class="col-md-6">
	       <!--   <div class="input-group h2">
	            <input name="data[search]" class="form-control" id="search" type="text" placeholder="Pesquisar Contatos">
	            <span class="input-group-btn">
	                <button class="btn btn-primary" type="submit">
	                    <span class="glyphicon glyphicon-search"></span>
	                </button>
	            </span>
	        </div>-->
	    </div>
	 
	    <div class="col-md-3">
	        <a href="/contato/cadastro" class="btn btn-primary pull-right h2">Novo Contato</a>
	    </div>
     </div> <!-- /#top -->
 
     <hr />

	<div class="panel panel-default">
		<div class="panel-heading">
			<strong>Contatos</strong>
		</div>
		<div class="panel-body">
			<div class="table-responsive">
				<table class="table table-sm table-striped table-hover table-bordered">
					<thead>
						<tr>
							<th>Id</th>
							<th>Nome</th>
							<th>Sobrenome</th>
							<th>Email</th>		
							<th>Ações</th>			
						</tr>
						</thead>
					<tbody>
						<c:forEach items="${contatos}" var="contato">
							<tr >
								<td>${contato.id}</td>
								<td>${contato.nome}</td>
								<td>${contato.sobreNome}</td>											
								<td>${contato.email}</td>
								<td>	
									<a class="btn btn-sm btn-success" href="/contato/viewContato?id=${contato.id}" >Atualizar</a>
									<a class="btn btn-sm btn-danger" href="/contato/delete?id=${contato.id}" >Remover</a>
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