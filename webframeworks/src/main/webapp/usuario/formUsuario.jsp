<jsp:include page="/template/header.jsp"/>

	<div class="container">
	  <h2>Cadastro Usuario</h2>
	  <form method="post"  action="/usuario/adiciona" >
	 	<div class="form-group">
	      <label for="nome">Nome:</label>
	      <input type="text" class="form-control" id="nome" placeholder="Enter name" name="nome">
	    </div>
	  
	    <div class="form-group">
	      <label for="email">Email:</label>
	      <input type="email" class="form-control" id="email" placeholder="Enter email" name="email">
	    </div>
	    
	    <div class="form-group">
	      <label for="senha">Senha:</label>
	      <input type="password" class="form-control" id="senha" placeholder="Enter password" name="senha">
	    </div>
	    
	    <button type="submit" class="btn btn-default">Submit</button>
	  </form>
	</div>

<jsp:include page="/template/footer.jsp"/>
