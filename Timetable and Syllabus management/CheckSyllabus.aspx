<%@ Page Title="" Language="C#" MasterPageFile="~/Studentmaster.master" AutoEventWireup="true" CodeFile="CheckSyllabus.aspx.cs" Inherits="CheckSyllabus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <style>
        .dDrop{
              border:3px solid #7d6754;
    border-radius:8px;
    font-size:small;
    padding:5px;
            margin-left: 53px;
        }
    </style>

    <h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Check Syllabus.</h2>
    <h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Enter the following details to check syllabus: </h3>
    <br />
    <asp:DropDownList ID = "Year" CssClass = "dDrop" runat = "server">
        <asp:ListItem>Select Year</asp:ListItem>
        <asp:ListItem>First</asp:ListItem>
        <asp:ListItem>Second</asp:ListItem>
        <asp:ListItem>Third</asp:ListItem>
        <asp:ListItem>Fourth</asp:ListItem>
    </asp:DropDownList>
    <asp:DropDownList ID = "Semester" CssClass = "dDrop" runat = "server">
        <asp:ListItem>Select Sem</asp:ListItem>
        <asp:ListItem>YearlyPattern</asp:ListItem>
        <asp:ListItem>1</asp:ListItem>
        <asp:ListItem>2</asp:ListItem>
    </asp:DropDownList>
    <asp:DropDownList ID = "Branch" CssClass = "dDrop" runat = "server" AutoPostBack="True" OnSelectedIndexChanged="Branch_SelectedIndexChanged">
        <asp:ListItem>Select Branch</asp:ListItem>
        <asp:ListItem>ALL</asp:ListItem>
        <asp:ListItem>CSE</asp:ListItem>
        <asp:ListItem>ECE</asp:ListItem>
        <asp:ListItem>IT</asp:ListItem>
        <asp:ListItem>EIE</asp:ListItem>
    </asp:DropDownList>
    <asp:DropDownList ID = "Subject" CssClass = "dDrop" runat = "server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="SubCode" DataValueField="SubCode" OnSelectedIndexChanged="Subject_SelectedIndexChanged">
        <asp:ListItem>Select Subject</asp:ListItem>
        <asp:ListItem></asp:ListItem>
        <asp:ListItem></asp:ListItem>
        <asp:ListItem></asp:ListItem>
    </asp:DropDownList>
    <br /><br />
    <br />
        <asp:GridView ID="GridView1" align="center" runat="server" Height="200px" Width="708px" CellPadding="4" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" AllowPaging="True">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField />
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" ForeColor="White" Font-Bold="True" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:kmitdbTtCon %>" SelectCommand="SELECT [SubCode] FROM tt.Subject WHERE (([Year] = @Year) AND ([Semester] = @Semester) AND ([Branch] = @Branch))">
        <SelectParameters>
            <asp:ControlParameter ControlID="Year" Name="Year" PropertyName="SelectedValue" Type="String" />
            <asp:ControlParameter ControlID="Semester" Name="Semester" PropertyName="SelectedValue" Type="String" />
            <asp:ControlParameter ControlID="Branch" Name="Branch" PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
&nbsp;<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:kmitdbTtCon %>" SelectCommand="SELECT * FROM tt.SyllabusTable1 WHERE ([Subcode] = @Subcode)">
        <SelectParameters>
            <asp:ControlParameter ControlID="Subject" Name="Subcode" PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

