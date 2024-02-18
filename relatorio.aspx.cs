using System;
using System.IO;
using System.Collections.Generic;
using System.Linq;

public partial class relatorio : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            GerarRelatorio();
        }
    }

    private void GerarRelatorio()
    {
        string caminhoDoArquivo = Server.MapPath("~/Dados.txt");

        if (File.Exists(caminhoDoArquivo))
        {
            string[] linhas = File.ReadAllLines(caminhoDoArquivo);
            List<Pedido> pedidos = new List<Pedido>();

            for (int i = 0; i < linhas.Length; i += 12)
            {
                Pedido pedido = new Pedido();
                if (i + 0 < linhas.Length) pedido.DataHora = linhas[i + 0].Replace("Data e Hora: ", "");
                if (i + 1 < linhas.Length) pedido.Produtos = linhas[i + 1].Replace("Produtos: ", "");
                if (i + 2 < linhas.Length) pedido.Outros = linhas[i + 2].Replace("Outros: ", "");
                if (i + 3 < linhas.Length) pedido.Nome = linhas[i + 3].Replace("Nome: ", "");
                if (i + 4 < linhas.Length) pedido.Telefone = linhas[i + 4].Replace("Telefone: ", "");
                if (i + 5 < linhas.Length) pedido.Email = linhas[i + 5].Replace("E-mail: ", "");
                if (i + 6 < linhas.Length) pedido.Endereco = linhas[i + 6].Replace("Endereço: ", "");
                if (i + 7 < linhas.Length) pedido.RetiradaEntrega = linhas[i + 7].Replace("Retirada ou Entrega:", "");
                if (i + 8 < linhas.Length) pedido.Loja = linhas[i + 8].Replace("Loja: ", "");
                if (i + 9 < linhas.Length) pedido.Pagamento = linhas[i + 9].Replace("Forma de pagamento: ", "");
                if (i + 10 < linhas.Length) pedido.Valor = linhas[i + 10].Replace("Valor: ", "");

                pedidos.Add(pedido);
            }

            pedidos = pedidos.OrderByDescending(p => p.DataHora).ToList();

            rptRelatorio.DataSource = pedidos;
            rptRelatorio.DataBind();
        }
        else
        {
            // O arquivo não existe. Você pode querer lidar com isso de alguma forma.
        }
    }
}

public class Pedido
{
    public string DataHora { get; set; }
    public string Produtos { get; set; }
    public string Outros { get; set; }
    public string Nome { get; set; }
    public string Telefone { get; set; }
    public string Email { get; set; }
    public string Endereco { get; set; }
    public string RetiradaEntrega { get; set; }
    public string Loja { get; set; }
    public string Pagamento { get; set; }
    public string Valor { get; set; }
}
