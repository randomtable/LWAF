Public Class Class1
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
End Class
