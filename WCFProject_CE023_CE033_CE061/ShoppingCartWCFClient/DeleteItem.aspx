<%@ Page Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="DeleteItem.aspx.cs" Inherits="ShoppingCartWCFClient.DeleteItem" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">  
   
</asp:Content>  

            
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">  
    <table id="panSearch" runat="server" style="width:100%; color:Black; font-family:Segoe UI; font-size:14px; float:left; text-align:left; padding:10px; padding-bottom:20px;" >  
<tr>  
<td>Item ID</td>  
<td><asp:TextBox ID="txtSearch" runat="server" CssClass="textBox" Placeholder="Enter Item id to delete it" ></asp:TextBox></td>  
<td><asp:Button ID="btnDelete" runat="server" Text="Delete" CssClass="button" onclick="btnDelete_Click"   
        ></asp:Button></td>  
</tr>  

<tr>  
<td colspan="3" ><asp:Label ID="lblSearchResult" runat="server" Font-Size="Medium" ></asp:Label></td></tr>  
   
</table>  


        <asp:GridView ID="grdcart" runat="server" style="width:100%">  
        <AlternatingRowStyle BackColor="White" />  
        <HeaderStyle BackColor="black" Font-Bold="True" ForeColor="White" />  
    </asp:GridView>  


 
</asp:Content> 