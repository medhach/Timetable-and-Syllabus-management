<%@ Page Title="" Language="C#" MasterPageFile="~/Directormaster.master" AutoEventWireup="true" CodeFile="Director.aspx.cs" Inherits="Director" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <style>
       h2{
         font-family:'Comic Sans MS';
    font-size:135%;
    color:black;
    text-align:center;
    align-content:center;
    position:center;
    margin:10px auto 10px auto;
       }
       .button1{
           background-color: #8099b8;
     text-shadow:#375cba;
     border-radius:10px;
	color:#ffffff;
	font-family: 'Pacifico', cursive;
    text-align:center;
   	font-size: 20px;
       }
       .Grid th
{
    font-size: large;
    font-weight: bold;
    color: Navy;
    border: 1px solid black;
    padding: 8px;
}
.Grid td
{
    padding: 8px;
    border: 1px solid black;
}
.Tbox{
    font-size:large;
}
        .Grid {}
   </style>
     <br /><br />
    <h2><br />Search Faculty name to check completed Syllabus</h2>
    <br /><br />
    <div id="tb" align="center">
        <asp:LinkButton ID="Logout" runat="server" OnClick="Logout_Click" style="z-index: 1; left: 1090px; top: 146px; position: absolute; height: 33px; width: 99px">Logout</asp:LinkButton>
    <asp:TextBox ID="STextBox" runat="server" placeholder="  Faculty Name" CssClass="Tbox" OnTextChanged="STextBox_TextChanged" Height="45px" Width="236px"></asp:TextBox>
    &nbsp &nbsp &nbsp
    <asp:Button ID="SButton" CssClass="button1" runat="server" Text="Search" OnClick="SButton_Click" Height="45px" Width="113px" />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:kmitdbTtCon %>" SelectCommand="SELECT fname FROM fac.facultydata WHERE (fname LIKE '%' + @Facname + '%')">
        <SelectParameters>
            <asp:ControlParameter ControlID="STextBox" Name="Facname" PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
        </div>
    <br />
    <div id="Gridv1">
    <asp:GridView ID="GridView1" align="center" CssClass="Grid" runat="server" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Height="202px" Width="165px">
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
        </Columns>
    </asp:GridView>
        </div>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:kmitdbTtCon %>" SelectCommand="SELECT [fname] FROM fac.facultydata"></asp:SqlDataSource>
</asp:Content>

