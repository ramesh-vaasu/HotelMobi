Public Class Menu
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub
    Protected Sub cmd_UnchekAll(ByVal sender As Object, ByVal e As EventArgs) Handles UnchekAll.Click
        ColdCafe.Checked = False
        KashmiriPalav.Checked = False
        ChilliCrab.Checked = False
        GarlicSpinach.Checked = False
        PrawnBiriyani.Checked = False
    End Sub

    Protected Sub Submit_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Submit.Click
        
    End Sub
End Class