<%@ Page Title="" Language="C#" MasterPageFile="~/Adminmaster.master" AutoEventWireup="true" CodeFile="Newtable.aspx.cs" Inherits="Newtable" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <style>
       th {
    border: 3px solid #eeeee;
    border-collapse: collapse;
    padding: 10px;
    background-color:#1acca0;
} 


table{
    border-collapse: collapse;
    width: 680px;
    z-index: 1;
    left: -2px;
    top: -2px;
    //
position: relative;
    height: 153px;
}
td{
    
    border-collapse: collapse;
    padding: 10px;
 background-image: url("blue2.jpg");
   }
.Dyear{
    border:3px solid #7d6754;
    border-radius:8px;
    font-size:small;
    padding:5px;
}
.Dsem{
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
.Ddrop{
     border:3px solid #7d6754;
    border-radius:8px;
    font-size:small;
    padding:5px;
}
.AS{
     background-color: #8099b8;
     text-shadow:#375cba;
     margin-left: 338px;
   
	border-radius: 10px;
	color:#ffffff;
	font-family: 'Pacifico', cursive;
    text-align:center;
    	font-size: 20px;
}
      
        .auto-style1 {
            height: 45px;
        }
      
   </style>
    <h2>Create Timetable by filling the details: </h2>
    <br />&nbsp;
     <asp:Label ID="lbYear" runat="server" Text="Label">Year :</asp:Label>
    <asp:DropDownList ID="dyear" CssClass="Dyear" runat="server">
        <asp:ListItem>Select Year</asp:ListItem>
        <asp:ListItem>First</asp:ListItem>
        <asp:ListItem>Second</asp:ListItem>
        <asp:ListItem>Third</asp:ListItem>
        <asp:ListItem>Fourth</asp:ListItem>

    </asp:DropDownList>
        &nbsp;	&nbsp;	&nbsp;	&nbsp;	&nbsp;	&nbsp;	        &nbsp;	&nbsp;	&nbsp;	&nbsp;	&nbsp;	&nbsp;	

    <asp:Label ID="lbSem" runat="server" Text="Label">Semester :</asp:Label>
    <asp:DropDownList ID="dsem" CssClass="Dsem" runat="server">
        <asp:ListItem>Select Sem</asp:ListItem>
        <asp:ListItem>YearlyPattern</asp:ListItem>
        <asp:ListItem>1</asp:ListItem>
        <asp:ListItem>2</asp:ListItem>
      

    </asp:DropDownList>
    &nbsp;	&nbsp;	&nbsp;	&nbsp;	&nbsp;	&nbsp;	        &nbsp;	&nbsp;	&nbsp;	&nbsp;	&nbsp;	
    <asp:Label ID="lbBranch" runat="server" Text="Label">Branch :</asp:Label>
    <asp:DropDownList ID="dbranch" CssClass="Dbranch" runat="server" AutoPostBack = "true">
        <asp:ListItem>Select Branch</asp:ListItem>
        <asp:ListItem>ALL</asp:ListItem>
        <asp:ListItem>CSE</asp:ListItem>
        <asp:ListItem>ECE</asp:ListItem>
        <asp:ListItem>IT</asp:ListItem>
        <asp:ListItem>EIE</asp:ListItem>

    </asp:DropDownList>
        &nbsp;	&nbsp;	&nbsp;	&nbsp;	&nbsp;	&nbsp;	        &nbsp;	&nbsp;	&nbsp;	&nbsp;	&nbsp;	&nbsp;	

   
    <asp:Label ID="lbSec" runat="server" Text="Label">Section :</asp:Label>
    <asp:DropDownList ID="dsection" CssClass="Dsection" runat="server">
        <asp:ListItem>Select Section</asp:ListItem>
        <asp:ListItem>A</asp:ListItem>
        <asp:ListItem>B</asp:ListItem>
        <asp:ListItem>C</asp:ListItem>
        <asp:ListItem>D</asp:ListItem>
        <asp:ListItem>E</asp:ListItem>
        <asp:ListItem>F</asp:ListItem>
        <asp:ListItem>G</asp:ListItem>
        <asp:ListItem>H</asp:ListItem>
        <asp:ListItem>I</asp:ListItem>
    </asp:DropDownList>
    &nbsp;	&nbsp;	&nbsp;	&nbsp;	&nbsp;	&nbsp;	        &nbsp;	&nbsp;	&nbsp;	&nbsp;	&nbsp;	&nbsp;	


    <br /><br />
    <table>
        <tr>
            <td>Add Subjects: </td>
            </tr>
        <tr>
            <td>
                Subject Name: <asp:DropDownList ID="DropDownSub1" CssClass="Ddrop" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="SubName" DataValueField="SubName" OnSelectedIndexChanged="DropDownSub1_SelectedIndexChanged" >
                     <asp:ListItem></asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList> </td>
       <td>
           Faculty Department:
           <asp:DropDownList ID="DropDownDept1" CssClass="Ddrop" runat="server" AutoPostBack="True">
               <asp:ListItem>Select Dept</asp:ListItem>
               <asp:ListItem>CSE</asp:ListItem>
               <asp:ListItem>ECE</asp:ListItem>
               <asp:ListItem>IT</asp:ListItem>
               <asp:ListItem>EIE</asp:ListItem>
               <asp:ListItem>H&S</asp:ListItem>
               <asp:ListItem>NonTech</asp:ListItem>
           </asp:DropDownList>
       </td>
            <td>
                Faculty Name:
                <asp:DropDownList ID="DropDownFac1" runat="server" CssClass="Ddrop" AutoPostBack="True" DataSourceID="sqlFacultyName" DataTextField="fname" DataValueField="fname" >
                     <asp:ListItem></asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
            </td>
             </tr>
        <tr>
            <td colspan="3">
                <asp:Button ID="SubjectSubmitButton" CssClass="AS" runat="server" Text="Add Subject" OnClick="SubjectSubmitButton_Click" Height="34px" />
                <asp:Button ID="SubjectSubmitButton0" CssClass="AS" runat="server" Text="Set Timetable" Height="34px" OnClick="SubjectSubmitButton0_Click" />
            </td>
        </tr>
    </table>
    <br />

    <table style="width: 100%;">
        <tr>
            <td>
                <asp:Label ID="lblDay" runat="server" Text="Day"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lblPeriod" runat="server" Text="Period"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lblsubject" runat="server" Text="Subject"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lbltf" runat="server" Text="Time From"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lbltt" runat="server" Text="Time to"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lbltl" runat="server" Text="Theory/Lab"></asp:Label>
            </td>
        </tr>
        <tr>
            <td> <asp:DropDownList ID="ddDay" CssClass="Ddrop" runat="server">
                    <asp:ListItem>Select Day</asp:ListItem>
                    <asp:ListItem>Monday</asp:ListItem>
                    <asp:ListItem>Tuesday</asp:ListItem>
                    <asp:ListItem>Wednesday</asp:ListItem>
                    <asp:ListItem>Thursday</asp:ListItem>
                    <asp:ListItem>Friday</asp:ListItem>
                    <asp:ListItem>Saturday</asp:ListItem>
                    </asp:DropDownList></td>


            <td><asp:DropDownList ID="ddPeriod" CssClass="Ddrop" OnSelectedIndexChanged="ddPeriodSetTime" AutoPostBack="true" runat="server">
                    <asp:ListItem>Select Period</asp:ListItem>
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                    <asp:ListItem>6</asp:ListItem>
                    <asp:ListItem>7</asp:ListItem>
                    </asp:DropDownList></td>
            
          <td> <asp:DropDownList ID="ddSub" runat="server" CssClass="Ddrop" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="SubName" DataValueField="SubName" OnSelectedIndexChanged="ddSub_SelectedIndexChanged">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                    </asp:DropDownList></td>
            
            <td><asp:Label ID="lbTimeFrom" runat="server" Text=""></asp:Label></td>
            <td><asp:Label ID="lbTimeTo" runat="server" Text=""></asp:Label></td>
            <td><asp:DropDownList ID="classType" CssClass="Ddrop" runat="server">
                     <asp:ListItem>Theory</asp:ListItem>
                    <asp:ListItem>Lab</asp:ListItem>
                     </asp:DropDownList></td>
        </tr>
        
    </table>
     
    <br />
    
    
   
    <asp:Button ID = "b1" Text = "Submit" CssClass="AS" runat = "server" OnClick="b1_Click" />&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID = "bc" Text = "Update" CssClass="AS" runat = "server" OnClick="bc_Click" />
    
   
    <br />
    <asp:SqlDataSource ID="sqlFacultyName" runat="server" ConnectionString="<%$ ConnectionStrings:kmitdbTtCon %>" SelectCommand="SELECT [fname] FROM fac.facultydata WHERE ([dept] = @dept)">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownDept1" Name="dept" PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:kmitdbTtCon %>" SelectCommand="SELECT [SubName] FROM tt.Subject WHERE (([Year] = @Year) AND ([Semester] = @Semester) AND ([Branch] = @Branch))" >
        <SelectParameters>
            <asp:ControlParameter ControlID="dyear" Name="Year" PropertyName="SelectedValue" Type="String" />
            <asp:ControlParameter ControlID="dsem" Name="Semester" PropertyName="SelectedValue" Type="String" />
            <asp:ControlParameter ControlID="dbranch" Name="Branch" PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    <br /><br />
    <div class="tables">
            <table style="width:500">
                <table align="center">

                    <tr>
                        <td class="auto-style1"></td>
                        <td class="auto-style1"><asp:Label ID="First" runat="server" Text="1"></asp:Label></td>
                        <td class="auto-style1"><asp:Label ID="Second" runat="server" Text="2"></asp:Label></td>
                        <td class="auto-style1"> 11:10 - 11:25</td>
                        <td class="auto-style1"> <asp:Label ID="Third" runat="server" Text="3"></asp:Label></td>
                        <td class="auto-style1"> <asp:Label ID="Fourth" runat="server" Text="4"></asp:Label></td>
                        <td class="auto-style1"> 13:05 - 13:45</td>
                        <td class="auto-style1"><asp:Label ID="Fifth" runat="server" Text="5"></asp:Label></td>
                        <td class="auto-style1"> <asp:Label ID="Sixth" runat="server" Text="6"></asp:Label></td>
                        <td class="auto-style1"> <asp:Label ID="Seventh" runat="server" Text="7"></asp:Label></td>
                    </tr>
                    <tr>
                        <td>Monday</td>
                        <td><asp:Label ID="Mon1" runat="server" Text=""></asp:Label> </td>
                        <td><asp:Label ID="Mon2" runat="server" Text=""></asp:Label>  </td>
                        <td rowspan="6"> BREAK</td>
                        <td> <asp:Label ID="Mon3" runat="server" Text=""></asp:Label> </td>
                        <td> <asp:Label ID="Mon4" runat="server" Text=""></asp:Label> </td>
                        <td rowspan="6"> LUNCH</td>
                        <td><asp:Label ID="Mon5" runat="server" Text=""></asp:Label> </td>
                        <td> <asp:Label ID="Mon6" runat="server" Text=""></asp:Label></td>
                        <td> <asp:Label ID="Mon7" runat="server" Text=""></asp:Label></td>
                    </tr>
                    <tr>
                        <td>Tuesday</td>
                        <td><asp:Label ID="Tue1" runat="server" Text=""></asp:Label> </td>
                        <td><asp:Label ID="Tue2" runat="server" Text=""></asp:Label>  </td>
                        <td> <asp:Label ID="Tue3" runat="server" Text=""></asp:Label> </td>
                        <td> <asp:Label ID="Tue4" runat="server" Text=""></asp:Label> </td>
                        <td><asp:Label ID="Tue5" runat="server" Text=""></asp:Label> </td>
                        <td> <asp:Label ID="Tue6" runat="server" Text=""></asp:Label></td>
                        <td> <asp:Label ID="Tue7" runat="server" Text=""></asp:Label></td>
                    </tr>
                    <tr>
                        <td>Wednesday</td>
                        <td><asp:Label ID="Wed1" runat="server" Text=""></asp:Label> </td>
                        <td><asp:Label ID="Wed2" runat="server" Text=""></asp:Label>  </td>
                        <td> <asp:Label ID="Wed3" runat="server" Text=""></asp:Label> </td>
                        <td> <asp:Label ID="Wed4" runat="server" Text=""></asp:Label> </td>
                        <td><asp:Label ID="Wed5" runat="server" Text=""></asp:Label> </td>
                        <td> <asp:Label ID="Wed6" runat="server" Text=""></asp:Label></td>
                        <td> <asp:Label ID="Wed7" runat="server" Text=""></asp:Label></td>
                    </tr>
                    <tr>
                        <td>Thursday</td>
                        <td><asp:Label ID="Thu1" runat="server" Text=""></asp:Label> </td>
                        <td><asp:Label ID="Thu2" runat="server" Text=""></asp:Label>  </td>
                        <td> <asp:Label ID="Thu3" runat="server" Text=""></asp:Label> </td>
                        <td> <asp:Label ID="Thu4" runat="server" Text=""></asp:Label> </td>
                        <td><asp:Label ID="Thu5" runat="server" Text=""></asp:Label> </td>
                        <td> <asp:Label ID="Thu6" runat="server" Text=""></asp:Label></td>
                        <td> <asp:Label ID="Thu7" runat="server" Text=""></asp:Label></td>
                           </tr>
                    <tr>
                        <td>Friday</td>
                        <td><asp:Label ID="Fri1" runat="server" Text=""></asp:Label> </td>
                        <td><asp:Label ID="Fri2" runat="server" Text=""></asp:Label>  </td>
                        <td> <asp:Label ID="Fri3" runat="server" Text=""></asp:Label> </td>
                        <td> <asp:Label ID="Fri4" runat="server" Text=""></asp:Label> </td>
                        <td><asp:Label ID="Fri5" runat="server" Text=""></asp:Label> </td>
                        <td> <asp:Label ID="Fri6" runat="server" Text=""></asp:Label></td>
                        <td> <asp:Label ID="Fri7" runat="server" Text=""></asp:Label></td>
                    </tr>
                    <tr>
                        <td>Saturday</td>
                       <td><asp:Label ID="Sat1" runat="server" Text=""></asp:Label> </td>
                        <td><asp:Label ID="Sat2" runat="server" Text=""></asp:Label>  </td>
                        <td> <asp:Label ID="Sat3" runat="server" Text=""></asp:Label> </td>
                        <td> <asp:Label ID="Sat4" runat="server" Text=""></asp:Label> </td>
                        <td><asp:Label ID="Sat5" runat="server" Text=""></asp:Label> </td>
                        <td> <asp:Label ID="Sat6" runat="server" Text=""></asp:Label></td>
                        <td> <asp:Label ID="Sat7" runat="server" Text=""></asp:Label></td>
                    </tr>
                </table>
            </table>

        </div>
    <br /><br />
    </asp:Content>

