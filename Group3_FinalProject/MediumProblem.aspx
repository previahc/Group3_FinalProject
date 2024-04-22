<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MediumProblem.aspx.cs" Inherits="Group3_FinalProject.MediumProblem" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Medium Question</title>
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
            
            <asp:HyperLink ID="lblTitle" runat="server" NavigateUrl="https://leetcode.com/problems/integer-to-roman/description/">12. Integer to Roman - Medium</asp:HyperLink>

            <p>Roman numerals are represented by seven different symbols: I, V, X, L, C, D and M.</p>

            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
                <Columns>
                    <asp:BoundField DataField="Symbol" HeaderText="Symbol" />
                    <asp:BoundField DataField="Value" HeaderText="Value" />
                </Columns>
            </asp:GridView>

            <p>For example, 2 is written as II in Roman numeral, just two one's added together. 12 is written as XII, which is simply X + II. The number 27 is written as XXVII, which is XX + V + II.</p>

            <p>Roman numerals are usually written largest to smallest from left to right. However, the numeral for four is not IIII. Instead, the number four is written as IV. 
                Because the one is before the five we subtract it making four. The same principle applies to the number nine, which is written as IX. There are six instances where subtraction is used:</p>

            <ul>
                <li>I can be placed before V (5) and X (10) to make 4 and 9.</li>
                <li>X can be placed before L (50) and C (100) to make 40 and 90.</li>
                <li>C can be placed before D (500) and M (1000) to make 400 and 900.</li>
            </ul>

            <p>Input an integer from 1 to 3999, and press GO for the correspondent number in roman numerics!</p>

            <asp:Table ID="tblSolution" runat="server">
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="lblInteger" runat="server" Text="Integer:"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox ID="txtInteger" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Button ID="btnSolution" runat="server" Text="GO" OnClick="ButtonSol_Click" />
                    </asp:TableCell>
                </asp:TableRow>

                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="lblRoman" runat="server" Text="Roman:"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox ID="txtRoman" runat="server"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
        
            <asp:Label ID="lblErrorMessage" runat="server" ForeColor="Red" BackColor="Yellow"></asp:Label>

        </div>
    </form>
</body>
</html>
