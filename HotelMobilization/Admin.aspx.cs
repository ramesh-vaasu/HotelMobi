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
        //MessageBox.Show("Are you sure you want to insert a new dish ?");
        //Response.Write("<script type=\"text/javascript\">alert('Are you sure you want to insert a new dish ?');</script>");
        Response.Redirect("~/Menu.aspx");
    }
}