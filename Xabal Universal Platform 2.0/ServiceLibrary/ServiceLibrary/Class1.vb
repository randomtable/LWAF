Public Class Class1
    Public Function Funzione(ByVal param As String) As String
        Dim engine As New CABAL___Engine.Class1
        If engine.CheckNull(param) = "KO" Then
            Return "KO"
        End If
        If engine.CheckMulti("service", "services", "services = '" & param & "'", "xabal") = "OK" Then
            Return "KO"
        End If
        Dim contractengine As New ContractLibrary.Class1
        Return contractengine.Funzione(param)
    End Function
End Class
