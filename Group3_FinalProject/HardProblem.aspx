<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HardProblem.aspx.cs" Inherits="Group3_FinalProject.HardProblem" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Hard Problem</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Select a LeetCode Problem</h2>
            <asp:DropDownList ID="ddlProblems" runat="server" OnSelectedIndexChanged="ddlProblems_SelectedIndexChanged">
                <asp:ListItem Text="Easy Problem" Value="1"></asp:ListItem>
                <asp:ListItem Text="Medium Problem" Value="1"></asp:ListItem>
                <asp:ListItem Text="Hard Problem" Value="1"></asp:ListItem>
            </asp:DropDownList>
            <br />
            <asp:Button ID="btnSolve" runat="server" Text="Solve Problem" OnClick="btnSolve_Click" />
            <br />
            <div>
                <h2>Problem Description</h2>
                <asp:Label ID="lblDescription" runat="server" Text=""></asp:Label>
            </div>
            <br />
            <div>
                <h2>Test Case</h2>
                <asp:Label ID="lblTestCase" runat="server" Text=""></asp:Label>
            </div>
            <br />
            <div>
                <h2>Solution</h2>
                <asp:Label ID="lblSolution" runat="server" Text=""></asp:Label>
            </div>
        </div>
    </form>
</body>
</html>
