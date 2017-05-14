<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<jsp:include page="/template/header.jsp"/>
	 <br>
     <br>
     <br>  
     <div id="top" class="row">
 		<div class="col-md-3">
        	<h2>Usuários</h2>
	 	</div>
	 
	     <div class="col-md-6">
	   <!--     <div class="input-group h2">
	            <input name="data[search]" class="form-control" id="search" type="text" placeholder="Pesquisar Usuários">
	            <span class="input-group-btn">
	                <button class="btn btn-primary" type="submit">
	                    <span class="glyphicon glyphicon-search"></span>
	                </button>
	            </span>
	        </div>--> 
	    </div>
	 
	    <div class="col-md-3">
	        <a href="/usuario/cadastro" class="btn btn-primary pull-right h2">Novo Usuário</a>
	    </div>
     </div> <!-- /#top -->
 
     <hr />

	<div class="panel panel-default">
		<div class="panel-heading">
			<strong>Usuários</strong>
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
									<a class="btn btn-sm btn-danger" href="/usuario/delete?id=${usuario.id}" >Remover</a>
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
	
<!--  	<div id="bottom" class="row">
    	<div class="col-md-12">
	         
	        <ul class="pagination">
	            <li class="disabled"><a>&lt; Anterior</a></li>
	            <li class="disabled"><a>1</a></li>
	            <li><a href="#">2</a></li>
	            <li><a href="#">3</a></li>
	            <li class="next"><a href="#" rel="next">Próximo &gt;</a></li>
	        </ul>
 
    	</div>
	</div> --> 
<jsp:include page="/template/footer.jsp"/>