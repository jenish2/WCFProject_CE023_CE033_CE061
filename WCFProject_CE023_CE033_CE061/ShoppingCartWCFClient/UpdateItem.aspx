<%@ Page Language="C#"  MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="UpdateItem.aspx.cs" Inherits="ShoppingCartWCFClient.UpdateItem" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">  
    <style type="text/css">
        .auto-style1 {
            height: 23px;
        }
    </style>
</asp:Content>  
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">  
  
<table id="panSearch" runat="server" style="width:100%; color:Black; font-family:Segoe UI; font-size:14px; float:right; text-align:left; padding:10px; padding-bottom:20px;" >  
<tr>
            <td colspan="2">  <div class="header1">  
          Display Update Item Page
    </div> </td>
        </tr>
<tr>  
<td style="margin-left:0">Enter Item ID</td>  
<td><asp:TextBox ID="txtSearch" runat="server" CssClass="textBox" Placeholder="Enter Item ID e.g 201" ></asp:TextBox></td>  
<td><asp:Button ID="btnSearch" runat="server" Text="Search" CssClass="button"   
        onclick="btnSearch_Click" ></asp:Button></td>  
</tr>  
<tr>  
  
<td colspan="3" ><asp:Label ID="lblSearchResult" runat="server" Font-Size="Medium" ></asp:Label></td></tr>  
</table>  
  
 <table id="panUpdate" runat="server" style="width:100%; color:Black; font-family:Segoe UI; font-size:14px; float:left; text-align:left;">  
<tr>  
<td colspan="2"><asp:Label ID="lblMsg" runat="server" Font-Size="Medium" ></asp:Label></td>  
</tr>  
<tr>  
<td class="auto-style1">Item ID</td>  
<td class="auto-style1"><asp:Label ID="lblID" runat="server" ></asp:Label></td>  
</tr>  
<tr>  
<td>Item Name </td>  
<td><asp:TextBox ID="txtname" runat="server" CssClass="textBox" ></asp:TextBox></td>  
</tr>  
<tr>  
<td>Description</td>  
<td><asp:TextBox ID="txtdesc" runat="server" CssClass="textBox" ></asp:TextBox></td>  
</tr>  
     <tr>  
<td>Price</td>  
<td><asp:TextBox ID="txtprice" runat="server" CssClass="textBox" ></asp:TextBox></td>  
</tr>
<tr>  
<td colspan="2">  
<asp:Button ID="bntUpdated" runat="server" Text="Update" CssClass="button" onclick="bntUpdated_Click"    
         />  
<asp:Button ID="btnCancel" runat="server" Text="Cancel" CssClass="button" onclick="btnCancel_Click"   
        />  
</td>  
</tr>  
</table>  
</asp:Content> 

