<%@ Page Title="" Language="C#" MasterPageFile="~/Adminmaster.master" AutoEventWireup="true" CodeFile="FacManagement.aspx.cs" Inherits="FacManagement" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style4 {
            width: 109px;
        }
        .button1{
             background-color: #8099b8;
     text-shadow:#375cba;
     margin-left: 312px;
   
	border-radius: 10px;
	color:#ffffff;
	font-family: 'Pacifico', cursive;
    text-align:center;
    	font-size: 20px;
        z-index: 1;
        left: 373px;
        top: 543px;
        position: absolute;
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
          h3{
              text-align:center;
          }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h3> Add new Faculty or Edit present Faculty details.</h3>
    <br />
    <table align="center" >
        <tr>
            <td class="auto-style4">    <asp:Label ID = "facid" Text = "Faculty ID:" runat = "server"></asp:Label></td>
            <td>    <asp:TextBox ID = "fid" runat = "server" PlaceHolder = "Enter faculty ID" OnTextChanged = "fid_check" AutoPostBack = "true"></asp:TextBox></td>
        </tr>
        <tr>
            <td class="auto-style4">    <asp:Label ID = "facname" Text = "Faculty Name:" runat = "server"></asp:Label></td>
            <td>    <asp:TextBox ID = "fname" runat = "server" PlaceHolder = "Enter name"></asp:TextBox></td>
        </tr>
        <tr>
            <td class="auto-style4">    <asp:Label ID = "facmobile" Text = "Mobile No.:" runat = "server"></asp:Label></td>
            <td>    <asp:TextBox ID = "fmobile" runat = "server" PlaceHolder = "Enter mobile number"></asp:TextBox></td>
        </tr>
        <tr>
            <td class="auto-style4">    <asp:Label ID = "facemail" Text = "Email ID:" runat = "server"></asp:Label></td>
            <td>    <asp:TextBox ID = "femailid" runat = "server" PlaceHolder = "Enter email id"></asp:TextBox></td>
        </tr>
        <tr>
            <td class="auto-style4">    <asp:Label ID = "fdept" Text = "Department" runat = "server"></asp:Label></td>
            <td>    <asp:TextBox ID = "dept" runat = "server" PlaceHolder = "Enter Department"></asp:TextBox>
</td>
        </tr>
        <tr>
            <td class="auto-style4">    <asp:Label ID = "frole" Text = "Role:" runat = "server"></asp:Label></td>
            <td>    <asp:TextBox ID = "role" runat = "server" PlaceHolder = "Enter role"></asp:TextBox></td>
        </tr>
    </table>
   
    <br /><br />
    <asp:Button ID = "fin" CssClass="button1" Text = "Add Faculty" runat = "server" OnClick="fin_Click" Width="148px" Height="40px"/>
</asp:Content>

