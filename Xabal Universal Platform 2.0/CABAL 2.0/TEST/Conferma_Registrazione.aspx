<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Conferma_Registrazione.aspx.vb" Inherits="Conferma_Registrazione" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Text="Attiva Account:"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="Email:"></asp:Label>
        <br />
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Text="Password:"></asp:Label>
        <br />
        <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label4" runat="server" Text="Codice Registrazione:"></asp:Label>
        <br />
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="Conferma registrazione" />
    
    </div>
    </form>
</body>
</html>
