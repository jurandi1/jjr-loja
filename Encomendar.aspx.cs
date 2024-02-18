using System;
using System.Net.Mail;
using System.Net;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Encomendar : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            lojaDiv.Visible = false;
            valorDiv.Visible = false;
        }
    }

    protected void RetiradaEntrega_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (retiradaEntrega.SelectedValue == "retirada")
        {
            lojaDiv.Visible = true;
        }
        else
        {
            lojaDiv.Visible = false;
        }
    }

    protected void Pagamento_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (pagamento.SelectedValue == "dinheiro")
        {
            valorDiv.Visible = true;
        }
        else
        {
            valorDiv.Visible = false;
        }
    }

    protected void finalizar_Click(object sender, EventArgs e)
    {
        // Criar uma string com as informações do formulário
        string produtosSelecionados = "";
        foreach (ListItem item in produto.Items)
        {
            if (item.Selected)
            {
                produtosSelecionados += item.Text + ", ";
            }
        }

        // Remover a última vírgula e espaço
        if (produtosSelecionados.Length > 0)
        {
            produtosSelecionados = produtosSelecionados.Substring(0, produtosSelecionados.Length - 2);
        }

        string dataHoraAtual = DateTime.Now.ToString("dd/MM/yyyy HH:mm:ss");

        string dados = "\n\nData e Hora: " + dataHoraAtual + "\nProdutos: " + produtosSelecionados + "\nOutros: " + txtProd.Text + "\nNome: " + nome.Text + "\nTelefone: " + telefone.Text + "\nE-mail: " + email.Text + "\nEndereço: " + endereco.Text + "\nRetirada ou Entrega:" + retiradaEntrega.SelectedValue + "\nLoja: " + loja.Text + "\nForma de pagamento: " + pagamento.Text + "\nValor: " + valor.Text;

        // Especificar o caminho do arquivo
        string caminhoDoArquivo = Server.MapPath("~/Dados.txt");

        // Escrever os dados no arquivo
        System.IO.File.AppendAllText(caminhoDoArquivo, dados);

        // Limpar os campos do formulário
        nome.Text = "";
        telefone.Text = "";
        email.Text = "";
        endereco.Text = "";
        retiradaEntrega.SelectedValue = "";
        loja.SelectedValue = "";
        pagamento.SelectedValue = "pix";
        valor.Text = "";
        produto.ClearSelection(); // Limpar a seleção do produto
        txtProd.Text = "";
        // Exibir uma mensagem de sucesso
        //ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Pedido efetuado com sucesso. Entraremos em contato via e-mail e WhatsApp.');", true);
        Response.Redirect("Agradecimento.aspx");

    }

    protected void cvProduto_ServerValidate(object source, ServerValidateEventArgs args)
    {
        // Verificar se pelo menos um produto está selecionado
        args.IsValid = produto.SelectedItem != null;
    }

    protected void produto_SelectedIndexChanged(object sender, EventArgs e)
    {
        // Verificar se a opção "Outro" está selecionada
        if (produto.Items.FindByValue("outros").Selected)
        {
            // Se "Outro" estiver selecionado, mostrar o TextBox
            divProd.Visible = true;
        }
        else
        {
            // Se "Outro" não estiver selecionado, ocultar o TextBox
            divProd.Visible = false;
        }
    }

}