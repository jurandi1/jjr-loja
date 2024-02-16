using System;
using System.Collections.Generic;
using System.Linq;

public partial class jjr_loja : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

        }
    }

    private static readonly Dictionary<string, string> KeywordToPage = new Dictionary<string, string>(StringComparer.OrdinalIgnoreCase)
    {
        // Masculinas
        { "Homem", "prod_masc.aspx" },
        { "Camiseta masculina", "prod_masc.aspx" },
        { "Cuecas", "prod_masc.aspx" },
        { "Roupa masculina", "prod_masc.aspx" },
        { "Sapato masculino", "prod_masc.aspx" },
        { "Acessórios masculinos", "prod_masc.aspx" },
        { "Blusa masculina", "prod_masc.aspx" },
        { "Jaqueta masculina", "prod_masc.aspx" },
        { "Calça masculina", "prod_masc.aspx" },
        { "Short masculino", "prod_masc.aspx" },
        { "Meia masculina", "prod_masc.aspx" },
        { "Gravata", "prod_masc.aspx" },
        { "Boné", "prod_masc.aspx" },

        // Femininas
        { "Calcinha", "prod_fem.aspx" },
        { "Feminina", "prod_fem.aspx" },
        { "Mulher", "prod_fem.aspx" },
        { "Roupa feminina", "prod_fem.aspx" },
        { "Sapato feminino", "prod_fem.aspx" },
        { "Acessórios femininos", "prod_fem.aspx" },
        { "Blusa feminina", "prod_fem.aspx" },
        { "Vestido", "prod_fem.aspx" },
        { "Saia", "prod_fem.aspx" },
        { "Calça feminina", "prod_fem.aspx" },
        { "Short feminino", "prod_fem.aspx" },
        { "Meia feminina", "prod_fem.aspx" },
        { "Bolsa", "prod_fem.aspx" },

        // Unisex
        { "Unisex", "unisex.aspx" },
        { "Meias", "unisex.aspx" },
        { "Camiseta", "unisex.aspx" },
        { "Calça jeans", "unisex.aspx" },
        { "Tênis", "unisex.aspx" },
        { "Mochila", "unisex.aspx" },
        { "Relógio", "unisex.aspx" },
        { "Óculos", "unisex.aspx" },
        { "Chapéu", "unisex.aspx" },
        { "Gorro", "unisex.aspx" },
        { "Cinto", "unisex.aspx" },
        { "Luvas", "unisex.aspx" },
        { "Cachecol", "unisex.aspx" },
    };

    protected void btnPesquisar_Click(object sender, EventArgs e)
    {
        string query = searchBox.Text;
        string page = KeywordToPage.FirstOrDefault(k => query.Contains(k.Key)).Value;

        if (!string.IsNullOrEmpty(page))
        {
            Response.Redirect(page);
        }
        else
        {
            Response.Redirect("jjr_loja.aspx?q=" + Server.UrlEncode(query));
        }
    }

}