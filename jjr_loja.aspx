<%@ Page Language="C#" AutoEventWireup="true" CodeFile="jjr_loja.aspx.cs" Inherits="jjr_loja" %>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Minha Loja</title>
</head>
<body>
    <div class="container">
        <h1>Bem-vindo à Minha Loja</h1>
        <div id="produtos" class="row">
            <div class="col-4">
                <div class="card">
                    <img src="caminho/para/imagem/do/produto.jpg" class="card-img-top" alt="Nome do Produto">
                    <div class="card-body">
                        <h5 class="card-title">Nome do Produto</h5>
                        <p class="card-text">Descrição do produto...</p>
                        <p class="card-text">R$ Preço</p>
                        <a href="#" class="btn btn-primary">Adicionar ao Carrinho</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
