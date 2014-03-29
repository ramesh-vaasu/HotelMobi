Public Class WebForm3
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        txtuser.Focus()
    End Sub

    Protected Sub cmdadd_Click(ByVal sender As Object, ByVal e As EventArgs) Handles cmdadd.Click
        If (txtuser.Text = "" Or txtpass.Text = "") Then
            Response.Redirect("error.aspx")
        ElseIf (txtuser.Text = "chef" And txtpass.Text = "chef@1") Then
            Response.Redirect("chef orders.aspx")
        ElseIf (txtuser.Text = "" Or txtpass.Text = "") Then
            Response.Redirect("error.aspx")
        ElseIf (txtuser.Text = "admin" And txtpass.Text = "admin@1") Then
            Response.Redirect("admin.aspx")
        End If
    End Sub


    Protected Sub cmdclear_Click(ByVal sender As Object, ByVal e As EventArgs) Handles cmdclear.Click
        txtuser.Text = ""
        txtpass.Text = ""
    End Sub

    Protected Sub cmdcancel_Click(ByVal sender As Object, ByVal e As EventArgs) Handles cmdcancel.Click

    End Sub
End Class