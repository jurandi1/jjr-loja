<%@ Page Language="C#" AutoEventWireup="true" CodeFile="jjr_loja.aspx.cs" Inherits="jjr_loja" %>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Loja JJr</title>
    <link rel="icon" href="img/site/logo.jpg" type="image/jpg">

    <%--ESTILO DA PÁGINA--%>
    <link rel="stylesheet" type="text/css" href="css/style.css">

    <%--ESTILO DOS BOTÕES--%>
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css" />
</head>
<body>
    <header class="cabecalho">
        <img src="img/site/logo.jpg" alt="Logo" class="logo"><h1>Bem-vindo à Loja JJr</h1>
        <nav class="cabecalho__menu">
            <a class="cabecalho__menu__link" href="jjr_loja.aspx">Principal</a>
        </nav>
    </header>

    <div class="container">
        <div id="produtos" class="row">
            <div class="col-md-4 col-sm-6 col-xs-12">
                <div class="card">
                    <img src="img/produtos/camisetas_man.jpg" class="card-img-top" alt="Camisetas Masculinas">
                    <div class="card-body">
                        <h5 class="card-title">Camisetas Masculinas</h5>
                        <p class="card-text">Kit de 5 Camisetas</p>
                        <p class="card-text">R$ 100,00 Preço</p>
                        <a href="#" class="btn btn-primary">Adicionar ao Carrinho</a>
                    </div>
                </div>

                <div class="card">
                    <img src="img/produtos/cuecas.jpg" class="card-img-top" alt="Cuecas">
                    <div class="card-body">
                        <h5 class="card-title">Cuecas</h5>
                        <p class="card-text">Kit de 9 Cuecas</p>
                        <p class="card-text">R$ 85,00 Preço</p>
                        <a href="#" class="btn btn-primary">Adicionar ao Carrinho</a>
                    </div>
                </div>

                <div class="card">
                    <img src="img/produtos/camisetas_fem.jpg" class="card-img-top" alt="Camisetas Femininas">
                    <div class="card-body">
                        <h5 class="card-title">Camisetas Femininas</h5>
                        <p class="card-text">Kit de 3 Camisetas</p>
                        <p class="card-text">R$ 60,00 Preço</p>
                        <a href="#" class="btn btn-primary">Adicionar ao Carrinho</a>
                    </div>
                </div>

                <div class="card">
                    <img src="img/produtos/calcinhas.jpg" class="card-img-top" alt="Calcinhas">
                    <div class="card-body">
                        <h5 class="card-title">Calcinhas</h5>
                        <p class="card-text">Kit de 6 Calcinhas</p>
                        <p class="card-text">R$ 70,00 Preço</p>
                        <a href="#" class="btn btn-primary">Adicionar ao Carrinho</a>
                    </div>
                </div>

                <div class="card">
                    <img src="img/produtos/meias.jpg" class="card-img-top" alt="Meias">
                    <div class="card-body">
                        <h5 class="card-title">Meias</h5>
                        <p class="card-text">Kit de 3 Meias</p>
                        <p class="card-text">R$ 35,00 Preço</p>
                        <a href="#" class="btn btn-primary">Adicionar ao Carrinho</a>
                    </div>
                </div>

            </div>
        </div>
    </div>
    <section class="apresentacao__conteudo">
        <div class="apresentacao__links">
            <h2 class="apresentacao__links__subtitulo">Acesse minhas redes:</h2>
            <a class="apresentacao__links__navegacao" href="https://www.linkedin.com/in/jjunior20/" target="_blank" rel="noopener noreferrer">
                <img src="img/social/LinkedIn.PNG" alt="LinkedIn Jurandi" class="social-icon">
                LinkedIn
            </a>
            <a class="apresentacao__links__navegacao" href="https://github.com/jurandi1" target="_blank" rel="noopener noreferrer">
                <img src="img/social/GitHub.png" alt="GitHub Jurandi" class="social-icon">
                GitHub</a>
            <a class="apresentacao__links__navegacao" href="https://www.instagram.com/_jurandi_jr/" target="_blank" rel="noopener noreferrer">
                <img src="img/social/instagram.png" alt="Instagram Jurandi" class="social-icon">
                Instagram</a>
        </div>
    </section>
    <br />
    <footer class="rodape">
        <p>Desenvolvido por Jurandi Junior.</p>
    </footer>
</body>
</html>
