<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ads.aspx.cs" Inherits="LabAss6.Ads" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style2">Ads1
            <asp:AdRotator ID="AdRotator2" runat="server" KeywordFilter="ads1" AdvertisementFile="~/App_Data/AdListXMLFile2.xml" />
        </div>

        <div>
            <h2>This is my advertisement page</h2>
        </div>

        <div class="auto-style1">Ads2
            <asp:AdRotator ID="AdRotator1" runat="server" AdvertisementFile="~/App_Data/AdListXMLFile.xml" KeywordFilter="ads2" />
            
        </div>
    </form>
</body>
</html>
