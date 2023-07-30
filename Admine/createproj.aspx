<%@ Page Language="C#" MasterPageFile="~/Admine/Admin.master" AutoEventWireup="true" CodeFile="createproj.aspx.cs" Inherits="Admine_createproj" Title="Untitled Page" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style27
        {
            width: 100%;
        }
        .style29
        {
        }
        .style30
        {
            width: 275px;
        }
        .style31
        {
            width: 275px;
            height: 5px;
        }
        .style32
        {
            height: 5px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Label2" runat="server" Font-Names="Magneto" Font-Size="X-Large" 
        ForeColor="Blue" Text="Enter Project Details"></asp:Label>
    <br />
    <br />
    <table class="style27">
        <tr>
            <td class="style30">
                ProjectId:</td>
            <td>
                <asp:TextBox ID="txtid" runat="server" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style30">
                Project Name:</td>
            <td>
                <asp:TextBox ID="txt_prjname" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style31">
                Started Date:</td>
            <td class="style32">
                <asp:TextBox ID="txt_stddate" runat="server"></asp:TextBox>
                <cc1:calendarextender ID="txt_stddate_CalendarExtender" runat="server" 
                Enabled="True" TargetControlID="txt_stddate" Format="dd/MM/yyyy">
            </cc1:calendarextender>
            </td>
            <td class="style30">
                Estimated End Date:</td>
            <td>
                <asp:TextBox ID="txt_estdate" runat="server"></asp:TextBox>
                <cc1:calendarextender ID="txt_estdate_Calendarextender1" runat="server" 
                Enabled="True" TargetControlID="txt_estdate" Format="dd/MM/yyyy">
            </cc1:calendarextender>
            </td>
        </tr>
        <tr>
            <td class="style30">
                Client Name:</td>
            <td>
                <asp:TextBox ID="txt_cname" runat="server"></asp:TextBox>
            </td>
            <td class="style30">
                Client Location:</td>
            <td>
                <asp:TextBox ID="txt_cln" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style30">
                Address:</td>
            <td>
                <asp:TextBox ID="txt_add" runat="server"></asp:TextBox>
            </td>
            <td class="style30">
                Point Of Contact:</td>
            <td>
                <asp:TextBox ID="txt_poc" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style30">
                Estimated Cost:</td>
            <td>
                <asp:TextBox ID="txt_estcost" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style30">
                Type:</td>
            <td>
                <asp:RadioButtonList ID="rdb_typ" runat="server">
                    <asp:ListItem>Fix Bid</asp:ListItem>
                    <asp:ListItem>T&amp;M</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td class="style30">
                Resource Required:</td>
            <td>
                <asp:TextBox ID="txt_resreq" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style30">
                Pay For Manager:</td>
            <td>
                <asp:TextBox ID="txt_paymagr" runat="server"></asp:TextBox>
            </td>
            <td class="style30">
                Pay For Employee:</td>
            <td>
                <asp:TextBox ID="txt_payemp" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style30">
                Tecnology Required:</td>
            <td>
                <asp:DropDownList ID="dd_tec" runat="server">
                    <asp:ListItem>Java</asp:ListItem>
                    <asp:ListItem>.Net</asp:ListItem>
                    <asp:ListItem>SAP</asp:ListItem>
                    <asp:ListItem>OTHERS</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style30">
                DataBase Required:</td>
            <td>
                <asp:DropDownList ID="dd_database" runat="server">
                    <asp:ListItem>Sql 2005</asp:ListItem>
                    <asp:ListItem>Oracle</asp:ListItem>
                    <asp:ListItem>Ms-Access</asp:ListItem>
                    <asp:ListItem>My Sql</asp:ListItem>
                    <asp:ListItem>OTHERS</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style30">
                Assining To:</td>
            <td>
                <asp:DropDownList ID="dd_ass" runat="server" Height="17px" Width="171px" 
                    >
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style29" colspan="2">
                 <asp:Button ID="Button1" 
                    style="position:absolute; top: 533px; left: 402px; right: 438px; height: 32px;" 
                    runat="server" Text="Create" onclick="Button1_Click" />
                <br />
                <br />
            </td>
        </tr>
    </table>
</asp:Content>

