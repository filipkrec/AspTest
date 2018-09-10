<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Logins.aspx.cs" Inherits="WebMarketing.Logins" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Logins</title>
    <link rel="stylesheet" type="text/css" href="style.css" />
</head>
<body>
    <form id="form1" runat="server">
        <header>
            <asp:Button ID="Button2" runat="server" Height="30px" Text="POPIS KORISNIKA" BorderStyle="None" BackColor="White" ForeColor="#0066CC" Font-Bold="True"
                Style="margin-top: 15px; margin-left: 20px" OnClick="PageSwitch" CssClass=""/>
        </header>
        <section class="content">

            <asp:Table runat="server" HorizontalAlign="Center" Width="385px" Height="55px" BackColor="White" ForeColor="Blue">
                <asp:TableRow>
                    <asp:TableCell Width="75px">

                    </asp:TableCell>
                    <asp:TableCell runat="server" Font-Bold="True" VerticalAlign="Bottom">Povijest logiranja:</asp:TableCell>
                </asp:TableRow>
            </asp:Table>

            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1"
                BackColor="White" HorizontalAlign="Center" Width="385px" ShowHeaderWhenEmpty="True" GridLines="Horizontal" BorderColor="White" 
                BorderStyle="Solid" BorderWidth="5px"
                CellPadding="5">
                <Columns>
                    <asp:BoundField DataField="Ime" HeaderText="Ime" SortExpression="Ime">
                        <ItemStyle HorizontalAlign="Center" Width="20%" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Prezime" HeaderText="Prezime" SortExpression="Prezime">
                        <ItemStyle HorizontalAlign="Center" Width="20%" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Vrijeme" HeaderText="Vrijeme" SortExpression="Login">
                        <ItemStyle HorizontalAlign="Center" Width="40%" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Browser" HeaderText="Browser" SortExpression="Lozinka">
                        <ItemStyle HorizontalAlign="Center" Width="20%" />
                    </asp:BoundField>
                </Columns>
                <HeaderStyle BorderColor="LightGray" />
                <RowStyle CssClass="grid" BorderColor="LightGray" Font-Size="12px" />
            </asp:GridView>

            <asp:Table runat="server" HorizontalAlign="Center" Width="385px" Height="55px" BackColor="White" ForeColor="Blue"
                Style="border-top: solid white 1px;">
                <asp:TableRow>
                    <asp:TableCell/>
                </asp:TableRow>
            </asp:Table>

            <br />
            <br />
            <br />

            &nbsp;&nbsp;&nbsp;

            <asp:Table ID="Table2" runat="server" BackColor="White" HorizontalAlign="Center" CellPadding="5" ForeColor="Black" Width="385px">
                <asp:TableRow runat="server" Height="25px" TableSection="TableHeader" Width="75px"><asp:TableCell></asp:TableCell></asp:TableRow>                
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server" HorizontalAlign="Right" Width="75px">Login</asp:TableCell><asp:TableCell runat="server" ColumnSpan="4" Width="300px" HorizontalAlign="Left" VerticalAlign="Middle">
                        <asp:TextBox ID="TextBoxLogin" runat="server" Width="200px" CssClass="TextBox"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server" HorizontalAlign="Right" Width="75px">Lozinka</asp:TableCell><asp:TableCell runat="server" ColumnSpan="4" Width="300px" HorizontalAlign="Left" VerticalAlign="Middle">
                        <asp:TextBox ID="TextBoxPassword" runat="server" Width="200px" CssClass="TextBox" TextMode="Password"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>               
                <asp:TableRow runat="server" Height="50px" TableSection="TableFooter">
                    <asp:TableCell runat="server" HorizontalAlign="Right" Width="75px">
                        <asp:LinkButton runat="server" ForeColor="Black" OnClick="Test_Login">Test Login</asp:LinkButton></asp:TableCell>
                    <asp:TableCell runat="server" ColumnSpan="3" Width="300px"></asp:TableCell>
                </asp:TableRow>
            </asp:Table>
        </section>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbconnect %>" SelectCommand="SELECT * FROM Logins LEFT JOIN [Table] ON Logins.UserID = [Table].Id "></asp:SqlDataSource>
    </form>
</body>
</html>
