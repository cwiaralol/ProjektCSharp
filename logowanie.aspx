<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="logowanie.aspx.cs" Inherits="Lab13.WebForm4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
 <meta name="author" content="Miłosz Ćwiertniewicz"/>
 <meta name="description" content="Logowanie"/>
    <title>Logowanie</title>

<style>
     a { text-decoration: none; }
</style>


</head>
<body style="background-image: url(&quot;http://www.allwhitebackground.com/images/6/White-Powerpoint-Background-Free-Image.jpg;);" >

    <form id="form1" runat="server">
        <div>

 <h1>Strona logowania</h1>

    <table class="auto-style3">
        <tr>
            <td class="auto-style5">

    <asp:Label ID="Label5" runat="server" Text="Podaj login:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server"  Width="154px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">

    <asp:Label ID="Label1" runat="server" Text="Podaj hasło:"></asp:Label>
            </td>
            <td>
    <asp:TextBox ID="TextBox1" runat="server" Width="154px" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
    </table>
    <br />

    <asp:Button ID="Button1" runat="server" Text="Zaloguj" OnClick="Button1_Click" />
    <asp:Button ID="Button2" runat="server" Text="Wyloguj" OnClick="Button2_Click" />
    <br />
    <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
            <br />
            <br />
            <hr />

            <asp:HyperLink ID="HyperLink1" runat="server" href="default.aspx">Strona główna</asp:HyperLink>
            <p>Autor:Miłosz Ćwiertniewicz </p>
        </div>
    </form>
</body>
</html>
