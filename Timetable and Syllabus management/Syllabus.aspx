<%@ Page Title="" Language="C#" MasterPageFile="~/Adminmaster.master" AutoEventWireup="true" CodeFile="Syllabus.aspx.cs" Inherits="Syllabus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <style>
         th {
            background-image: url("blue2.jpg");
    border: 3px solid #eeeee;
    border-collapse: collapse;
    padding: 10px;
    border-style: ridge;
    background-color:#1acca0;
} 
table{
                background-image: url("blue2.jpg");

    border-collapse: collapse;
    width: 680px;
    border-radius:5px;
    z-index: 1;
    left: -1px;
    top: -1px;
   // position: relative;
   border-style: ridge;
     height: 51px;
}
td{
                background-image: url("blue2.jpg");
    border: 3px solid #eeeee;
    border-collapse: collapse;
    padding: 10px;
    border-style: ridge;
    background-color:#fdfff7;
   }
h3{
    text-align:center;
}
    .Lbutton{
        font-size:x-large;
    }  
        .auto-sty le1 {
            width: 10px;
        }
        .DList{
             border:3px solid #7d6754;
    border-radius:8px;
    font-size:small;
    padding:5px;
        }
        .Ubutton{
             background-color: #8099b8;
     text-shadow:#375cba;
     margin-left: 338px;
   
	border-radius: 10px;
	color:#ffffff;
	font-family: 'Pacifico', cursive;
    text-align:center;
    	font-size: 20px;
        }
        .TextB{
 border:3px solid #7d6754;
    border-radius:8px;
    font-size:small;
    padding:5px;
        }
         body {
            background-image: url("blue2.jpg");
             background-size:cover;
            background-attachment: fixed;
        }
    </style>

 <br />
    <h3> Add new Syllabus or delete Old Syllabus: </h3>
     <br />
       <table align="center" >
        
        <tr>
            <td class="auto-style1">Year: </td>
            <td>
                <asp:DropDownList ID="DropDownyear11" CssClass="DList" runat="server">
                    <asp:ListItem>First</asp:ListItem>
                    <asp:ListItem>Second</asp:ListItem>
                    <asp:ListItem>Third</asp:ListItem>
                    <asp:ListItem>Fourth</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">Branch: </td>
            <td>
                <asp:DropDownList ID="DropDownBranch11" CssClass="DList" runat="server">
                    <asp:ListItem>CSE</asp:ListItem>
                    <asp:ListItem>ECE</asp:ListItem>
                    <asp:ListItem>IT</asp:ListItem>
                    <asp:ListItem>EIE</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">Semester: </td>
            <td>
                <asp:DropDownList ID="DropDownSem11" CssClass="DList" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownSem11_SelectedIndexChanged">
                    <asp:ListItem>Select Semester</asp:ListItem>
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">Subject: </td>
            <td>
                <asp:DropDownList ID="DropDownSub11" runat="server" CssClass="DList"  AutoPostBack="True"></asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">Unit no.: </td>
            <td>
                <asp:DropDownList ID="DropDownUnitno" CssClass="DList" runat="server" OnSelectedIndexChanged="DropDownUnitno_SelectedIndexChanged">
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">Unit Name : 
            </td>
            <td>            <asp:TextBox ID="UnitTextBox" CssClass="TextB" runat="server"></asp:TextBox>
</td>
        </tr>
       
        <tr>
            <td class="auto-style1">Topic ID : </td>
            <td>
                <asp:TextBox ID="TopicidTextBox" CssClass="TextB" runat="server" OnTextChanged="TopicidTextBox_TextChanged" Width="48px"></asp:TextBox>
                
            </td>
        </tr>
        <tr>
            <td class="auto-style1">Topic Name : </td>
            <td>
                <asp:TextBox ID="TopicNameTextBox" CssClass="TextB" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Button ID="sin" CssClass="Ubutton" runat="server" Text="Insert" OnClick="sin_Click" Height="40px" style="margin-left: 129px" Width="126px" />
                <asp:Button ID="sdel" CssClass="Ubutton" runat="server" Text="Delete" OnClick="sdel_Click" Height="40px" style="margin-left: 148px" Width="126px" />
                <br /><br />
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:kmitdbTtCon %>" SelectCommand="SELECT [SubName] FROM tt.Subject WHERE (([Branch] = @Branch) AND ([Year] = @Year) AND ([Semester] = @Semester))">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownBranch11" Name="Branch" PropertyName="SelectedValue" Type="String" />
                        <asp:ControlParameter ControlID="DropDownyear11" Name="Year" PropertyName="SelectedValue" Type="String" />
                        <asp:ControlParameter ControlID="DropDownSem11" Name="Semester" PropertyName="SelectedValue" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

