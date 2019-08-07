<%--Day 8 : Exercise_7 Repeater and DataList Control
Created By: Pranit Chimurkar
Date: 2019/08/02--%>
<%@ Page Title="Home Page" Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Exercise_7._Default" %>

<!DOCTYPE html>
<html>
    <head>
        <title>Repeater and DataList</title>
    </head>
    <body>
    <form id="form1" runat="server">
    <div style="text-align: center;margin-top:250px">
    <%--DropDownList--%>
    <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" style="margin-left: 116">
            <asp:ListItem Value="0">Please Select</asp:ListItem>
            <asp:ListItem Value="FirstName">FirstName </asp:ListItem>
            <asp:ListItem Value="Salary">Salary</asp:ListItem>
            <asp:ListItem Value="BirthDate">BirthDate</asp:ListItem>
    </asp:DropDownList>

    <asp:Button ID="BtnDisplay" runat="server" OnClick="ButtonDisplay" Text="Display Records" /><br />

    <%--Repeater--%>
    <asp:Repeater ID="Repeater1" runat="server" OnItemCommand="Repeater1_ItemCommand">
    <HeaderTemplate>
        <table cellspacing="0" rules="all" border="1">
            <tr>
                <th>FirstName</th>
                <th>LastName</th>
                <th>BirthDate</th>
                <th>Salary</th>                
            </tr>
    </HeaderTemplate>
      <ItemTemplate>
        <tr>
            <td><asp:Label ID="lblName" runat="server" Text='<%# Eval("FirstName") %>' /></td>
            <td><asp:Label ID="lblAddress" runat="server" Text='<%# Eval("LastName") %>' /></td>
            <td><asp:Label ID="lblBirthday" runat="server" Text='<%# Eval("BirthDate") %>' /></td>
            <td><asp:Label ID="lblSalary" runat="server" Text='<%# Eval("Salary") %>' /></td>
        </tr>
    </ItemTemplate>
    </asp:Repeater>
   <br /><br />
     
    <%--DataList--%>
    <asp:DataList ID="DataList1" runat="server" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
        <HeaderTemplate>
        <table cellspacing="0" rules="all" border="1">
            <tr>
                <th>FirstName</th>
                <th>LastName</th>
                <th>BirthDate</th>
                <th>Salary</th>
            </tr>
            <br /><br />
    </HeaderTemplate>
    <ItemTemplate>
        <tr>
            <td><asp:Label ID="lblName" runat="server" Text='<%# Eval("FirstName") %>' /></td>
            <td><asp:Label ID="lblAddress" runat="server" Text='<%# Eval("LastName") %>' /></td>
            <td><asp:Label ID="lblBirthday" runat="server" Text='<%# Eval("BirthDate") %>' /></td>
            <td><asp:Label ID="lblSalary" runat="server" Text='<%# Eval("Salary") %>' /></td>
        </tr>
    </ItemTemplate>
    </asp:DataList><br />
        <asp:LinkButton runat="server" ID="BtnOne" Text="1" onclick="Btn1_Click"></asp:LinkButton>
        <asp:LinkButton runat="server" ID="BtnTwo" Text="2" onclick="Btn2_Click"></asp:LinkButton>
</div>
</form>   
</body>
</html>