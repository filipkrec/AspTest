<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Page.aspx.cs" Inherits="WebMarketing.Page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home</title>
    <link rel="stylesheet" type="text/css" href="style.css" />
</head>
<body>
    <form id="form1" runat="server">
        <header>
            <asp:Button ID="Button2" runat="server" Height="30px" Text="LOGINS" BorderStyle="None" BackColor="White" ForeColor="#0066CC" Font-Bold="True"
                Style="margin-top: 15px; margin-left: 20px" OnClick="Logins"/>
        </header>
        <section class="content">
            
            <asp:Table runat="server" HorizontalAlign="Center" Width="385px" Height="55px" BackColor="White" ForeColor="Blue">
                <asp:TableRow>
                    <asp:TableCell Width="75px">

                    </asp:TableCell>
                    <asp:TableCell runat="server" Font-Bold="True" VerticalAlign="Bottom">Korisnici</asp:TableCell>
                </asp:TableRow>
            </asp:Table>
            
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1"
                BackColor ="White" HorizontalAlign="Center" Width="385px" ShowHeaderWhenEmpty="True" 
                cellpadding="5" onrowcommand="rowCommand" DataKeyNames="Id" GridLines="Horizontal" BorderColor="White" 
                BorderStyle="Solid" BorderWidth="5px">
                <Columns>
                    <asp:BoundField DataField="Ime" HeaderText="Ime" >
                    <HeaderStyle Height="55px" Width="20%"/>
                    <ItemStyle HorizontalAlign="Center" Width="20%"></ItemStyle>
                    </asp:BoundField>
                    <asp:BoundField DataField="Prezime" HeaderText="Prezime">
                    <ItemStyle HorizontalAlign="Center" Width="20%"></ItemStyle>
                    </asp:BoundField>
                    <asp:BoundField DataField="LoginsCount" HeaderText="Broj logiranja" NullDisplayText="0" >
                    <ItemStyle HorizontalAlign="Center" Width="20%"></ItemStyle>
                    </asp:BoundField>
                    <asp:ButtonField HeaderText="Ispravi" Text="Ispravi" CommandName="Ispravi" >
                    <ItemStyle HorizontalAlign="Center" Width="20%" />
                    </asp:ButtonField>
                    <asp:ButtonField HeaderText="Obriši" Text="Obriši" CommandName="Obrisi" >
                    <ItemStyle HorizontalAlign="Center" Width="20%" />
                    </asp:ButtonField>
                </Columns>
                <HeaderStyle BorderColor="LightGray" />
                <RowStyle CssClass="grid" BorderColor="LightGray" />
            </asp:GridView>

            <asp:Table runat="server" HorizontalAlign="Center" Width="385px" Height="55px" BackColor="White" ForeColor="Blue"
                Style="border-top:solid white 1px;">
                <asp:TableRow>
                    <asp:TableCell Width="75px">

                    </asp:TableCell>
                    <asp:TableCell runat="server" Font-Underlined="True" VerticalAlign="Top">
                        <asp:LinkButton runat="server" OnClick="Dodaj_novog_show">Dodaj novog korisnika</asp:LinkButton></asp:TableCell>
                </asp:TableRow>
            </asp:Table>

            <br />
            <br />
            <br />

            <asp:Table ID="Table2" runat="server" BackColor="White" HorizontalAlign="Center" CellPadding="5" ForeColor="Black" Width="385px" Visible="false">
                <asp:TableRow runat="server" Height="55px" TableSection="TableHeader" Width="75px">
                    <asp:TableCell runat="server" Width="75px" Font-Size="Larger"></asp:TableCell><asp:TableCell runat="server" Width="225px" ColumnSpan="3" Font-Bold="True" HorizontalAlign="Left" VerticalAlign="Bottom" CssClass="korisnici">Unesite novog korisnika:</asp:TableCell><asp:TableCell runat="server" Width="75px"></asp:TableCell></asp:TableRow><asp:TableRow runat="server">
                    <asp:TableCell runat="server" HorizontalAlign="Right" Width="75px">Ime</asp:TableCell><asp:TableCell runat="server" ColumnSpan="4" Width="300px" HorizontalAlign="Left" VerticalAlign="Middle">
                        <asp:TextBox ID="TextBoxIme" runat="server" Width="200px" CssClass="TextBox"></asp:TextBox>

                    </asp:TableCell></asp:TableRow><asp:TableRow runat="server">
                    <asp:TableCell runat="server" HorizontalAlign="Right" Width="75px">Prezime</asp:TableCell><asp:TableCell runat="server" ColumnSpan="4" Width="300px" HorizontalAlign="Left" VerticalAlign="Middle">
                        <asp:TextBox ID="TextBoxPrezime" runat="server" Width="200px" CssClass="TextBox"></asp:TextBox>

                    </asp:TableCell></asp:TableRow><asp:TableRow runat="server">
                    <asp:TableCell runat="server" HorizontalAlign="Right" Width="75px">Login</asp:TableCell><asp:TableCell runat="server" ColumnSpan="4" Width="300px" HorizontalAlign="Left" VerticalAlign="Middle">
                        <asp:TextBox ID="TextBoxLogin" runat="server" Width="200px" CssClass="TextBox"></asp:TextBox>

                    </asp:TableCell></asp:TableRow><asp:TableRow runat="server">
                    <asp:TableCell runat="server" HorizontalAlign="Right" Width="75px">Lozinka</asp:TableCell><asp:TableCell runat="server" ColumnSpan="4" Width="300px" HorizontalAlign="Left" VerticalAlign="Middle">
                        <asp:TextBox ID="TextBoxLozinka" runat="server" Width="200px" CssClass="TextBox" TextMode="Password"></asp:TextBox>

                    </asp:TableCell>

                    </asp:TableRow><asp:TableRow runat="server" Height="50px" TableSection="TableFooter">
                    <asp:TableCell runat="server" HorizontalAlign="Right" Width="75px"></asp:TableCell>
                        <asp:TableCell runat="server" ColumnSpan="4" Width="300px" HorizontalAlign="Left" VerticalAlign="Middle" Style="padding:2px;">

                        <asp:Button ID="ButtonKreiraj" runat="server" BackColor="Blue" BorderStyle="None" ForeColor="White" Text="Kreiraj novog korisnika" Font-Size="12px" Height="25px" OnClick="Kreiraj_korisnika" Style="padding-left:5px;text-align:center;" />
                        &nbsp
                      <asp:Button ID="ButtonOdustani" runat="server" BackColor="Blue" BorderStyle="None" ForeColor="White" Text="Odustani" Width="60px" Font-Size="12px" Height="25px" Onclick="Odustani" Style="padding:5px;text-align:center;"/>


                    </asp:TableCell></asp:TableRow></asp:Table></section>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbconnect %>" SelectCommand="SELECT * FROM [Table] LEFT JOIN LoginsCount ON [Table].Id = LoginsCount.UserID"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:dbconnect %>" SelectCommand="SELECT * FROM [Table]"></asp:SqlDataSource>
    </form></body></html>