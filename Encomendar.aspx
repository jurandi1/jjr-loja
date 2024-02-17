<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Encomendar.aspx.cs" Inherits="Encomendar" %>

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
        <div id="pedido" class="row">
            <div class="col-md-6 col-sm-6 col-xs-12">
                <form id="pedidoForm" runat="server">

                    <div class="form-group">
                        <label for="produto">Produto:</label>
                        <asp:CheckBoxList ID="produto" runat="server" CssClass="form-control" AutoPostBack="true" OnSelectedIndexChanged="produto_SelectedIndexChanged">
                            <asp:ListItem Value="camisetas_man">&nbsp;Camisetas Masculinas - R$ 100,00</asp:ListItem>
                            <asp:ListItem Value="cuecas">&nbsp;Cuecas - R$ 85,00</asp:ListItem>
                            <asp:ListItem Value="camisetas_fem">&nbsp;Camisetas Femininas - R$ 60,00</asp:ListItem>
                            <asp:ListItem Value="calcinhas">&nbsp;Calcinhas - R$ 70,00</asp:ListItem>
                            <asp:ListItem Value="meias">&nbsp;Meias - R$ 35,00</asp:ListItem>
                            <asp:ListItem Value="outros">&nbsp;Outros</asp:ListItem>
                        </asp:CheckBoxList>
                        <asp:CustomValidator ID="cvProduto" runat="server" ErrorMessage="*Produto é obrigatório." OnServerValidate="cvProduto_ServerValidate" Style="color: red" />
                    </div>
                    <div class="form-group" ID="divProd" runat="server" visible="false">
                        <label for="txtProd">Outro produto:</label>
                        <asp:TextBox ID="txtProd" runat="server" CssClass="form-control" />
                        <small><b>*Iremos verificar disponibilidade e valores e encaminhar os detalhes pelos contatos informados.</b></small>
                    </div>
                    <div class="form-group">
                        <label for="nome">Nome:</label>
                        <asp:TextBox ID="nome" runat="server" CssClass="form-control" />
                        <asp:RequiredFieldValidator ControlToValidate="nome" ErrorMessage="*Nome é obrigatório." runat="server" Style="color: red" />
                    </div>
                    <div class="form-group">
                        <label for="telefone">Telefone:</label>
                        <asp:TextBox ID="telefone" runat="server" CssClass="form-control" />
                        <asp:RequiredFieldValidator ControlToValidate="telefone" ErrorMessage="*Telefone é obrigatório." runat="server" Style="color: red" />
                    </div>
                    <div class="form-group">
                        <label for="email">E-mail:</label>
                        <asp:TextBox ID="email" runat="server" CssClass="form-control" />
                        <asp:RequiredFieldValidator ControlToValidate="email" ErrorMessage="*E-mail é obrigatório." runat="server" Style="color: red" />
                    </div>
                    <div class="form-group">
                        <label for="endereco">Endereço:</label>
                        <asp:TextBox ID="endereco" runat="server" CssClass="form-control" />
                        <asp:RequiredFieldValidator ControlToValidate="endereco" ErrorMessage="*Endereço é obrigatório." runat="server" Style="color: red" />
                    </div>
                    <div class="form-group">
                        <label for="retiradaEntrega">Retirar na loja ou entrega:</label>
                        <asp:DropDownList ID="retiradaEntrega" runat="server" CssClass="form-control" AutoPostBack="True" OnSelectedIndexChanged="RetiradaEntrega_SelectedIndexChanged">
                            <asp:ListItem Value="" Selected="True">[Selecione]</asp:ListItem>
                            <asp:ListItem Value="retirada">Retirar na loja</asp:ListItem>
                            <asp:ListItem Value="entrega">Entrega</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="form-group" id="lojaDiv" runat="server" visible="false">
                        <label for="loja">Loja:</label>
                        <asp:DropDownList ID="loja" runat="server" CssClass="form-control">
                            <asp:ListItem Value="" Selected="True">[Selecione]</asp:ListItem>
                            <asp:ListItem Value="barrafunda">Unidade Barra Funda</asp:ListItem>
                            <asp:ListItem Value="se">Unidade Sé</asp:ListItem>
                            <asp:ListItem Value="itaquera">Unidade Itaquera</asp:ListItem>
                        </asp:DropDownList>
                    </div>

                    <div class="form-group">
                        <label for="pagamento">Modo de pagamento:</label>
                        <asp:DropDownList ID="pagamento" runat="server" CssClass="form-control" AutoPostBack="True" OnSelectedIndexChanged="Pagamento_SelectedIndexChanged">
                            <asp:ListItem Value="pix">PIX</asp:ListItem>
                            <asp:ListItem Value="creditocard">Cartão de Crédito</asp:ListItem>
                            <asp:ListItem Value="debitcard">Cartão de Débito</asp:ListItem>
                            <asp:ListItem Value="dinheiro">Dinheiro</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="form-group" id="valorDiv" runat="server" visible="false">
                        <label for="valor">Valor:</label>
                        <asp:TextBox ID="valor" runat="server" CssClass="form-control" />
                    </div>
                    <asp:Button ID="finalizar" runat="server" Text="Finalizar" OnClick="finalizar_Click" CssClass="btn btn-primary" />
                </form>

            </div>
        </div>
    </div>
    <br />
    <footer class="rodape">
        <p>Desenvolvido por Jurandi Junior.</p>
    </footer>


</body>
</html>
