<jsp:include page="/template/header.jsp"/>

	<div class="container">
	  <h2>Cadastro usuario</h2>
	  <form method="post"  action="/usuario/adiciona" >
	 	<div class="form-group">
	      <label for="nome">Nome:</label>
	      <input type="text" class="form-control" id="nome" placeholder="Enter name" value="${usuario.nome}" name="nome">
	    </div>
	  
	    <div class="form-group">
	      <label for="email">Email:</label>
	      <input type="email" class="form-control" id="email" placeholder="Enter email" value="${usuario.email}"  name="email">
	    </div>
	    
	    <div class="form-group">
	      <label for="senha">senha:</label>
	      <input type="number" class="form-control" id="senha" placeholder="Enter password" value="${usuario.senha}"  name="senha">
	      <input type="hidden" class="form-control" id="id"  value="${usuario.id}"  name="id">
	    </div>
	    
	    <button type="submit" class="btn btn-default">Submit</button>
	  </form>
	</div>

<jsp:include page="/template/footer.jsp"/>
