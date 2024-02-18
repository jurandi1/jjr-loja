<%@ Page Language="C#" AutoEventWireup="true" CodeFile="relatorio.aspx.cs" Inherits="relatorio" %>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Loja JJr - Relatório</title>
    <link rel="icon" href="img/site/logo.jpg" type="image/jpg">

    <%--ESTILO DA PÁGINA--%>
    <link rel="stylesheet" type="text/css" href="css/style.css">

    <%--ESTILO DOS BOTÕES--%>
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css" />
</head>
<body>
    <div class="cabecalho">
        <img src="img/site/logo.jpg" alt="Logo" class="logo">
        <h2 class="h2">Relatório de Pedidos</h2>
    </div>

    <header class="cabecalho">
        <nav class="cabecalho__menu">
            <a class="cabecalho__menu__link" href="jjr_loja.aspx">Principal</a>
            <a class="cabecalho__menu__link" href="prod_masc.aspx">Homem</a>
            <a class="cabecalho__menu__link" href="prod_fem.aspx">Mulher</a>
            <a class="cabecalho__menu__link" href="unisex.aspx">Unisex</a>
            <a class="cabecalho__menu__link" href="relatorio.aspx">Pedidos</a>
        </nav>
    </header>

    <div style="width: 90%; margin: 0 auto;">
        <hr>
    </div>
    <div class="container" >
        <div id="conteudo" runat="server" style="border:solid; border-width:1px; overflow-x: auto; width:100%">
            <asp:Repeater ID="rptRelatorio" runat="server">
                <HeaderTemplate>
                    <table class="table">
                        <thead>
                            <tr>
                                <th>Data e Hora</th>
                                <th>Produtos</th>
                                <th>Outros</th>
                                <th>Nome</th>
                                <th>Telefone</th>
                                <th>E-mail</th>
                                <th>Endereço</th>
                                <th>Retirada ou Entrega</th>
                                <th>Loja</th>
                                <th>Forma de Pagamento</th>
                                <th>Valor Sugerido</th>
                            </tr>
                        </thead>
                        <tbody>
                </HeaderTemplate>
                <ItemTemplate>
                    <tr>
                        <td><%# Eval("DataHora") %></td>
                        <td><%# Eval("Produtos") %></td>
                        <td><%# Eval("Outros") %></td>
                        <td><%# Eval("Nome") %></td>
                        <td><%# Eval("Telefone") %></td>
                        <td><%# Eval("Email") %></td>
                        <td><%# Eval("Endereco") %></td>
                        <td><%# Eval("RetiradaEntrega") %></td>
                        <td><%# Eval("Loja") %></td>
                        <td><%# Eval("Pagamento") %></td>
                        <td><%# Eval("Valor") %></td>
                    </tr>
                </ItemTemplate>
                <FooterTemplate>
                    </tbody>
                    </table>
                </FooterTemplate>
            </asp:Repeater>


        </div>
    </div>
    <br />
    <footer class="rodape">
        <p>Desenvolvido por Jurandi Junior.</p>
    </footer>
</body>
</html>
