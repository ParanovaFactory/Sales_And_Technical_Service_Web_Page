<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/UserPage.Master" AutoEventWireup="true" CodeBehind="ProductTracking.aspx.cs" Inherits="SalesAndTechnicalServiceWeb.WebForms.ProductTracking" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:Label ID="Label1" runat="server" Font-Bold="True" Text="Product Serie No"></asp:Label>
    <asp:TextBox ID="TextBox1" runat="server" Font-Bold="True"></asp:TextBox>
    <asp:Button ID="Button1" runat="server" Text="Search" OnClick="Button1_Click" CssClass="btn btn-warning" />
    <br />

    <style>
        table {
            font-family: arial, sans-serif;
            border-collapse: collapse;
            width: 100%;
        }

        td, th {
            border: 1px solid #dddddd;
            text-align: left;
            padding: 8px;
        }

        tr:nth-child(even) {
            background-color: #dddddd;
        }
    </style>

    <table class="control control-form">
        <tr>
            <th>Process</th>
            <th>Problem</th>
            <th>Estimated Price</th>
            <th>Net Price</th>
        </tr>
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <tr>
                    <td><%# Eval("ProcessTitle") %></td>
                    <td><%# Eval("FaultProblem") %></td>
                    <td><%# Eval("FaultEstimatedPrice") %></td>
                    <td><%# Eval("FaultNetPrice") %></td>
                </tr>
            </ItemTemplate>
        </asp:Repeater>
    </table>
</asp:Content>
