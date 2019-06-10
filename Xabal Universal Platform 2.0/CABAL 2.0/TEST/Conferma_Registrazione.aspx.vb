
Partial Class Conferma_Registrazione
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim a As New CABAL___Engine.Class1
        Dim email As String = TextBox1.Text
        Dim password As String = TextBox2.Text
        Dim regcode As String = TextBox3.Text
        If a.CheckNull(email) = "KO" Then
            Session.Item("Risultato") = "Attenzione! Immettere una mail valida!"
            Response.Redirect("Risultato.aspx")
        Else
            If a.CheckEmail(email) = "KO" Then
                Session.Item("Risultato") = "Attenzione! Immettere una mail valida!"
                Response.Redirect("Risultato.aspx")
            Else
                If a.CheckMulti("cabal", "email", "email = '" & email & "'", "cabal") = "OK" Then
                    Session.Item("Risultato") = "Attenzione! Immettere una mail valida!"
                    Response.Redirect("Risultato.aspx")
                Else
                    If a.CheckNull(password) = "KO" Then
                        Session.Item("Risultato") = "Attenzione! Immettere una password valida!"
                        Response.Redirect("Risultato.aspx")
                    Else
                        If a.CheckPassword(password) = "KO" Then
                            Session.Item("Risultato") = "Attenzione! Immettere una password valida!"
                            Response.Redirect("Risultato.aspx")
                        Else
                            If a.CheckMulti("cabal", "password", "email = '" & email & "' AND password = '" & CABAL___Engine.Class1.GenerateSHA512String(password) & "'", "cabal") = "OK" Then
                                Session.Item("Risultato") = "Attenzione! Immettere una password valida!"
                                Response.Redirect("Risultato.aspx")
                            Else
                                If a.CheckNull(regcode) = "KO" Then
                                    Session.Item("Risultato") = "Attenzione! Immettere un codice di conferma valido!"
                                    Response.Redirect("Risultato.aspx")
                                Else
                                    If a.CheckMulti("cabal", "regcode", "email = '" & email & "' AND password = '" & CABAL___Engine.Class1.GenerateSHA512String(password) & "' AND regcode = '" & regcode & "'", "cabal") = "OK" Then
                                        Session.Item("Risultato") = "Attenzione! Immettere un codice di conferma valido!"
                                        Response.Redirect("Risultato.aspx")
                                    Else
                                        a.DirectWrite("UPDATE cabal SET cabal.conferma = 'SI' WHERE (((cabal.email)='" & email & "') AND ((cabal.password)='" & CABAL___Engine.Class1.GenerateSHA512String(password) & "') AND ((cabal.regcode)='" & regcode & "'));", "cabal")
                                        Session.Item("Risultato") = "Account confermato"
                                        Response.Redirect("Risultato.aspx")
                                    End If
                                End If
                            End If
                        End If
                    End If
                End If
            End If
        End If
    End Sub
End Class
