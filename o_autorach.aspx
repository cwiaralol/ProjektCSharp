<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="o_autorach.aspx.cs" Inherits="Lab13.WebForm5" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
 <meta name="author" content="Miłosz Ćwiertniewicz"/>
 <meta name="description" content="O Autorach"/>
    <title>O Autorach</title>
    <style>
         a { text-decoration: none; }
    </style>
</head>
<body style="background-image: url(&quot;http://www.allwhitebackground.com/images/6/White-Powerpoint-Background-Free-Image.jpg;);" >

    <form id="form1" runat="server">
        <div>
             <h1>Informacje o autorze</h1>
            <h4>Autor:Miłosz Ćwiertniewicz</h4>
            <br />
            <a href="https://imgbb.com/"><img src="https://i.ibb.co/K2FymrC/ja.jpg" alt="ja" border="0"/></a>
            <hr />

            <asp:HyperLink ID="HyperLink1" runat="server" href="default.aspx">Strona główna</asp:HyperLink>

        </div>
    </form>
</body>
</html>
