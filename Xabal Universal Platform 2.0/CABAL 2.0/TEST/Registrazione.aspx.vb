
Partial Class Registrazione
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim a As New CABAL___Engine.Class1
        Dim email As String = TextBox1.Text
        Dim password As String = TextBox2.Text
        If a.CheckNull(email) = "KO" Then
            Session.Item("Risultato") = "Attenzione! Immettere una mail valida!"
            Response.Redirect("Risultato.aspx")
        Else
            If a.CheckEmail(email) = "KO" Then
                Session.Item("Risultato") = "Attenzione! Immettere una mail valida!"
                Response.Redirect("Risultato.aspx")
            Else
                If a.CheckMulti("cabal", "email", "email = '" & email & "'", "cabal") = "KO" Then
                    Session.Item("Risultato") = "Attenzione! L'utente risulta già registrato! Riprovare con un'altra e-mail!"
                    Response.Redirect("Risultato.aspx")
                Else
                    If a.CheckNull(password) = "KO" Then
                        Session.Item("Risultato") = "Password nulla"
                        Response.Redirect("Risultato.aspx")
                    Else
                        If a.CheckPassword(password) = "KO" Then
                            Session.Item("Risultato") = "Password errata"
                            Response.Redirect("Risultato.aspx")
                        Else
                            Dim hashedpass As String = CABAL___Engine.Class1.GenerateSHA512String(password)
                            Dim rand As String = a.GenerateRandom
                            a.DirectWrite("INSERT INTO `cabal` (`email`, `password`, `regcode`) VALUES ('" & email & "', '" & hashedpass & "', '" & rand & "');", "cabal")
                            If a.SendMail("alefiori3@gmail.com", "AkAm.7773469", 587, "smtp.gmail.com", "alefiori3@gmail.com", email, "Codice di conferma", rand, True) = "OK" Then
                                Session.Item("Risultato") = "Codice di conferma inviato"
                                Response.Redirect("Risultato.aspx")
                            End If
                        End If
                    End If
                End If
            End If
        End If
    End Sub
End Class
