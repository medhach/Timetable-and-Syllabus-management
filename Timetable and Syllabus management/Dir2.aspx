<%@ Page Title="" Language="C#" MasterPageFile="~/Directormaster.master" AutoEventWireup="true" CodeFile="Dir2.aspx.cs" Inherits="Dir2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
       .Label1{
            font-size:x-large;
        }
       #FG{
            font-family:'Bookman Old Style';
    text-align:center;
    align-content:center;
    position:center;
    margin:10px auto 10px auto;
       }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
   <div id="FG">
     <h3>Faculty Name: <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
    </h3>
       <br />
    <asp:GridView ID="GridView1" align="center" runat="server" Height="156px" Width="300px"></asp:GridView>
       </div>
</asp:Content>

