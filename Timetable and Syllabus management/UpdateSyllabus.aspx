<%@ Page Title="" Language="C#" MasterPageFile="~/Teachermaster.master" AutoEventWireup="true" CodeFile="UpdateSyllabus.aspx.cs" Inherits="UpdateSyllabus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
          .label1{
            color:rgb(0, 148, 255);
            font-size:x-large;
            font-family:'Bradley Hand ITC';
            font-style:inherit;
        }
        .Dyear{
            border:3px solid #7d6754;
            border-radius:8px;
            font-size:small;
            padding:5px;
        }
        .Dsubcode{
            border:3px solid #7d6754;
            border-radius:8px;
            font-size:small;
            padding:5px;
        }
        .Dbranch{
            border:3px solid #7d6754;
            border-radius:8px;
            font-size:small;
            padding:5px;
        }
        .Dsection{
           border:3px solid #7d6754;
            border-radius:8px;
            font-size:small;
            padding:5px;
        }
        body{
            background-image: url("blue2.jpg");
             background-size:cover;
            background-attachment: fixed;
        }
        #Gridview{
            align-content:center;
            align-items:center;
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

        .Grid a {
            margin: auto 1%;
            border-radius: 50%;
            background-color: #8099b8;
            padding: 5px 10px 5px 10px;
            color: #fff;
            text-decoration: none;
            -o-box-shadow: 1px 1px 1px #111;
            -moz-box-shadow: 1px 1px 1px #111;
            -webkit-box-shadow: 1px 1px 1px #111;
            box-shadow: 1px 1px 1px #111;
        }
   .listbox1{
       align-content:center;
       align-items:center;
   }
   .TB{
       border-radius:5px;
   }
      
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <h1>&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label4" CssClass="LabelL" runat="server" Text="Label"></asp:Label></h1>
    <h2>&nbsp;&nbsp;&nbsp;&nbsp; To update done Syllabus.</h2>
    <h3>&nbsp;&nbsp;&nbsp;&nbsp; Select your subject to update data:</h3>
    <br /><br />
  &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;Year: <asp:DropDownList ID="ddyear1" CssClass="Dyear" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddyear1_SelectedIndexChanged">
        <asp:ListItem>Select Year</asp:ListItem>
    </asp:DropDownList>
    &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
    Subcode: <asp:DropDownList ID="ddsubcode1" CssClass="Dsubcode" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddsubcode1_SelectedIndexChanged">
        <asp:ListItem>Select Subcode</asp:ListItem>
    </asp:DropDownList>
    &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
    Branch: <asp:DropDownList ID="ddbranch1" CssClass="Dbranch" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddbranch1_SelectedIndexChanged">
        <asp:ListItem>Select Branch</asp:ListItem>
    </asp:DropDownList>
    &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
    Section:  <asp:DropDownList ID="ddsec" CssClass="Dsection" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddsec_SelectedIndexChanged" >
        <asp:ListItem>Select Section</asp:ListItem>
    </asp:DropDownList>    &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;

    <br /><br />
    <div id="Gridv1">
    <asp:GridView ID="GridView1" CssClass="Grid" runat="server" align="center" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
        <Columns>
            <asp:CommandField SelectText="Update." ShowSelectButton="True" />
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:CheckBox ID="CheckBox1" runat="server" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Unit_name" SortExpression="Unit_name">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" CssClass="TB" Text='<%# Bind("Unit_name") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("Unit_name") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Topic_Name" SortExpression="Topic_Name">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="TB" Text='<%# Bind("Topic_Name") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("Topic_Name") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField>
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" CssClass="TB"></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:TextBox ID="TextBox4" CssClass="TB" runat="server" TextMode="Date"></asp:TextBox>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
        </div>
    <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:kmitdbTtCon %>" SelectCommand="SELECT [Unit_name], [Topic_Name] FROM tt.SyllabusTable1 WHERE ([Subcode] = @Subcode)">
        <SelectParameters>
            <asp:ControlParameter ControlID="ddsubcode1" Name="Subcode" PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
     &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
     &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
     &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
     &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
     &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
    <asp:ListBox ID="ListBox1" runat="server" align="center" style="margin-right: 0px; margin-top: 50px;" Height="79px"></asp:ListBox>
</asp:Content>

