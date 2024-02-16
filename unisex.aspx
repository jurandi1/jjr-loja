<%@ Page Language="C#" AutoEventWireup="true" CodeFile="unisex.aspx.cs" Inherits="unisex" %>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Loja JJr - Unisex</title>
    <link rel="icon" href="img/site/logo.jpg" type="image/jpg">

    <%--ESTILO DA PÁGINA--%>
    <link rel="stylesheet" type="text/css" href="css/style.css">

    <%--ESTILO DOS BOTÕES--%>
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css" />
</head>
<body>
    <div class="cabecalho">
        <img src="img/site/logo.jpg" alt="Logo" class="logo"><h2 class="h2">Bem-vindo à Loja JJr</h2>
    </div>
    <header class="cabecalho">

        <nav class="cabecalho__menu">
            <a class="cabecalho__menu__link" href="jjr_loja.aspx">Principal</a>
            <a class="cabecalho__menu__link" href="prod_masc.aspx">Homem</a>
            <a class="cabecalho__menu__link" href="prod_fem.aspx">Mulher</a>
            <a class="cabecalho__menu__link" href="unisex.aspx">Unisex</a>
        </nav>
    </header>

    <div style="width: 90%; margin: 0 auto;">
        <hr>
    </div>

    <div class="container">
        <div id="produtos" class="row">
            <div class="col-md-6 col-sm-6 col-xs-12">
                <div class="card">
                    <img src="img/produtos/meias.jpg" class="card-img-top" alt="Meias">
                    <div class="card-body">
                        <h5 class="card-title">Meias</h5>
                        <p class="card-text">Kit de 3 Meias</p>
                        <p class="card-text">R$ 35,00 Preço</p>
                        <a href="Encomendar.aspx" class="btn btn-primary">Encomendar</a>
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
