<%@ Application Language="VB" %>

<script runat="server">

    Sub Application_Start(ByVal sender As Object, ByVal e As EventArgs)
        ' Codice eseguito all\'avvio dell\'applicazione
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
    Try
            For Each name As String In Request.Form
                If XabalController(Request.Form(name)) = "KO" Then
                    strErrorMessage = String.Format("Unauthorized Parameter found!")
                    Throw New Exception(strErrorMessage)
                End If
            Next
            For Each name As String In Request.QueryString
                If XabalController(Request.QueryString(name)) = "KO" Then
                    strErrorMessage = String.Format("Unauthorized Request found!")
                    Throw New Exception(strErrorMessage)
                End If
            Next
        Catch ex As Exception

        End Try
    End Sub
    
    Public Function XabalController(ByVal data As String) As String
        data = data.ToLower
        If data.Contains("<") Then
            Return "KO"
        End If
        If data.Contains("<script") Then
            Return "KO"
        End If
        If data.Contains("<script>") Then
            Return "KO"
        End If
        If data.Contains("/>") Then
            Return "KO"
        End If
        If data.Contains(">") Then
            Return "KO"
        End If
        If data.Contains("@@version") Then
            Return "KO"
        End If
        If data.Contains("sqlmap") Then
            Return "KO"
        End If
        If data.Contains("connect()") Then
            Return "KO"
        End If
        If data.Contains("cast(") Then
            Return "KO"
        End If
        If data.Contains("char(") Then
            Return "KO"
        End If
        If data.Contains("bchar(") Then
            Return "KO"
        End If
        If data.Contains("sysdatabases") Then
            Return "KO"
        End If
        If data.Contains("(select") Then
            Return "KO"
        End If
        If data.Contains("convert(") Then
            Return "KO"
        End If
        If data.Contains("dbnetlib") Then
            Return "KO"
        End If
        If data.Contains("connect(") Then
            Return "KO"
        End If
        If data.Contains("int%2c(") Then
            Return "KO"
        End If
        If data.Contains("sysobjects") Then
            Return "KO"
        End If
        If data.Contains("count(") Then
            Return "KO"
        End If
        If data.Contains("count(") Then
            Return "KO"
        End If
        If data.Contains(Chr(34) & " target=" & Chr(34) & "_blank" & Chr(34)) Then
            Return "KO"
        End If
        Return "OK"
    End Function
       
</script>
