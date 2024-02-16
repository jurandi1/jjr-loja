using System;
using System.Web.UI;

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
        // Aqui você pode adicionar a lógica para processar o pedido
        // ...

        // Limpar os campos do formulário
        nome.Text = "";
        telefone.Text = "";
        email.Text = "";
        endereco.Text = "";
        retiradaEntrega.SelectedValue = "";
        loja.SelectedValue = "barrafunda";
        pagamento.SelectedValue = "pix";
        valor.Text = "";
        produto.SelectedValue = "camisetas_man";

        // Exibir uma mensagem de sucesso
        ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Pedido efetuado com sucesso. Um e-mail foi direcionado à loja e em breve entraremos em contato via e-mail e WhatsApp.');", true);
    }

}