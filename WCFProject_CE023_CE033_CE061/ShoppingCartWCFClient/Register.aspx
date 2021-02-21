<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="ShoppingCartWCFClient.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <style>
        .button{width:120px; padding:7px; background-color:black;color:White; font-family:Verdana; font-size:16px; margin-right:1px; margin-top:2px; text-decoration:none;}  
      .button:hover{background-color:silver;}  
    </style>
</head>
<body style="font-family: Arial, Helvetica, sans-serif; font-size: small">
    <form id="form1" runat="server">

    <div style="margin-top:150px; margin-left:500px;width:500px; margin-right:auto; border:2px solid black" >

        <h3 style="font-size: medium; font-size:25px"><b>Register a new user</b></h3>

        <p>
            <asp:Literal runat="server" ID="StatusMessage" />
        </p>                
        <div style="margin-bottom:10px"  >
            <asp:Label runat="server" style="font-size:20px" for="UserName" AssociatedControlID="UserName">User name</asp:Label>
            <div>
                <asp:TextBox runat="server" class="form-control"   ID="UserName"/>       
            </div>
        </div>
        <div style="margin-bottom:10px" >
            <asp:Label runat="server" style="font-size:20px;"  AssociatedControlID="Password">Password</asp:Label>
            <div>
                <asp:TextBox runat="server" ID="Password" class="form-control"  TextMode="Password" />                
            </div>
        </div>
        <div style="margin-bottom:10px " >
            <asp:Label runat="server" style="font-size:20px"  AssociatedControlID="ConfirmPassword">Confirm password</asp:Label>
            <div>
                <asp:TextBox runat="server" ID="ConfirmPassword" class="form-control"  TextMode="Password" />                
            </div>
        </div>

        <table runat="server">
            <tr>
                <td> <asp:Button runat="server" class="button" OnClick="CreateUser_Click" Text="Register" /></td>
                <td> <asp:Button runat="server" class="button" OnClick="login" Text="Login" /></td>
            </tr>
        </table>
        <div>
            <div>
               
            </div>
        </div>
    </div>
    </form>
</body>
</html>