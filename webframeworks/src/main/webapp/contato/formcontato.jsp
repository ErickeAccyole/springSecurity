<jsp:include page="/template/header.jsp"/>

	<div class="container">
	  <h2>Cadastro Contato</h2>
	  <form method="post"  action="/contato/adiciona" >
	 	<div class="form-group">
	      <label for="nome">Nome:</label>
	      <input type="text" class="form-control" id="nome" placeholder="Enter name" name="nome">
	    </div>
	    
	    <div class="form-group">
	      <label for="sobrenome">Sobrenome:</label>
	      <input type="text" class="form-control" id="sobrenome" placeholder="Enter second name" name="sobreNome">
	    </div> 
	  
	    <div class="form-group">
	      <label for="email">Email:</label>
	      <input type="email" class="form-control" id="email" placeholder="Enter email" name="email">
	    </div>
	    
	    <div class="form-group">
	      <label for="telefone">Telefone:</label>
	      <input type="number" class="form-control" id="telefone" placeholder="Enter phone" name="telefone">
	    </div>
	    
	    <button type="submit" class="btn btn-default">Submit</button>
	  </form>
	</div>

<jsp:include page="/template/footer.jsp"/>
