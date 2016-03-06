<%@ Page Title="" Language="C#" MasterPageFile="~/Adminmaster.master" AutoEventWireup="true" CodeFile="SubjectD.aspx.cs" Inherits="Admin_SubjectD" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderD" Runat="Server">
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
             z-index: 1;
             left: 567px;
             top: 552px;
             position: absolute;
             height: 37px;
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
         .auto-style5 {
             width: 98px;
             height: 36px;
         }
         .auto-style6 {
             height: 36px;
         }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
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
        <asp:ListItem Value="9">Select Sem</asp:ListItem>
        <asp:ListItem>YearlyPattern</asp:ListItem>
        <asp:ListItem>1</asp:ListItem>
        <asp:ListItem>2</asp:ListItem>
    </asp:DropDownList>
                <asp:RequiredFieldValidator ID="sem_val" runat="server" ControlToValidate="ddsem" Display="Dynamic" ErrorMessage="Field Required!" InitialValue="9"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">    <asp:Label ID = "lbbranch" Text = "Branch:" runat = "server"></asp:Label></td>
            <td class="auto-style6"><asp:DropDownList ID = "ddbranch" CssClass="DD" runat = "server" AutoPostBack="True">
        <asp:ListItem Value="7">Select Branch</asp:ListItem>
                <asp:ListItem>ALL</asp:ListItem>
        <asp:ListItem>CSE</asp:ListItem>
        <asp:ListItem>ECE</asp:ListItem>
        <asp:ListItem>IT</asp:ListItem>
        <asp:ListItem>EIE</asp:ListItem>
    </asp:DropDownList>
                <asp:RequiredFieldValidator ID="br_val" runat="server" ControlToValidate="ddbranch" Display="Dynamic" ErrorMessage="Field Required!" InitialValue="7"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">    <asp:Label ID = "lbsubn" Text = "Subject Name:" runat = "server"></asp:Label></td>
            <td>
                <asp:DropDownList ID="SubName" runat="server" AutoPostBack = "True" CssClass="DD" DataSourceID="SqlDataSource1" DataTextField="SubName" DataValueField="SubName">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:kmitdbTtCon %>" SelectCommand="SELECT [SubName] FROM tt.Subject WHERE (([Year] = @Year) AND ([Semester] = @Semester) AND ([Branch] = @Branch))">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="ddyear" Name="Year" PropertyName="SelectedValue" Type="String" />
                        <asp:ControlParameter ControlID="ddsem" Name="Semester" PropertyName="SelectedValue" Type="String" />
                        <asp:ControlParameter ControlID="ddbranch" Name="Branch" PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">    <asp:Label ID = "lbsubc" Text = "Subject Code:" runat = "server"></asp:Label>
</td>
            <td>    <asp:DropDownList ID="SubCode" runat="server" DataSourceID="SqlDataSource2" CssClass="DD" AutoPostBack="True" DataTextField="SubCode" DataValueField="SubCode">
                         <asp:ListItem></asp:ListItem>
                         <asp:ListItem></asp:ListItem>
                         <asp:ListItem></asp:ListItem>
                         <asp:ListItem></asp:ListItem>
                         </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:kmitdbTtCon %>" SelectCommand="SELECT [SubCode] FROM tt.Subject WHERE (([Year] = @Year) AND ([Semester] = @Semester) AND ([Branch] = @Branch))">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="ddyear" Name="Year" PropertyName="SelectedValue" Type="String" />
                        <asp:ControlParameter ControlID="ddsem" Name="Semester" PropertyName="SelectedValue" Type="String" />
                        <asp:ControlParameter ControlID="ddbranch" Name="Branch" PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
</td>
        </tr>
         
    </table>
    <br /><br />
    <asp:Button ID = "sdel" CssClass="button2" Text = "Delete" runat = "server" OnClick="sdel_Click" Width="100px" />

</asp:Content>

