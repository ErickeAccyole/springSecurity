<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
  <h2>Cadastro Contato</h2>
  <form method="post"  action="/contato/adiciona" >
 	<div class="form-group">
      <label for="nome">Nome:</label>
      <input type="text" class="form-control" id="nome" placeholder="Enter name" value="${contato.nome}" name="nome">
    </div>
    
    <div class="form-group">
      <label for="sobrenome">Sobrenome:</label>
      <input type="text" class="form-control" id="sobrenome" placeholder="Enter second name" value="${contato.sobreNome}" name="sobreNome">
    </div> 
  
    <div class="form-group">
      <label for="email">Email:</label>
      <input type="email" class="form-control" id="email" placeholder="Enter email" value="${contato.email}"  name="email">
    </div>
    
    <div class="form-group">
      <label for="telefone">Telefone:</label>
      <input type="number" class="form-control" id="telefone" placeholder="Enter phone" value="${contato.telefone}"  name="telefone">
      <input type="hidden" class="form-control" id="id" placeholder="Enter phone" value="${contato.id}"  name="id">
    </div>
    
    <button type="submit" class="btn btn-default">Submit</button>
  </form>
</div>

</body>
</html>
