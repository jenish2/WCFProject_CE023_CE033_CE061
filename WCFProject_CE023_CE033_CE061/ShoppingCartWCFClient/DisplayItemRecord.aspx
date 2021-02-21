<%@ Page Language="C#"  AutoEventWireup="true"  CodeBehind="DisplayItemRecord.aspx.cs" Inherits="ShoppingCartWCFClient.DisplayItemRecord" %>

<!DOCTYPE html>
  
<html xmlns="http://www.w3.org/1999/xhtml">  
<head runat="server">  
    <title></title>  
 
    <style>  
       body{width:100%; background-color:silver;}  
      .page-wrapper{width:100%; background-color:silver; padding:0px; height:auto; overflow:hidden;}  
      .header{height:50px; width:99%; padding:1% ; padding-left:500px; background-color:#000000; color:White; font-family:Segoe UI; font-size:40px;}
        .header1{height:40px; width:99%; padding:1% ; padding-left:500px; background-color:silver; color:black; font-family:Segoe UI; font-size:30px;}  
      .menu{height:30px; width:99%; padding:1%; background-color:White; color:White; font-family:Segoe UI; font-size:14px; clear:both; float:left; text-align:left;}  
      .footer{height:30px; width:99%; padding:1%; background-color:Black; color:White; font-family:Segoe UI; font-size:12px; text-align:left; vertical-align:bottom; clear:both;}  
      .button{width:110px; height:30px; border-style:none; background-color:Green; font-family:Verdana; font-size:15px; color:White;}  
      .button:hover{background-color:Black;}  
      .textBox{width:400px; background-color:White; border:1px Solid Navy; padding:5px; color:Black; font-family:Segoe UI; }  
      .linkbutton{width:120px; padding:7px; background-color:black;color:White; font-family:Verdana; font-size:16px; margin-right:1px; margin-top:2px; text-decoration:none;}  
      .linkbutton:hover{background-color:#212121;}  
    </style>  
</head>  
<body>  
    <form id="form2" runat="server">  
    
    <div class="page-wrapper">  
    <div class="header">  
           Shopping Cart System 
    </div>  

        <div class="header1">  
          Display ItemList Page
    </div> 

    <table>  
    <tr>  
      
    <td><a href="AddItem.aspx" class="linkbutton" >Add New</a></td>  
    <td><a href="UpdateItem.aspx" class="linkbutton" >Update</a></td>  
    <td><a href="DeleteItem.aspx" class="linkbutton" >Delete</a></td>  
    <td><a href="DisplayItemRecord.aspx" class="linkbutton" >Display</a></td>  
                 <td><a href="Login.aspx" class="linkbutton" >Logout</a></td>  
    </tr>  
    </table>  
            
    </div>  
      
        <div>
            <br />
                <asp:GridView ID="grdcart" runat="server" style="width:100%">  
        <AlternatingRowStyle BackColor="White" />  
        <HeaderStyle BackColor="black" Font-Bold="True" ForeColor="White" />  
    </asp:GridView>  
        </div>

        <div class="footer">  
    By Shopping Cart System 2021  
        </div>  
    
 
    </form>  
</body>  
</html>  

    
   

