<%@ Page Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="AddItem.aspx.cs" Inherits="ShoppingCartWCFClient.AddItem" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">  

</asp:Content>  
  
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">  
    <table style="width:100%; color:Black; font-family:Segoe UI; font-size:14px; float:left; text-align:left;">  
        <tr>
            <td colspan="2">  <div class="header1">  
          Display Add Item Page
    </div> </td>
        </tr>
<tr>  
<td colspan="2"><asp:Label ID="lblMsg" runat="server" Font-Size="Medium" ></asp:Label></td>  
</tr>  
<tr>  
<td> ID : </td>  
<td><asp:TextBox ID="ID" runat="server" CssClass="textBox" ></asp:TextBox></td>  
</tr>  
<tr>  
<td>Item Name :</td>  
<td><asp:TextBox ID="ItemName" runat="server" CssClass="textBox" ></asp:TextBox></td>  
</tr>  
<tr>  
<td>Description : </td>  
<td><asp:TextBox ID="Description" runat="server" CssClass="textBox" ></asp:TextBox></td>  
</tr>  
<tr>  
<td>Item Price :</td>  
<td><asp:TextBox ID="ItemPrice" runat="server" CssClass="textBox" ></asp:TextBox></td>  
</tr>  

<tr>
<td colspan="2">  
<asp:Button ID="btnSave" runat="server" Text="Save" CssClass="button"   
        onclick="btnSave_Click" />  
<asp:Button ID="bntReset" runat="server" Text="Reset" CssClass="button"   
        onclick="bntReset_Click" />  
</td>  
</tr>  

</table>  
</asp:Content>  