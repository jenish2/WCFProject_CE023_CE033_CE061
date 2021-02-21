<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ShoppingCartWCFClient.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title>Cart Login</title>
    <style type="text/css">
        .auto-style1 {
            margin-bottom: 0px;
        }
     .button{width:120px; padding:7px; background-color:black;color:White; font-family:Verdana; font-size:16px; margin-right:1px; margin-top:2px; text-decoration:none;}  
      .button:hover{background-color:silver;}  
    </style>
     <link href="Content/bootstrap.min.css" rel="stylesheet" />
</head>
<body style="font-family: Arial, Helvetica, sans-serif; font-size: small">
   <form id="form1" runat="server">
      <div style="margin-top:150px; margin-left:500px;width:500px; margin-right:auto; border:2px solid black" >
         <h3 style="font-size: medium"><b>Log In</b></h3>
      
         <asp:PlaceHolder runat="server" ID="LoginStatus" Visible="false">
            <p>
               <asp:Literal runat="server" ID="StatusText" />
            </p>
         </asp:PlaceHolder>
         <asp:PlaceHolder runat="server" ID="LoginForm" Visible="false">
            <div style="margin-bottom: 10px">
               <asp:Label runat="server"  style="font-size:20px"  AssociatedControlID="UserName">User name</asp:Label>
               <div>
                  <asp:TextBox runat="server" class="form-control"  ID="UserName" />
               </div>
            </div>
            <div style="margin-bottom: 10px">
               <asp:Label runat="server"  style="font-size:20px"  AssociatedControlID="Password">Password</asp:Label>
               <div>
                  <asp:TextBox runat="server" class="form-control"  ID="Password" TextMode="Password" />
               </div>
            </div>
           <table runat="server">
               <tr>
                   <td><asp:Button runat="server" class="button"  OnClick="SignIn" Text="Log in" /></td>
                   <td><asp:Button runat="server" class="button" OnClick="Register" Text="Register" /></td>
               </tr>
           </table>
             </asp:PlaceHolder>
       
         <asp:PlaceHolder runat="server" ID="LogoutButton" Visible="false">
            <div>
               <div>
                  <asp:Button runat="server"  OnClick="SignOut" Text="Log out" />
               </div>
            </div>
         </asp:PlaceHolder>
      </div>
   </form>
</body>
</html>