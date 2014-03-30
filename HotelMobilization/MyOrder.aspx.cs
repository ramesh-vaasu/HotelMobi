using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

public partial class MyOrder : System.Web.UI.Page
{
   // static int i = 10;
    protected void Page_Load(object sender, EventArgs e)
    {
        HotelMobiModel.HotelMobiEntities dbContext = new HotelMobiModel.HotelMobiEntities();
        rptrOrderItems.DataSource = dbContext.Orders.OrderBy(x=>x.PlacedAt);
        rptrOrderItems.DataBind();
    }
    public string GetSeconds(DateTime dt, int dishId)
    {
        HotelMobiModel.HotelMobiEntities dbContext = new HotelMobiModel.HotelMobiEntities();
        var dish = dbContext.Dishes.Where(x => x.Id == dishId);
        DateTime ToBeServedAt = dt.AddSeconds(dish.First().TimeTaken);
        int secs = (int)ToBeServedAt.Subtract(DateTime.Now).TotalSeconds;

        return secs.ToString();
    }
}