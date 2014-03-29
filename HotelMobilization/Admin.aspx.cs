using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

using System.Data.SqlClient;

using System.Configuration;


public partial class Admin : System.Web.UI.Page
{
    public SqlConnection conn;
    public SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        //conn = new SqlConnection();
        //conn.ConnectionString = ConfigurationManager.ConnectionStrings["HotelMobiConnect"].ToString();
        //conn.Open();
        //cmd = new SqlCommand("Dishes_Insert", conn);
        //cmd.CommandType = CommandType.StoredProcedure;
        //cmd.Parameters.AddWithValue("@
        HotelMobiModel.HotelMobiEntities HotelMobiEntity = new HotelMobiModel.HotelMobiEntities();
        HotelMobiModel.Dish objDish = new HotelMobiModel.Dish();
        objDish.Category = ddlCategory.SelectedValue;
        objDish.Description = txtDescription.Text.Trim();
        objDish.Ingredients = txtIngredients.Text.Trim();
        objDish.Name = txtname.Text.Trim();
        objDish.SubCategory = txtSubCategory.Text.Trim();
        objDish.Price = Convert.ToDecimal(txtPrice.Text.Trim());
        objDish.TimeTaken = Convert.ToInt32(txtMin.Text.Trim()) * 60 + Convert.ToInt32(txtsec.Text.Trim());
        objDish.InsertedAt = DateTime.Now;
        objDish.UpdatedAt = DateTime.Now;
        HotelMobiEntity.AddToDishes(objDish);
        HotelMobiEntity.SaveChanges();
    }
}