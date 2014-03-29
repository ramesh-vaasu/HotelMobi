using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ChefLogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        if (txtuser.Text.Trim() == "chef" && txtpass.Text.Trim() == "chef")
            Response.Redirect("~/MyOrder.aspx");
    }
    protected void btnClear_Click(object sender, EventArgs e)
    {
        txtuser.Text = "";
        txtpass.Text = "";
    }
    protected void btnCancel_Click(object sender, EventArgs e)
    {
       
    }
}