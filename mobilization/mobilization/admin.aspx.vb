Imports System.Data.SqlClient
Public Class WebForm5
    Inherits System.Web.UI.Page
    Private strConnString As String = ConfigurationManager.ConnectionStrings("Mobilization").ConnectionString.ToString()

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        txtname.Focus()
    End Sub

    Protected Sub cmdCancel_Click(ByVal sender As Object, ByVal e As EventArgs) Handles cmdCancel.Click
        Response.Redirect("category.aspx")
    End Sub

    Protected Sub cmdAdd_Click(ByVal sender As Object, ByVal e As EventArgs) Handles cmdAdd.Click
        
        Dim con As New SqlConnection(strConnString)
        Dim cmd As New SqlCommand()
        con.Open()
        cmd.CommandType = CommandType.StoredProcedure
        cmd.Connection = con
        cmd.CommandText = "Recepies_Insert"
        'cmd.CommandText = "insert into Recepies(Name, Description, Ingredients, Category, SubCategory, Price, TimeTaken, Active, InsertedAt, UpdatedAt)values(@Name, @Description, @Ingredients, @Category, @SubCategory, @Price, @TimeTaken, @Active, @InsertAt, @UpdatedAt"
        cmd.Parameters.Add("@Name", SqlDbType.VarChar).Value = txtname.Text
        cmd.Parameters.Add("@Description", SqlDbType.VarChar).Value = txtDescription.Text
        cmd.Parameters.Add("@Ingredients", SqlDbType.VarChar).Value = txtIngredients.Text
        cmd.Parameters.Add("@Category", SqlDbType.VarChar).Value = txtCategory.Text
        cmd.Parameters.Add("@SubCategory", SqlDbType.VarChar).Value = txtSubCategory.Text
        cmd.Parameters.Add("@Price", SqlDbType.Int).Value = txtPrice.Text
        cmd.Parameters.Add("@TimeTaken", SqlDbType.Int).Value = CInt(txtTimeTaken.Text.Trim())
        cmd.Parameters.Add("@Active", SqlDbType.Bit).Value = True
        cmd.Parameters.Add("@InsertedAt", SqlDbType.DateTime2).Value = DateTime.Now
        cmd.Parameters.Add("@UpdatedAt", SqlDbType.DateTime2).Value = DateTime.Now
        Try
            cmd.ExecuteNonQuery()
        Catch ex As Exception
            Throw ex
        Finally
            cmd.Dispose()
            con.Close()
        End Try
        MsgBox("Dish Added Successfully")
    End Sub
End Class