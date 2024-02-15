using System;

public partial class jjr_loja : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            
        }
    }


    protected void btnPesquisar_Click(object sender, EventArgs e)
    {
        Response.Redirect("jjr_loja.aspx");
    }
}