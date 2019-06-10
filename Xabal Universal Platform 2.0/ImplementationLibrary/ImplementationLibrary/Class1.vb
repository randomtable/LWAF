Imports System.Data.Odbc

Public Class Class1
    Public Function Funzione(ByVal param As String) As String
        Dim engine As New CABAL___Engine.Class1
        If engine.CheckNull(param) = "KO" Then
            Return "KO"
        End If
        If engine.CheckMulti("implementation", "implementations", "implementations = '" & param & "'", "xabal") = "OK" Then
            Return "KO"
        End If
        If param = "init" Then
            Return "test: " & ReadValue("inittable", "initvalue", "initfield = '" & param & "'", "xabal")
        End If
        Return "OK"
    End Function

    Public Function ReadValue(ByVal tabella As String, ByVal campo As String, ByVal where As String, ByVal dsn As String) As String

        Dim queryString As String = "SELECT " & tabella & "." & campo & "  FROM " & tabella & " WHERE " & where & ";"

        Using connection As New OdbcConnection("Dsn=" & dsn)
            Dim command As New OdbcCommand(queryString, connection)

            connection.Open()

            Dim reader As OdbcDataReader = command.ExecuteReader()

            While reader.Read()
                Return reader.GetValue(0)
            End While

            If reader.HasRows = False Then
                Return "OK"
            Else
                Return "KO"
            End If

            connection.Close()
            reader.Close()
        End Using

        Return "Hello World"
    End Function
End Class
