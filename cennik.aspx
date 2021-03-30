<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cennik.aspx.cs" Inherits="Lab13.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
 <meta name="author" content="Miłosz Ćwiertniewicz"/>
 <meta name="description" content="Cennik"/>
    <title>Cennik</title>
    <style type="text/css">
        .auto-style1 {
            margin-right: 0px;
        }

         a { text-decoration: none; }
    </style>
</head>
<body style="background-image: url(&quot;http://www.allwhitebackground.com/images/6/White-Powerpoint-Background-Free-Image.jpg;);" >

    <form id="form1" runat="server">
        <div>
            <h1>Cennik</h1>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [idGrupy], [Grupa] FROM [Grupy]"></asp:SqlDataSource>

            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="idGrupy" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="CustomersGridView_SelectedIndexChanged" AllowPaging="True">
                <Columns>
                    <asp:BoundField DataField="idGrupy" HeaderText="idGrupy" InsertVisible="False" ReadOnly="True" SortExpression="idGrupy" Visible="False" />
                    <asp:BoundField DataField="Grupa" HeaderText="Grupa przedmiotów" SortExpression="Grupa" />
                    <asp:CommandField ShowSelectButton="True" />
                </Columns>
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
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Produkty] WHERE ([grupa] = @grupa)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="GridView1" Name="grupa" PropertyName="SelectedValue" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="Id" DataSourceID="SqlDataSource2" CssClass="auto-style1" AllowPaging="True">
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" Visible="False" />
                    <asp:BoundField DataField="nazwa" HeaderText="Nazwa przedmiotu" SortExpression="nazwa" />
                    <asp:BoundField DataField="grupa" HeaderText="grupa" SortExpression="grupa" Visible="False" />
                    <asp:BoundField DataField="cena" HeaderText="Cena" SortExpression="cena" />
                    <asp:BoundField DataField="opis" HeaderText="Opis przedmiotu" SortExpression="opis" />
                    <asp:BoundField DataField="adres_www" HeaderText="Adres_www" SortExpression="adres_www" />
                    <asp:BoundField DataField="stan_magazynu" HeaderText="Stan_magazynu(ilość w szt.)" SortExpression="stan_magazynu" >

                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>

                </Columns>

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
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Zamknij" Visible="False" />
              <br />
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [nazwa], [cena] FROM [Produkty] WHERE (([nazwa] = @nazwa) AND ([cena] &gt;= @cena) AND ([cena] &lt;= @cena2))">
                <SelectParameters>
                    <asp:Parameter DefaultValue="procesor" Name="nazwa" Type="String" />
                    <asp:Parameter DefaultValue="1" Name="cena" Type="Decimal" />
                    <asp:Parameter DefaultValue="400" Name="cena2" Type="Decimal" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
              <hr />

            <asp:HyperLink ID="HyperLink1" runat="server" href="default.aspx">Strona główna</asp:HyperLink>
            <p>Autor:Miłosz Ćwiertniewicz </p>
        </div>
    </form>
</body>
</html>
