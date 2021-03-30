<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="konfiguracja.aspx.cs" Inherits="Lab13.WebForm6" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
 <meta name="author" content="Miłosz Ćwiertniewicz"/>
 <meta name="description" content="Konfiguracja"/>
    <title>Konfiguracja</title>

 <style>
    a { text-decoration: none; }
     .auto-style1 {
         width: 100%;
     }
     .auto-style2 {
         margin-bottom: 0px;
     }
     .auto-style3 {
         height: 26px;
     }
  </style>

</head>
<body style="background-image: url(&quot;http://www.allwhitebackground.com/images/6/White-Powerpoint-Background-Free-Image.jpg;);" >

    <form id="form1" runat="server">
        <div>
        </div>
        <h1>Konfiguracja</h1>
        <br />
        <h3>Zarządzanie grupami</h3>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Grupy] WHERE [idGrupy] = @idGrupy" InsertCommand="INSERT INTO [Grupy] ([Grupa]) VALUES (@Grupa)" SelectCommand="SELECT * FROM [Grupy]" UpdateCommand="UPDATE [Grupy] SET [Grupa] = @Grupa WHERE [idGrupy] = @idGrupy">
            <DeleteParameters>
                <asp:Parameter Name="idGrupy" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Grupa" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Grupa" Type="String" />
                <asp:Parameter Name="idGrupy" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="idGrupy" DataSourceID="SqlDataSource1" AllowPaging="True" EnableModelValidation="False">
            <Columns>
                <asp:BoundField DataField="idGrupy" HeaderText="idGrupy" InsertVisible="False" ReadOnly="True" SortExpression="idGrupy" Visible="False" />
                <asp:BoundField DataField="Grupa" HeaderText="Grupa przedmiotów" SortExpression="Grupa" />
                <asp:CommandField  ShowEditButton="True" />
                <asp:TemplateField ShowHeader="False">
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Delete" Text="Usuń" OnClientClick="return confirm('Jesteś pewny?');"></asp:LinkButton>
                    </ItemTemplate>
                    <ControlStyle ForeColor="Red" />
                </asp:TemplateField>
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
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="idGrupy" DataSourceID="SqlDataSource1" Font-Bold="True" Font-Overline="False" Font-Underline="False" BackColor="Silver" ForeColor="White">
            <EditItemTemplate>
                idGrupy:
                <asp:Label ID="idGrupyLabel1" runat="server" Text='<%# Eval("idGrupy") %>' />
                <br />
                Grupa:
                <asp:TextBox ID="GrupaTextBox" runat="server" Text='<%# Bind("Grupa") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Aktualizuj" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Anuluj" />
            </EditItemTemplate>
            <InsertItemTemplate>
                Grupa:
                <asp:TextBox ID="GrupaTextBox" runat="server" Text='<%# Bind("Grupa") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Wstaw" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Anuluj" />
            </InsertItemTemplate>
            <ItemTemplate>
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="Nowy" />
            </ItemTemplate>
        </asp:FormView>
        <br />
        <h3>Zarządzanie Produktami</h3>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Produkty] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Produkty] ([nazwa], [grupa], [cena], [opis], [adres_www], [stan_magazynu]) VALUES (@nazwa, @grupa, @cena, @opis, @adres_www, @stan_magazynu)" SelectCommand="SELECT Produkty.Id, Produkty.nazwa, Grupy.Grupa, Produkty.cena, Produkty.opis, Produkty.adres_www, Produkty.stan_magazynu, Produkty.grupa AS Expr1 FROM Produkty INNER JOIN Grupy ON Produkty.grupa = Grupy.idGrupy" UpdateCommand="UPDATE [Produkty] SET [nazwa] = @nazwa, [grupa] = @grupa, [cena] = @cena, [opis] = @opis, [adres_www] = @adres_www, [stan_magazynu] = @stan_magazynu WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="nazwa" Type="String" />
                <asp:Parameter Name="grupa" Type="Int32" />
                <asp:Parameter Name="cena" Type="Decimal" />
                <asp:Parameter Name="opis" Type="String" />
                <asp:Parameter Name="adres_www" Type="String" />
                <asp:Parameter Name="stan_magazynu" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="nazwa" Type="String" />
                <asp:Parameter Name="grupa" Type="Int32" />
                <asp:Parameter Name="cena" Type="Decimal" />
                <asp:Parameter Name="opis" Type="String" />
                <asp:Parameter Name="adres_www" Type="String" />
                <asp:Parameter Name="stan_magazynu" Type="Int32" />
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="Id" DataSourceID="SqlDataSource2" AllowPaging="True" CssClass="auto-style2">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" Visible="False" />
                <asp:BoundField DataField="nazwa" HeaderText="nazwa" SortExpression="nazwa" />
                <asp:BoundField DataField="Grupa" HeaderText="Grupa" SortExpression="Grupa" />
                <asp:BoundField DataField="cena" HeaderText="cena" SortExpression="cena" />
                <asp:BoundField DataField="opis" HeaderText="opis" SortExpression="opis" />
                <asp:BoundField DataField="adres_www" HeaderText="adres_www" SortExpression="adres_www" />
                <asp:BoundField DataField="stan_magazynu" HeaderText="stan_magazynu" SortExpression="stan_magazynu" >
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="Expr1" HeaderText="Expr1" SortExpression="Expr1" Visible="False" />
                <asp:CommandField ShowDeleteButton="false" ShowSelectButton="True" />
                <asp:TemplateField ShowHeader="False">
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Delete" Text="Usuń" OnClientClick="return confirm('Jesteś pewny?');"></asp:LinkButton>
                    </ItemTemplate>
                    <ControlStyle ForeColor="Red" />
                </asp:TemplateField>
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
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Produkty] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Produkty] ([nazwa], [grupa], [cena], [opis], [adres_www], [stan_magazynu]) VALUES (@nazwa, @grupa, @cena, @opis, @adres_www, @stan_magazynu)" SelectCommand="SELECT * FROM [Produkty]" UpdateCommand="UPDATE [Produkty] SET [nazwa] = @nazwa, [grupa] = @grupa, [cena] = @cena, [opis] = @opis, [adres_www] = @adres_www, [stan_magazynu] = @stan_magazynu WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="nazwa" Type="String" />
                <asp:Parameter Name="grupa" Type="Int32" />
                <asp:Parameter Name="cena" Type="Decimal" />
                <asp:Parameter Name="opis" Type="String" />
                <asp:Parameter Name="adres_www" Type="String" />
                <asp:Parameter Name="stan_magazynu" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="nazwa" Type="String" />
                <asp:Parameter Name="grupa" Type="Int32" />
                <asp:Parameter Name="cena" Type="Decimal" />
                <asp:Parameter Name="opis" Type="String" />
                <asp:Parameter Name="adres_www" Type="String" />
                <asp:Parameter Name="stan_magazynu" Type="Int32" />
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
         <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Produkty] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Produkty] ([nazwa], [grupa], [cena], [opis], [adres_www], [stan_magazynu]) VALUES (@nazwa, @grupa, @cena, @opis, @adres_www, @stan_magazynu)" SelectCommand="SELECT * FROM [Produkty] WHERE ([Id] = @Id)" UpdateCommand="UPDATE [Produkty] SET [nazwa] = @nazwa, [grupa] = @grupa, [cena] = @cena, [opis] = @opis, [adres_www] = @adres_www, [stan_magazynu] = @stan_magazynu WHERE [Id] = @Id">
             <DeleteParameters>
                 <asp:Parameter Name="Id" Type="Int32" />
             </DeleteParameters>
             <InsertParameters>
                 <asp:Parameter Name="nazwa" Type="String" />
                 <asp:Parameter Name="grupa" Type="Int32" />
                 <asp:Parameter Name="cena" Type="Decimal" />
                 <asp:Parameter Name="opis" Type="String" />
                 <asp:Parameter Name="adres_www" Type="String" />
                 <asp:Parameter Name="stan_magazynu" Type="Int32" />
             </InsertParameters>
             <SelectParameters>
                 <asp:ControlParameter ControlID="GridView2" Name="Id" PropertyName="SelectedValue" Type="Int32" />
             </SelectParameters>
             <UpdateParameters>
                 <asp:Parameter Name="nazwa" Type="String" />
                 <asp:Parameter Name="grupa" Type="Int32" />
                 <asp:Parameter Name="cena" Type="Decimal" />
                 <asp:Parameter Name="opis" Type="String" />
                 <asp:Parameter Name="adres_www" Type="String" />
                 <asp:Parameter Name="stan_magazynu" Type="Int32" />
                 <asp:Parameter Name="Id" Type="Int32" />
             </UpdateParameters>
        </asp:SqlDataSource>
         <br />
        <asp:FormView ID="FormView2" runat="server" BackColor="Silver" DataKeyNames="Id" DataSourceID="SqlDataSource3" Font-Bold="True" OnItemInserted="update" Height="21px" Width="40px">
            <EditItemTemplate>
                Id:
                <asp:Label ID="IdLabel1" runat="server" Text='<%# Eval("Id") %>' />
                <br />
                nazwa:
                <asp:TextBox ID="nazwaTextBox" runat="server" Text='<%# Bind("nazwa") %>' />
                <br />
                grupa:
                <asp:TextBox ID="grupaTextBox" runat="server" Text='<%# Bind("grupa") %>' />
                <br />
                cena:
                <asp:TextBox ID="cenaTextBox" runat="server" Text='<%# Bind("cena") %>' />
                <br />
                opis:
                <asp:TextBox ID="opisTextBox" runat="server" Text='<%# Bind("opis") %>' />
                <br />
                adres_www:
                <asp:TextBox ID="adres_wwwTextBox" runat="server" Text='<%# Bind("adres_www") %>' />
                <br />
                stan_magazynu:
                <asp:TextBox ID="stan_magazynuTextBox" runat="server" Text='<%# Bind("stan_magazynu") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Aktualizuj" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Anuluj" />
            </EditItemTemplate>
            <InsertItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td>nazwa: </td>
                        <td>
                            <asp:TextBox ID="nazwaTextBox" runat="server" Text='<%# Bind("nazwa") %>' Width="137px" EnableTheming="True" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3">grupa: </td>
                        <td class="auto-style3">
                            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Grupa" DataValueField="idGrupy" Height="18px" SelectedValue='<%# Bind("grupa") %>' Width="142px">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td>cena: </td>
                        <td>
                            <asp:TextBox ID="cenaTextBox" runat="server" Text='<%# Bind("cena") %>' Width="136px" />
                            
                        </td>
                    </tr>
                    <tr>
                        <td>opis: </td>
                        <td>
                            <asp:TextBox ID="opisTextBox" runat="server" Text='<%# Bind("opis") %>' Width="137px" />
                        </td>
                    </tr>
                    <tr>
                        <td>adres_www: </td>
                        <td>
                            <asp:TextBox ID="adres_wwwTextBox" runat="server" Height="16px" Text='<%# Bind("adres_www") %>' Width="137px" />
                        </td>
                    </tr>
                    <tr>
                        <td>stan_magazynu: </td>
                        <td>
                            <asp:TextBox ID="stan_magazynuTextBox" runat="server" Height="16px" Text='<%# Bind("stan_magazynu") %>' Width="137px" />
                        </td>
                    </tr>
                </table>
                <br />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Wstaw" />

                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Anuluj" />
            </InsertItemTemplate>
            <ItemTemplate>
                <asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="Nowy" />
                <br />
                

            </ItemTemplate>
        </asp:FormView>


        &nbsp;<asp:FormView ID="FormView3" runat="server" BackColor="Silver" DataKeyNames="Id" DataSourceID="SqlDataSource4" Font-Bold="True" OnItemUpdated="update">
            <EditItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>nazwa: </td>
                        <td>
                            <asp:TextBox ID="nazwaTextBox" runat="server" Text='<%# Bind("nazwa") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td>grupa: </td>
                        <td>
                            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Grupa" DataValueField="idGrupy" Height="18px" SelectedValue='<%# Bind("grupa") %>' Width="142px">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td>cena: </td>
                        <td>
                            <asp:TextBox ID="cenaTextBox" runat="server" Text='<%# Bind("cena") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td>opis: </td>
                        <td>
                            <asp:TextBox ID="opisTextBox" runat="server" Text='<%# Bind("opis") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td>adres_www: </td>
                        <td>
                            <asp:TextBox ID="adres_wwwTextBox" runat="server" Text='<%# Bind("adres_www") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td>stan_magazynu: </td>
                        <td>
                            <asp:TextBox ID="stan_magazynuTextBox" runat="server" Text='<%# Bind("stan_magazynu") %>' />
                        </td>
                    </tr>
                </table>
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Aktualizuj" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" OnClick="reset" Text="Anuluj" />
            </EditItemTemplate>
            <InsertItemTemplate>
                nazwa:
                <asp:TextBox ID="nazwaTextBox" runat="server" Text='<%# Bind("nazwa") %>' />
                <br />
                grupa:
                <asp:TextBox ID="grupaTextBox" runat="server" Text='<%# Bind("grupa") %>' />
                <br />
                cena:
                <asp:TextBox ID="cenaTextBox" runat="server" Text='<%# Bind("cena") %>' />
                <br />
                opis:
                <asp:TextBox ID="opisTextBox" runat="server" Text='<%# Bind("opis") %>' />
                <br />
                adres_www:
                <asp:TextBox ID="adres_wwwTextBox" runat="server" Text='<%# Bind("adres_www") %>' />
                <br />
                stan_magazynu:
                <asp:TextBox ID="stan_magazynuTextBox" runat="server" Text='<%# Bind("stan_magazynu") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Wstaw" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Anuluj" />
            </InsertItemTemplate>
            <ItemTemplate>
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edytuj" />
                &nbsp;&nbsp;
            </ItemTemplate>
        </asp:FormView>


        <br />
        <br />
        <br />


        <br />
        <br />
        <hr />

            <asp:HyperLink ID="HyperLink1" runat="server" href="default.aspx">Strona główna</asp:HyperLink>
            <p>Autor:Miłosz Ćwiertniewicz </p>
    </form>
</body>
</html>
