
Partial Class ResultError
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load
        Label1.Text = Session.Item("Result")
    End Sub
End Class
