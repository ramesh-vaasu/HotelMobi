using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using HotelMobiModel;

public partial class Menu : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        HotelMobiEntities dbContext = new HotelMobiEntities();
        //rptrItems.DataSource = dbContext.Dishes;
        //rptrItems.DataBind();
        if (!IsPostBack)
        {
            gvItems.DataSource = dbContext.Dishes;
            gvItems.DataBind();
        }
    }
    protected void UnCheckAll_Click(object sender, EventArgs e)
    {
    }
    protected void btnPlaceOrder_Click(object sender, EventArgs e)
    {
        HotelMobiEntities dbContext = new HotelMobiEntities();
        
        int OrderId = 0;
        if (dbContext.Orders.Count() == 0)
            OrderId = 1;
        else
        {
            OrderId = Convert.ToInt32(dbContext.Orders.OrderByDescending(x => x.Id).First().OrderId) + 1;
        }
        foreach (GridViewRow row in gvItems.Rows)
        {
            if (row.RowType == DataControlRowType.DataRow)
            {
                var hdn = (HiddenField)row.FindControl("hfId");
                var chk = (CheckBox)row.FindControl("cbSelect");
                Order _Order = new Order();
                if (((CheckBox)row.FindControl("cbSelect")).Checked)
                {
                    _Order.OrderId = OrderId;
                    _Order.DishId = Convert.ToInt32(hdn.Value);
                    _Order.PlacedAt = DateTime.Now;
                    _Order.IsServed = false;
                    dbContext.AddToOrders(_Order);
                    dbContext.SaveChanges();
                }
                if (Convert.ToInt32(hdn.Value) != 0)
                {
                    
                }
            }
        }
    }
    protected void btnUnCheckAll_Click(object sender, EventArgs e)
    {

    }
}