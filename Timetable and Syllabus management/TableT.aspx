<%@ Page Title="" Language="C#" MasterPageFile="~/Teachermaster.master" AutoEventWireup="true" CodeFile="TableT.aspx.cs" Inherits="TableT" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <style type="text/css">
         .auto-style1 {
           // height: 370px;
        }
        .auto-style2 {
            //height: 43px;
        }
        .auto-style3 {}
        .auto-style4 {}
        .auto-style6 {
            height: 42px;
        }
        #tt{
    position:fixed;
    bottom:184px;
    left:-16px;
    right:16px;
        
    padding:140px;
    height:20px;
text-align:center;
}
#t1{
    height:30px;
    width:200px;
    font-size:large;
    border-radius:5px;
    font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
}
#form2{  
    right:10;
    text-align:center;
    font-size:large;
}
#Timetable{    
      width: 100px;
    background-color: #F38630;
	color: #FFFFFF;
	border-radius: 5px;
	border: 10px solid #FA6900;
	font-family: Verdana, Arial, Sans-Serif;
	font-size:large;
	font-weight: bold;
	text-align: center;
	box-shadow: 5px 5px 5px #888;
	display: inline-block;
	margin-right: 20px;

}

body {
            background-image: url("blue2.jpg");
             background-size:cover;
            background-attachment: fixed;
     }

.Rbutton{
     background-color: #8099b8;
     text-shadow:#375cba;
 	border-radius: 10px;
	color:#ffffff;
	font-family: 'Pacifico', cursive;
    text-align:center;
    	font-size: 20px;
}
h1{
    font-family:'Bookman Old Style';
    font-size:200%;
    color:blue;
    text-align:center;
    align-content:center;
    position:center;
    margin:10px auto 10px auto;

}

  th {
    border: 3px solid #eeeee;
    border-collapse: collapse;
    padding: 10px;
    background-color:#1acca0;
} 
table{
    border-collapse: collapse;
    width: 718px;
    z-index: 1;
    left: -120px;
    top: 36px;
    //
position: relative;
    height: 51px;
}
td{
    border: 3px solid #eeeee;
    border-collapse: collapse;
    padding: 10px;
 background-image: url("blue2.jpg");
   }
.DL{
     border:3px solid #7d6754;
    border-radius:8px;
    font-size:small;
    padding:5px;
}
        </style>
     <br /><br />
    <script>
        function myFunction() {
            window.print();
        }
    </script>
    <br /><br />
   
    <asp:Label ID="lbYear1" runat="server" Text="Label">Year :</asp:Label>
    <asp:DropDownList ID="dyear1" CssClass="DL" runat="server">
        <asp:ListItem>Select Year</asp:ListItem>
        <asp:ListItem>First</asp:ListItem>
        <asp:ListItem>Second</asp:ListItem>
        <asp:ListItem>Third</asp:ListItem>
        <asp:ListItem>Fourth</asp:ListItem>

    </asp:DropDownList>
        &nbsp;	&nbsp;	&nbsp;	&nbsp;	&nbsp;	&nbsp;	        &nbsp;	&nbsp;	&nbsp;	&nbsp;	&nbsp;	&nbsp;	

    <asp:Label ID="lbSem1" runat="server" Text="Label">Semester :</asp:Label>
    <asp:DropDownList ID="dsem1" CssClass="DL" runat="server">
        <asp:ListItem>Select Sem</asp:ListItem>
        <asp:ListItem>YearlyPattern</asp:ListItem>
        <asp:ListItem>1</asp:ListItem>
        <asp:ListItem>2</asp:ListItem>
    </asp:DropDownList>
    &nbsp;	&nbsp;	&nbsp;	&nbsp;	&nbsp;	&nbsp;	        &nbsp;	&nbsp;	&nbsp;	&nbsp;	&nbsp;	
    <asp:Label ID="lbBranch1" runat="server" Text="Label">Branch :</asp:Label>
    <asp:DropDownList ID="dbranch1" CssClass="DL" runat="server">
        <asp:ListItem>Select Branch</asp:ListItem>
        <asp:ListItem>ALL</asp:ListItem>
        <asp:ListItem>CSE</asp:ListItem>
        <asp:ListItem>ECE</asp:ListItem>
        <asp:ListItem>IT</asp:ListItem>
        <asp:ListItem>EIE</asp:ListItem>

    </asp:DropDownList>
        &nbsp;	&nbsp;	&nbsp;	&nbsp;	&nbsp;	&nbsp;	        &nbsp;	&nbsp;	&nbsp;	&nbsp;	&nbsp;	&nbsp;	

   
    <asp:Label ID="lbSec1" runat="server" Text="Label">Section :</asp:Label>
    <asp:DropDownList ID="dsection1" runat="server" CssClass="DL" AutoPostBack="True" OnSelectedIndexChanged="dsection1_SelectedIndexChanged">
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
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID = "button1" CssClass="Rbutton" Text = "Refresh" runat = "server" OnClick="button1_Click" />
    &nbsp;&nbsp;
    <br /><br />
    <div class="tables">
            <table style="width:1px">
                <table align="left" class="auto-style1">

                    <tr>
                        <td class="auto-style6"></td>
                        <td class="auto-style6"><asp:Label ID="One" runat="server" Text="1"></asp:Label> 
                            <br />
                            9:30 - 10:20</td>
                        <td class="auto-style6"><asp:Label ID="Two" runat="server" Text="2"></asp:Label>  
                            <br />
                            10:20 - 11:10</td>
                        <td class="auto-style3"> <asp:Label ID="Br" runat="server" Text=""></asp:Label> <asp:Label ID="B" runat="server" Text=""></asp:Label> <asp:Label ID="R" runat="server" Text=""></asp:Label> <asp:Label ID="E" runat="server" Text=""></asp:Label> <asp:Label ID="A" runat="server" Text=""></asp:Label> <asp:Label ID="K" runat="server" Text=""></asp:Label> <asp:Label ID="SB" runat="server" Text="11:10 - 11:25"></asp:Label> </td>
                        <td class="auto-style6"> <asp:Label ID="Three" runat="server" Text="3"></asp:Label> 
                            <br />
                            11:25 - 12:15</td>
                        <td class="auto-style6"> <asp:Label ID="Four" runat="server" Text="4"></asp:Label> 
                            <br />
                            12:15 - 13:05</td>
                        <td class="auto-style4"> <asp:Label ID="Lu" runat="server" Text=""></asp:Label> <asp:Label ID="L" runat="server" Text=""></asp:Label> <asp:Label ID="U" runat="server" Text=""></asp:Label> <asp:Label ID="N" runat="server" Text=""></asp:Label> <asp:Label ID="C" runat="server" Text=""></asp:Label> <asp:Label ID="H" runat="server" Text=""></asp:Label> <asp:Label ID="LB" runat="server" Text="13:05 - 13:45"></asp:Label> </td>
                        <td class="auto-style6"><asp:Label ID="Five" runat="server" Text="5"></asp:Label> 
                            <br />
                            13:45 - 14:35</td>
                        <td class="auto-style6"> <asp:Label ID="Six" runat="server" Text="6"></asp:Label>
                            <br />
                            14:35 - 15:25</td>
                        <td class="auto-style6"> <asp:Label ID="Seven" runat="server" Text="7"></asp:Label>
                            <br />
                            15:25 - 16:15</td>
                    </tr>
                    <tr>
                        <td class="auto-style6"><asp:Label ID="Mon" runat="server" Text="Monday"></asp:Label></td>
                        <td class="auto-style6"><asp:Label ID="Mon1" runat="server" Text=""></asp:Label> </td>
                        <td class="auto-style6"><asp:Label ID="Mon2" runat="server" Text=""></asp:Label>  </td>
                        <td rowspan="6" class="auto-style3"> &nbsp;BREAK</td>
                        <td class="auto-style6"> <asp:Label ID="Mon3" runat="server" Text=""></asp:Label> </td>
                        <td class="auto-style6"> <asp:Label ID="Mon4" runat="server" Text=""></asp:Label> </td>
                        <td rowspan="6" class="auto-style4"> LUNCH</td>
                        <td class="auto-style6"><asp:Label ID="Mon5" runat="server" Text=""></asp:Label> </td>
                        <td class="auto-style6"> <asp:Label ID="Mon6" runat="server" Text=""></asp:Label></td>
                        <td class="auto-style6"> <asp:Label ID="Mon7" runat="server" Text=""></asp:Label></td>
                    </tr>
                    <tr>
                        <td class="auto-style6"><asp:Label ID="Tue" runat="server" Text="Tuesday"></asp:Label></td>
                        <td class="auto-style6"><asp:Label ID="Tue1" runat="server" Text=""></asp:Label> </td>
                        <td class="auto-style6"><asp:Label ID="Tue2" runat="server" Text=""></asp:Label>  </td>
                        <td class="auto-style6"> <asp:Label ID="Tue3" runat="server" Text=""></asp:Label> </td>
                        <td class="auto-style6"> <asp:Label ID="Tue4" runat="server" Text=""></asp:Label> </td>
                        <td class="auto-style6"><asp:Label ID="Tue5" runat="server" Text=""></asp:Label> </td>
                        <td class="auto-style6"> <asp:Label ID="Tue6" runat="server" Text=""></asp:Label></td>
                        <td class="auto-style6"> <asp:Label ID="Tue7" runat="server" Text=""></asp:Label></td>
                    </tr>
                    <tr>
                        <td class="auto-style6"><asp:Label ID="Wed" runat="server" Text="Wednesday"></asp:Label></td>
                        <td class="auto-style6"><asp:Label ID="Wed1" runat="server" Text=""></asp:Label> </td>
                        <td class="auto-style6"><asp:Label ID="Wed2" runat="server" Text=""></asp:Label>  </td>
                        <td class="auto-style6"> <asp:Label ID="Wed3" runat="server" Text=""></asp:Label> </td>
                        <td class="auto-style6"> <asp:Label ID="Wed4" runat="server" Text=""></asp:Label> </td>
                        <td class="auto-style6"><asp:Label ID="Wed5" runat="server" Text=""></asp:Label> </td>
                        <td class="auto-style6"> <asp:Label ID="Wed6" runat="server" Text=""></asp:Label></td>
                        <td class="auto-style6"> <asp:Label ID="Wed7" runat="server" Text=""></asp:Label></td>
                    </tr>
                    <tr>
                        <td class="auto-style2"><asp:Label ID="Thu" runat="server" Text="Thursday"></asp:Label></td>
                        <td class="auto-style2"><asp:Label ID="Thu1" runat="server" Text=""></asp:Label> </td>
                        <td class="auto-style2"><asp:Label ID="Thu2" runat="server" Text=""></asp:Label>  </td>
                        <td class="auto-style2"> <asp:Label ID="Thu3" runat="server" Text=""></asp:Label> </td>
                        <td class="auto-style2"> <asp:Label ID="Thu4" runat="server" Text=""></asp:Label> </td>
                        <td class="auto-style2"><asp:Label ID="Thu5" runat="server" Text=""></asp:Label> </td>
                        <td class="auto-style2"> <asp:Label ID="Thu6" runat="server" Text=""></asp:Label></td>
                        <td class="auto-style2"> <asp:Label ID="Thu7" runat="server" Text=""></asp:Label></td>
                           </tr>
                    <tr>
                        <td class="auto-style2"><asp:Label ID="Fri" runat="server" Text="Friday"></asp:Label></td>
                        <td class="auto-style2"><asp:Label ID="Fri1" runat="server" Text=""></asp:Label> </td>
                        <td class="auto-style2"><asp:Label ID="Fri2" runat="server" Text=""></asp:Label>  </td>
                        <td class="auto-style2"> <asp:Label ID="Fri3" runat="server" Text=""></asp:Label> </td>
                        <td class="auto-style2"> <asp:Label ID="Fri4" runat="server" Text=""></asp:Label> </td>
                        <td class="auto-style2"><asp:Label ID="Fri5" runat="server" Text=""></asp:Label> </td>
                        <td class="auto-style2"> <asp:Label ID="Fri6" runat="server" Text=""></asp:Label></td>
                        <td class="auto-style2"> <asp:Label ID="Fri7" runat="server" Text=""></asp:Label></td>
                    </tr>
                    <tr>
                        <td class="auto-style2"><asp:Label ID="Sat" runat="server" Text="Saturday"></asp:Label></td>
                       <td class="auto-style2"><asp:Label ID="Sat1" runat="server" Text=""></asp:Label> </td>
                        <td class="auto-style2"><asp:Label ID="Sat2" runat="server" Text=""></asp:Label>  </td>
                        <td class="auto-style2"> <asp:Label ID="Sat3" runat="server" Text=""></asp:Label> </td>
                        <td class="auto-style2"> <asp:Label ID="Sat4" runat="server" Text=""></asp:Label> </td>
                        <td class="auto-style2"><asp:Label ID="Sat5" runat="server" Text=""></asp:Label> </td>
                        <td class="auto-style2"> <asp:Label ID="Sat6" runat="server" Text=""></asp:Label></td>
                        <td class="auto-style2"> <asp:Label ID="Sat7" runat="server" Text=""></asp:Label></td>
                    </tr>
                </table>
            </table>
        </div> 
     <br /><br /><br /> 
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        <asp:Label ID="lbsub1" runat="server" Text="" Font-Bold="true" Font-Size="Large"></asp:Label>
        <asp:Label ID="lbfac1" runat="server" Text="" Font-Italic="true" Font-Bold="true" Font-Size="Medium"></asp:Label>
    
        <br />
    
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
        <asp:Label ID="lbsub2" runat="server" Text="" Font-Bold="true" Font-Size="Large"></asp:Label>
        <asp:Label ID="lbfac2" runat="server" Text="" Font-Italic="true" Font-Size="Medium" Font-Bold="true"></asp:Label>
    
        <br />
    
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
        <asp:Label ID="lbsub3" runat="server" Text="" Font-Bold="true" Font-Size="Large"></asp:Label>
        <asp:Label ID="lbfac3" runat="server" Text="" Font-Italic="true" Font-Size="Medium" Font-Bold="true"></asp:Label>
    
        <br />
    
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
        <asp:Label ID="lbsub4" runat="server" Text="" Font-Bold="true" Font-Size="Large"></asp:Label>
        <asp:Label ID="lbfac4" runat="server" Text="" Font-Italic="true" Font-Size="Medium" Font-Bold="true"></asp:Label>
    
        <br />
    
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
        <asp:Label ID="lbsub5" runat="server" Text="" Font-Bold="true" Font-Size="Large"></asp:Label>
        <asp:Label ID="lbfac5" runat="server" Text="" Font-Italic="true" Font-Size="Medium" Font-Bold="true"></asp:Label>
    
        <br />
    
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
        <asp:Label ID="lbsub6" runat="server" Text="" Font-Bold="true" Font-Size="Large"></asp:Label>
        <asp:Label ID="lbfac6" runat="server" Text="" Font-Italic="true" Font-Size="Medium" Font-Bold="true"></asp:Label>
   
        <br />
   
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   
        <asp:Label ID="lbsub7" runat="server" Text="" Font-Bold="true" Font-Size="Large"></asp:Label>
        <asp:Label ID="lbfac7" runat="server" Text="" Font-Italic="true" Font-Size="Medium" Font-Bold="true"></asp:Label>
    
        <br />
    
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
        <asp:Label ID="lbsub8" runat="server" Text="" Font-Bold="true" Font-Size="Large"></asp:Label>
        <asp:Label ID="lbfac8" runat="server" Text="" Font-Italic="true" Font-Size="Medium" Font-Bold="true"></asp:Label>
        <br /><br />
        <input id="PrintButton" onclick="myFunction()" type="button" value="Print" />
</asp:Content>

