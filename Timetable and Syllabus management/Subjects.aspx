<%@ Page Title="" Language="C#" MasterPageFile="~/Adminmaster.master" AutoEventWireup="true" CodeFile="Subjects.aspx.cs" Inherits="Subjects" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style4 {
            width: 98px;
        }
        .DD{
             border:3px solid #7d6754;
    border-radius:8px;
    font-size:small;
    padding:5px;
        }
        .TextB{
             border:3px solid #7d6754;
    border-radius:8px;
    font-size:small;
    padding:5px;
        }
        .button1{
             background-color: #8099b8;
     text-shadow:#375cba;
     margin-left: 400px;
   
	border-radius: 10px;
	color:#ffffff;
	font-family: 'Pacifico', cursive;
    text-align:center;
    	font-size: 20px;
        }
         .button2{
             background-color: #8099b8;
     text-shadow:#375cba;
     margin-left: 120px;
   
	border-radius: 10px;
	color:#ffffff;
	font-family: 'Pacifico', cursive;
    text-align:center;
    	font-size: 20px;
        }
          .button3{
             background-color: #8099b8;
     text-shadow:#375cba;
     margin-left: 120px;
   
	border-radius: 10px;
	color:#ffffff;
	font-family: 'Pacifico', cursive;
    text-align:center;
    	font-size: 20px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    
    <table align="center" >
        <tr>
            <td class="auto-style4">    <asp:Label ID = "lbyear" Text = "Year:" runat = "server"></asp:Label></td>
            <td> <asp:DropDownList ID = "ddyear" CssClass="DD" runat = "server" AutoPostBack="True">
        <asp:ListItem Value="1">Select Year</asp:ListItem>
        <asp:ListItem>First</asp:ListItem>
        <asp:ListItem>Second</asp:ListItem>
        <asp:ListItem>Third</asp:ListItem>
        <asp:ListItem>Fourth</asp:ListItem>
    </asp:DropDownList>
                <asp:RequiredFieldValidator ID="yr_val" runat="server" ControlToValidate="ddyear" Display="Dynamic" ErrorMessage="Field Required!" InitialValue="1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style4"><asp:Label ID = "lbsem" Text = "Semester:" runat = "server"></asp:Label></td>
            <td>  <asp:DropDownList ID = "ddsem" CssClass="DD" runat = "server" AutoPostBack="True">
        <asp:ListItem Value="7">Select Sem</asp:ListItem>
        <asp:ListItem>YearlyPattern</asp:ListItem>
        <asp:ListItem>1</asp:ListItem>
        <asp:ListItem>2</asp:ListItem>
    </asp:DropDownList>
                <asp:RequiredFieldValidator ID="sem_val" runat="server" ControlToValidate="ddsem" Display="Dynamic" ErrorMessage="Field Required!" InitialValue="7"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">    <asp:Label ID = "lbbranch" Text = "Branch:" runat = "server"></asp:Label></td>
            <td><asp:DropDownList ID = "ddbranch" CssClass="DD" runat = "server" AutoPostBack="True">
        <asp:ListItem Value="9">Select Branch</asp:ListItem>
                <asp:ListItem>ALL</asp:ListItem>
        <asp:ListItem>CSE</asp:ListItem>
        <asp:ListItem>ECE</asp:ListItem>
        <asp:ListItem>IT</asp:ListItem>
        <asp:ListItem>EIE</asp:ListItem>
    </asp:DropDownList>
                <asp:RequiredFieldValidator ID="br_val" runat="server" ControlToValidate="ddbranch" Display="Dynamic" ErrorMessage="Field Required!" InitialValue="9"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">    <asp:Label ID = "lbsubn" Text = "Subject Name:" runat = "server"></asp:Label></td>
            <td>    
                <asp:TextBox ID="SubName" CssClass="TextB" PlaceHolder = "Enter Subject Name" runat="server" AutoPostBack = "true"></asp:TextBox>
                <asp:RequiredFieldValidator ID="nm_val" runat="server" ControlToValidate="SubName" Display="Dynamic" ErrorMessage="Field Required!"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">    <asp:Label ID = "lbsubc" Text = "Subject Code:" runat = "server"></asp:Label>
</td>
            <td>    <asp:TextBox ID = "SubCode" CssClass="TextB" PlaceHolder = "Enter subject code" runat = "server" AutoPostBack = "true"></asp:TextBox>
                <asp:RequiredFieldValidator ID="cd_val" runat="server" ControlToValidate="SubCode" Display="Dynamic" ErrorMessage="Field Required!"></asp:RequiredFieldValidator>
</td>
        </tr>
         
    </table>
    <br /><br />
   <asp:Button ID = "sin" CssClass="button1" Text = "Add" runat = "server" OnClick="sin_Click" Width="100px"/>
</asp:Content>

