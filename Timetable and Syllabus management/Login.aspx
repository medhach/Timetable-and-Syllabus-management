<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <style>
       h2{
	font-family: 'Pacifico', cursive;
         color:rgb(9, 15, 49);
         text-align:center;
         font-size:100px;
         
       }
       
       
       .button1{
     background-color: #8099b8;
     text-shadow:#375cba;
     margin-left: 338px;
   
	border-radius: 10px;
	color:#ffffff;
	font-family: 'Pacifico', cursive;
    text-align:center;
    	font-size: 20px;
       }
      
       
       .button2{
     background-color: #8099b8;
     text-shadow:#375cba;
     
	border-radius:10px;
	color:#ffffff;
	font-family: 'Pacifico', cursive;
    text-align:center;
   	font-size: 20px;
           margin-left: 40px;
       }
       .button3 {
           margin-left: 46px;
     text-shadow:#375cba;


     background-color: #8099b8;
	border-radius:10px;
   	color:#ffffff;
	font-family: 'Pacifico', cursive;
    text-align:center;
   	font-size: 20px;

       }
       .button4 {
           margin-left: 52px;

     text-shadow:#375cba;
     
     background-color: #8099b8;
	border-radius:10px;
	color:#ffffff;
	font-family: 'Pacifico', cursive;
    text-align:center;
    font-size: 20px;
       }
       
   </style>
    
   
   <style>
        .Login {
  padding: 20px;
  width: 274px;
  background-color: #F7F7F7;
  margin: 0 auto 10px;
  border-radius: 15px;
  //box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
  overflow: hidden;
}

.Login h2 {
  font-weight: 100;
  text-align: center;
  font-size: 2.3em;
}
        body {
            background-image: url("blue2.jpg");
             background-size:cover;
            background-attachment: fixed;
        }
.Username{
    font-family:Georgia;
    font-size:large;
}
.Password{
    font-family:Georgia;
    font-size:large;
}
.button1{
    background-color:cornflowerblue;
    text-align:center;
    text-decoration-color:white;
    //color:lavender;
    font-family:Georgia;
    border-radius:25px;
    font-size:large;
}
.Text{
    text-align:center;
    align-content:center;
    position:center;
    font:bold 14px;

}
#Text1{
     text-align:center;
    align-content:center;
    font:bold 14px;

    position:center;
}

       .auto-style4 {
           width: 100%;
       }
       .buttons{
           background-color:#8099b8;
           text-shadow:#375cba;
           border-radius:5px;
           color:#ffffff;
           font-family:'Pacifico',cursive;
           text-align:center;
           font-size:20px;
           margin-left: 135px;
       }

    </style>
    
    &nbsp;&nbsp; &nbsp;&nbsp;



    <table class="auto-style4">
        <tr>
            <td>&nbsp;


                <div CssClass="Text" id="Text1" >
        <h3>&nbsp;&nbsp; 1. Students login with their rollno as Username and mobile number as password.
            <br /><br />
            2. Faculty login with their ID as Username and mobile number as password.
            <br /><br />
            3. Admin and Director login with their respective usernames and passwords.
        </h3>
            </div>
            </td>
            <td>&nbsp;  <div class="Login">
   
        <h2>
            Log-in
        </h2>
        <br />
        <formview>
                <asp:TextBox class="Username" ID="un"  runat="server" placeholder="Username" Height="44px" style="margin-left: 0px" Width="100%"></asp:TextBox><br /><br />
                <asp:TextBox class="Password" ID="pass" runat="server"  placeholder="Password" Height="44px" style="margin-left: 0px" Width="100%" Type = "Password"></asp:TextBox><br /><br />
                <asp:Button class="button1" ID="b1"  runat="server"  Text="Login" Height="44px" style="margin-left: 0px" Width="100%" OnClick = "b1_Click" ></asp:Button>
            <br />
            <asp:Label ID="lbl" runat="server" Text=""></asp:Label>
            </formview>
 
    </div></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
   



    
           
   <br />
    </asp:Content>

