<%@ Application Language="VB" %>

<script runat="server">

    Sub Application_Start(ByVal sender As Object, ByVal e As EventArgs)
        ' Codice eseguito all\'avvio dell\'applicazione
    Try
            For Each name As String In Request.Form
                Dim xengine As New XABAL.Class1
                If xengine.XabalController(Request.Form(name)) = "KO" Then
                    Session.Item("Result") = "Invalid Parameter!"
                    Response.Redirect("ResultError.aspx")
                End If
            Next
            For Each name As String In Request.QueryString
                Dim xengine As New XABAL.Class1
                If xengine.XabalController(Request.QueryString(name)) = "KO" Then
                    Session.Item("Result") = "Invalid Request!"
                    Response.Redirect("ResultError.aspx")
                End If
            Next
        Catch ex As Exception

        End Try
    End Sub
    
    Sub Application_End(ByVal sender As Object, ByVal e As EventArgs)
        ' Codice eseguito all\'arresto dell\'applicazione
    End Sub
        
    Sub Application_Error(ByVal sender As Object, ByVal e As EventArgs)
        ' Codice eseguito in caso di errore non gestito
    End Sub

    Sub Session_Start(ByVal sender As Object, ByVal e As EventArgs)
        ' Codice eseguito all\'avvio di una nuova sessione
    End Sub

    Sub Session_End(ByVal sender As Object, ByVal e As EventArgs)
        ' Codice eseguito al termine di una sessione. 
        ' Nota: l\'evento Session_End viene generato solo quando la modalità sessionstate
        ' è impostata su InProc nel file Web.config. Se la modalità è impostata su StateServer 
        ' o SQLServer, l\'evento non viene generato.
    End Sub
    
    Sub Application_BeginRequest(ByVal sender As Object, ByVal e As EventArgs)
    End Sub
       
</script>
