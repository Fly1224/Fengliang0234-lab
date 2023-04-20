<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShowTabularDataBound.aspx.cs" Inherits="LabAss4.ShowTabularDataBound" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div><h1>GridView</h1>
            <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" DataKeyNames="UserName">
                <Columns>
                    <asp:BoundField DataField="UserName" HeaderText="UserName" ReadOnly="True" SortExpression="UserName"></asp:BoundField>
                    <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password"></asp:BoundField>
                </Columns>
            </asp:GridView>
        </div>

        <div><h1>DataList</h1>
            <asp:DataList ID="DataList1" runat="server" DataKeyField="UserName" DataSourceID="SqlDataSource1">
                <ItemTemplate>
                    UserName:
                    <asp:Label Text='<%# Eval("UserName") %>' runat="server" ID="UserNameLabel" /><br />
                    Password:
                    <asp:Label Text='<%# Eval("Password") %>' runat="server" ID="PasswordLabel" /><br />
                    <br />
                </ItemTemplate>
            </asp:DataList>
        </div>

        <div><h1>DetailsView</h1>
            <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" AutoGenerateRows="False" DataKeyNames="UserName" DataSourceID="SqlDataSource1">
                <Fields>
                    <asp:BoundField DataField="UserName" HeaderText="UserName" ReadOnly="True" SortExpression="UserName"></asp:BoundField>
                    <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password"></asp:BoundField>
                </Fields>
            </asp:DetailsView>
        </div>

        <div><h1>FormView</h1>
            <asp:FormView ID="FormView1" runat="server" DataKeyNames="UserName" DataSourceID="SqlDataSource1">
                <EditItemTemplate>
                    UserName:
                    <asp:Label Text='<%# Eval("UserName") %>' runat="server" ID="UserNameLabel1" /><br />
                    Password:
                    <asp:TextBox Text='<%# Bind("Password") %>' runat="server" ID="PasswordTextBox" /><br />
                    <asp:LinkButton runat="server" Text="更新" CommandName="Update" ID="UpdateButton" CausesValidation="True" />&nbsp;<asp:LinkButton runat="server" Text="取消" CommandName="Cancel" ID="UpdateCancelButton" CausesValidation="False" />
                </EditItemTemplate>
                <InsertItemTemplate>
                    UserName:
                    <asp:TextBox Text='<%# Bind("UserName") %>' runat="server" ID="UserNameTextBox" /><br />
                    Password:
                    <asp:TextBox Text='<%# Bind("Password") %>' runat="server" ID="PasswordTextBox" /><br />
                    <asp:LinkButton runat="server" Text="插入" CommandName="Insert" ID="InsertButton" CausesValidation="True" />&nbsp;<asp:LinkButton runat="server" Text="取消" CommandName="Cancel" ID="InsertCancelButton" CausesValidation="False" />
                </InsertItemTemplate>
                <ItemTemplate>
                    UserName:
                    <asp:Label Text='<%# Eval("UserName") %>' runat="server" ID="UserNameLabel" /><br />
                    Password:
                    <asp:Label Text='<%# Bind("Password") %>' runat="server" ID="PasswordLabel" /><br />

                </ItemTemplate>
            </asp:FormView>
        </div>

        <div><h1>Repeater</h1>
            <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                <ItemTemplate >
                    <%#Eval ("UserName") %>
                    <i>--></i>
                    <%#Eval ("Password") %>
                </ItemTemplate>
            </asp:Repeater>
        </div>

        <div><h1>ListView</h1>
            <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
                <ItemTemplate >
                    <%#Eval ("UserName") %>
                    <i>--></i>
                    <%#Eval ("Password") %>
                </ItemTemplate>
            </asp:ListView>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:loginConnectionString %>" SelectCommand="SELECT [UserName], [Password] FROM [Logon]"></asp:SqlDataSource>
    </form>
</body>
</html>
