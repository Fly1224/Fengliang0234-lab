<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CurrencyConverter.aspx.cs" Inherits="LabAss6.CurrencyConverter" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table >
                <tr><td>
                        Convert:<asp:TextBox ID="txtYuan" runat="server" OnTextChanged="TextBox1_TextChanged" Width="80px"></asp:TextBox>Chinese Yuan to Dollars.
                    </td> </tr>

                    <tr> <td>
                        <asp:Button ID="Button1" runat="server" Text="OK" OnClick="Button1_Click" />
                    </td></tr>

                    <tr><td>
                        <asp:Label ID="lblY" runat="server" Text=""></asp:Label>
                        Chinese Yuan=<asp:Label ID="lblD" runat="server" Text=""></asp:Label>Dollar.
                    </td></tr>
            </table>
        </div>
    </form>
</body>
</html>
