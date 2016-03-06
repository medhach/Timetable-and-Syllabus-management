<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <style>
        p{
            text-align:center;
            font:bold 15px large arial,verdana;
            color:darkblue;
        }
        .auto-style4 {
            height: 23px;
        }
    </style>
    <br /><br />
    <table style="width:100%;">
       
        <tr>
            <td><p>Welcome to the Timetable and Syllabus management System. This website allows students, faculty, Administrator and Director logins.
   <br />
                <br />The students can check their day to day Timetables by logging in with their Hall ticket no and their mobile no as the password.
    <br /> <br />The Faculty has to update their completed syllabus by logging in with their ID as the username and their mobile no as their password.
    <br /> <br />The Admonistrator plays a big role. The Administrator makes all changes required in faculty or syllabus of any subject, he creates Timetables 
    <br /> <br />to save them for the Students' reference. 
    <br /> <br />The Director can check how much syllabus is completed by any faculty inorder to meet the deadlines.</p>
</td>
            <td>&nbsp;</td>
        </tr>

    </table>
    <br />
   </asp:Content>
