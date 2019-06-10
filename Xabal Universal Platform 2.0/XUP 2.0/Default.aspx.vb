
Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load
        Dim cabal As New CABAL___Engine.Class1
        Dim serviceengine As New ServiceLibrary.Class1
        Literal1.Text = serviceengine.Funzione("init")
    End Sub
End Class
