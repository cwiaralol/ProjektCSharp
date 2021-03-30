<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="Lab13.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
 <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
 <meta name="author" content="Miłosz Ćwiertniewicz"/>
 <meta name="description" content="Strona główna"/>
    <title>Strona główna</title>

    <style>
         a { text-decoration: none; }
    </style>
</head>
<body style="background-image: url(&quot;http://www.allwhitebackground.com/images/6/White-Powerpoint-Background-Free-Image.jpg;);" >
    
        <form id="form1" runat="server">
        <div>
        <h1>Strona główna</h1>
        <p>Witaj na stronie głównej</p>
        
            <asp:HyperLink ID="HyperLink1" runat="server" href="default.aspx">Strona główna</asp:HyperLink>
            <br />
            <asp:HyperLink ID="HyperLink2" runat="server" href="cennik.aspx">Cennik</asp:HyperLink>
             <br />
            <asp:HyperLink ID="HyperLink3" runat="server" href="wyszukiwanie.aspx">Wyszukiwanie</asp:HyperLink>
            <br />
            <asp:HyperLink ID="HyperLink4" runat="server" href="logowanie.aspx">Logowanie</asp:HyperLink>
            <br />
            <asp:HyperLink ID="HyperLink6" runat="server" href="O_autorach.aspx">O Autorze</asp:HyperLink>
            <br />
            <asp:HyperLink ID="HyperLink5" runat="server" href="konfiguracja.aspx">Konfiguracja</asp:HyperLink>
        <br />



            <h3>Reklama !</h3>
            <asp:XmlDataSource ID="XmlDataSource2" runat="server" DataFile="~/XMLFile1.xml"></asp:XmlDataSource>

            <asp:ScriptManager ID="ScriptManager1" runat="server" />  
            <asp:Timer ID="Timer1" Interval="5000" runat="server" />  
            <asp:UpdatePanel ID="up1" runat="server">  
            <Triggers>  
            <asp:AsyncPostBackTrigger ControlID="Timer1" EventName="Tick" />  
            </Triggers>  
            <ContentTemplate>  
            <asp:AdRotator ID="AdRotator1" runat="server" DataSourceID="XmlDataSource2" />
            </ContentTemplate>  
            </asp:UpdatePanel> 





        <hr />
        <h4>Autor:Miłosz Ćwiertniewicz</h4>
        </div>
    </form>





</body>
</html>
