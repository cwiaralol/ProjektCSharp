<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="wyszukiwanie.aspx.cs" Inherits="Lab13.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
 <meta name="author" content="Miłosz Ćwiertniewicz"/>
 <meta name="description" content="Wyszukiwanie"/>
    <title>Wyszukiwanie</title>
    <style type="text/css">
        .auto-style1 {
            width: 63%;
        }
        .auto-style2 {
            width: 157px;
        }
        .auto-style3 {
            width: 157px;
            height: 30px;
        }
        .auto-style4 {
            height: 30px;
        }
        .auto-style5 {
            height: 30px;
            width: 287px;
        }
        .auto-style6 {
            width: 287px;
        }

         a { text-decoration: none; }
    </style>
</head>
<body style="background-image: url(&quot;http://www.allwhitebackground.com/images/6/White-Powerpoint-Background-Free-Image.jpg;);" >

    <form id="form1" runat="server">
        <div>
            <h1>Wyszukiwanie<asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
            </h1>

             <table class="auto-style1">
                 <tr>
                     <td class="auto-style3">

             <asp:Label ID="Label1" runat="server" Text="Podaj nazwę produktu"></asp:Label>
                         :</td>
                     <td class="auto-style5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox1" runat="server" Width="231px"></asp:TextBox>
                     </td>
                     <td class="auto-style4">
                         <asp:Label ID="Label2" runat="server" BackColor="LightBlue" ForeColor="White"></asp:Label>
                     </td>
                 </tr>
                 <tr>
                     <td class="auto-style2">Zakres cen:</td>
                     <td class="auto-style6">&nbsp;od&nbsp;
            <asp:TextBox ID="TextBox2" runat="server" Width="88px" OnTextChanged="TextBox2_TextChanged" ></asp:TextBox>
            &nbsp;&nbsp; do&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox3" runat="server" Width="88px" OnTextChanged="TextBox3_TextChanged" ></asp:TextBox>
                     </td>
                     <td>
                         <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
                     </td>
                 </tr>
            </table>
            <br />
            <asp:Button ID="Button1" runat="server" Text="Szukaj" OnClick="Button1_Click" />
            <br />
            <br />

            <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
                <FooterStyle BackColor="White" ForeColor="#000066" />
                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                <RowStyle ForeColor="#000066" />
                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#007DBB" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#00547E" />
            </asp:GridView>

            <br />
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Zamknij" Visible="False" />
            <br />
            <br />
            <hr />

            <asp:HyperLink ID="HyperLink1" runat="server" href="default.aspx">Strona główna</asp:HyperLink>
            <p>Autor:Miłosz Ćwiertniewicz </p>
        </div>
    </form>
</body>
</html>
