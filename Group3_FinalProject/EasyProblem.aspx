<!--
# Name: Jackson Leaphart - Group 3
# email: leaphajp@mail.uc.edu
# Assignment Title: Final Project
# Due Date: 4/23/24
# Course: IS 3050
# Semester/Year: Spring
# Brief Description: This project goes over the code for a web page that shows the solution to a LeetCode problem
You need to put in a ransom note and a magazine, and it tells you if the letters match up to create the ransom note.
# Citations: IS 3050, W3 Schools
# Anything else that's relevant:    
-->
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EasyProblem.aspx.cs" Inherits="Group3_FinalProject.EasyProblem" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Easy Question</title>
    <style>
        #lblTitle {
            font-size:2em; font-weight:bold;
        }
        #GridView1{
            text-align:center; margin:auto; width:50%;
        }
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
        <div style="margin: 0 auto; max-width: 960px; font-size:1.2em;">
            <div class="navbar">
                <asp:Button ID="btnHome" runat="server" Text="Home" CssClass="nav-button" PostBackUrl="~/index.aspx" />
                <asp:Button ID="btnAbout" runat="server" Text="Easy" CssClass="nav-button" PostBackUrl="~/EasyProblem.aspx" />
                <asp:Button ID="btnServices" runat="server" Text="Medium" CssClass="nav-button" PostBackUrl="~/MediumProblem.aspx" />
                <asp:Button ID="btnContact" runat="server" Text="Hard" CssClass="nav-button" PostBackUrl="~/HardProblem.aspx" />
            </div>
            
            <asp:HyperLink ID="lblTitle" runat="server" NavigateUrl="https://leetcode.com/problems/ransom-note/description/">383. Ransom Note - Easy</asp:HyperLink>

            <p>Given two inputs, a ransom note and a magazine, return true if the ransom note can be constructed by using the letters from the magazine and false otherwise.</p>
            <p>Each letter in the magazine may only be used once in the ransom note.</p>
            <br />
            <p>Example 1: Ransom Note = "a" and Magazine = "b" would return false.</p>
            <p>Example 2: Ransom Note = "aa" and Magazine = "aab" would return true.</p>
            <br />

            <asp:Label ID="lblRansomNote" runat="server" Text="Ransom Note"></asp:Label>
            <asp:TextBox ID="txtRansomNote" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="lblMagazine" runat="server" Text="Magazine"></asp:Label>
            <asp:TextBox ID="txtMagazine" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="btnCheck" runat="server" Text="Check" OnClick="btnCheck_Click" />
            <br />
            <br />
            <asp:Label ID="lblResultText" runat="server" Text="Result: "></asp:Label>
            <asp:Label ID="lblResult" runat="server" CssClass="resultLabel"></asp:Label>
        </div>
    </form>
</body>
</html>
