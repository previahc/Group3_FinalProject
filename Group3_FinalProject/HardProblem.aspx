﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HardProblem.aspx.cs" Inherits="Group3_FinalProject.HardProblem" %>
<!--
# Name: Patience Huddleston - Group 3
# email: huddlepec@mail.uc.edu
# Assignment Title: Final Project
# Due Date: 04/23/24
# Course: IS 3050
# Semester/Year: Spring 2024
# Brief Description: This project goes over the code for a web page that shows the solution to a LeetCode problem
Distribute Elements into Two Arrays
# Citations: IS 3050, LeetCode, W3Schools
# Anything else that's relevant: 
-->
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Hard Question</title>
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
            
            <asp:HyperLink ID="lblTitle" runat="server" NavigateUrl="https://leetcode.com/problems/distribute-elements-into-two-arrays-ii/description/">3072. Distribute Elements Into Two Arrays II - Hard</asp:HyperLink>

            <p>You are given a 1-indexed array of integers nums of length n.</p>

            <p>We define a function greaterCount such that greaterCount(arr, val) returns the number of elements in arr that are strictly greater than val.</p>

            <p>You need to distribute all the elements of nums between two arrays arr1 and arr2 using n operations. In the first operation, append nums[1] to arr1. In the second operation, append nums[2] to arr2. Afterwards, in the ith operation:</p>

            <ul>
                <li>If greaterCount(arr1, nums[i]) > greaterCount(arr2, nums[i]), append nums[i] to arr1.</li>
                <li>If greaterCount(arr1, nums[i]) < greaterCount(arr2, nums[i]), append nums[i] to arr2.</li>
                <li>If greaterCount(arr1, nums[i]) == greaterCount(arr2, nums[i]), append nums[i] to the array with a lesser number of elements.</li>
                <li>If there is still a tie, append nums[i] to arr1.</li>
            </ul>

            <p>The array result is formed by concatenating the arrays arr1 and arr2. For example, if arr1 == [1,2,3] and arr2 == [4,5,6], then result = [1,2,3,4,5,6].</p>

            <div>
                <h2>Enter Numbers (Separated by Commas):</h2>
                <asp:TextBox ID="txtNumbers" runat="server" Width="300px"></asp:TextBox>
                <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
                <br /><br />
                <asp:Label ID="lblResult" runat="server"></asp:Label>
            </div>

        </div>
    </form>
</body>
</html>