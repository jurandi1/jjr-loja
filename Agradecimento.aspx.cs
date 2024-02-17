using System;

public partial class Agradecimento : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            
        }
    }


    protected void btnNovaCompra_Click(object sender, EventArgs e)
    {
        Response.Redirect("Encomendar.aspx");
    }

    protected void btnPagPrincipal_Click(object sender, EventArgs e)
    {
        Response.Redirect("jjr_loja.aspx");
    }
}