<!--
# Name: Group 3
# email: previahc@mail.uc.edu leaphajp@mail.uc.edu
# Assignment Title: Final Project
# Due Date: 4/23/24
# Course: IS 3050
# Semester/Year: Spring
# Brief Description: This project goes over the code for a web page that shows the solution to a LeetCode problem
Homepage with names of participants
# Citations: IS 3050, LeetCode
# Anything else that's relevant:    
-->
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Group3_FinalProject.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Homepage</title>
    <style>
    .navbar {
        display: flex;
        justify-content: space-around;
        background-color: #333;
        padding: 10px 0;

    }
    .nav-button {
        color: white;
        background-color: #555;
        border: none;
        padding: 10px 20px;
        text-align: center;
        text-decoration: none;
        display: inline-block;
        font-size: 16px;
        cursor: pointer;
    }
    .nav-button:hover {
        background-color: #777;
    }
</style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="margin: 0 auto; max-width: 960px; font-size:1.75em;">
            <div class="navbar">
                <asp:Button ID="btnHome" runat="server" Text="Home" CssClass="nav-button" PostBackUrl="~/index.aspx" />
                <asp:Button ID="btnAbout" runat="server" Text="Easy" CssClass="nav-button" PostBackUrl="~/EasyProblem.aspx" />
                <asp:Button ID="btnServices" runat="server" Text="Medium" CssClass="nav-button" PostBackUrl="~/MediumProblem.aspx" />
                <asp:Button ID="btnContact" runat="server" Text="Hard" CssClass="nav-button" PostBackUrl="~/HardProblem.aspx" />
            </div>
            <br />
            <asp:Label ID="lblParticipants" runat="server" >Final Project Group 3:</asp:Label>

            <asp:BulletedList ID="nameList" runat="server"></asp:BulletedList>
        
        </div>
    </form>
</body>
</html>
