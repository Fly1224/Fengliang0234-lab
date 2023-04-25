<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Welcome.aspx.cs" Inherits="LabAss5.Welcome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Welcome <%Response.Write(Session["UserName"].ToString()); %></h1>
            <br />
            <asp:Button ID="Button1" runat="server" Text="Logout" OnCilck="Button1_Click" OnClick="Button1_Click" />
        </div>
    </form>
   
</body>
</html>
