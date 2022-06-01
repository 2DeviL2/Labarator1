<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication8.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" href="StyleSheetForWebForm1.css" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="login" runat="server" Text="login"></asp:Label>
            <asp:TextBox ID="textLogin" runat="server"></asp:TextBox>
        </div>
        <asp:Label ID="password" runat="server" Text="password"></asp:Label>
        <asp:TextBox ID="textPassword" runat="server" MaxLength="14" ></asp:TextBox>
        <p>
            <asp:Button ID="SubmitPasswordLogin" runat="server" Text="Submit" OnClick="SubmitPasswordLogin_Click" />
        </p>
        <p>
            <asp:Label ID="wrongLoginOrPassword" runat="server" Text="Логин или пароль введены не правильно" 
                Visible="false"></asp:Label>
        </p>
        <p></p>
        <p>
            <asp:TextBox ID="text" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:ListBox ID="list" runat="server">
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>3</asp:ListItem>
            </asp:ListBox>
        </p>
        <p>
            <asp:DropDownList AppendDataBoundItems="true" ID="dropDownList" runat="server">
                <asp:ListItem Value="4">4</asp:ListItem>
                <asp:ListItem>5</asp:ListItem>
                <asp:ListItem>6</asp:ListItem>
            </asp:DropDownList>
        </p>
        <p>
            <asp:RadioButtonList AppendDataBoundItems="true" ID="radioButtonList" runat="server">
                <asp:ListItem Value="7">7</asp:ListItem>
                <asp:ListItem>8</asp:ListItem>
                <asp:ListItem>9</asp:ListItem>
            </asp:RadioButtonList>
        </p>
        <asp:Button ID="SubmitData" runat="server" Text="SubmitData" OnClick="SubmitData_Click" />
        <p>
            <asp:Label ID="labelData" runat="server" Text="" Visible="false"></asp:Label>
        </p>

        <asp:Label ID="labeDataClear" runat="server" Text="" Visible="false"></asp:Label>

    </form>
</body>
</html>

