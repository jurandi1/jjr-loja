<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Agradecimento.aspx.cs" Inherits="Agradecimento" %>

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
    <form runat="server" style="display: flex; flex-direction: column; align-items: center; justify-content: center; width: 100%; height: 100vh;">
        <div class="cabecalho">
            <img src="img/site/logo.jpg" alt="Logo" class="logo">
        </div>
        <div class="cabecalho">
            <h2 class="h2">Obrigado por comprar na Loja JJr</h2>
        </div>
        <div style="width: 90%; margin: 0 auto;">
            <hr>
        </div>

        <div class="container" style="width: 100%; text-align: center;">
            <h5>Obrigado pela sua compra!</h5>
            <p>Seu pedido foi efetuado com sucesso. Entraremos em contato via e-mail e WhatsApp.</p>
            <asp:LinkButton ID="btnNovaCompra" runat="server" class="btn btn-primary" OnClick="btnNovaCompra_Click" Style="width: 100%;">Fazer Nova Compra</asp:LinkButton>
            <asp:LinkButton ID="btnPagPrincipal" runat="server" class="btn btn-secondary" OnClick="btnPagPrincipal_Click" Style="width: 100%;">Voltar para a Página Principal</asp:LinkButton>
        </div>
    </form>
</body>


</html>
