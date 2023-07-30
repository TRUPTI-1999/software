<%@ Page Language="C#" MasterPageFile="~/Admine/Admin.master" AutoEventWireup="true" CodeFile="add.aspx.cs" Inherits="Admine_add" Title="Untitled Page" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style27
        {
            width: 100%;
            height: 413px;
        }
        .style28
        {
            width: 243px;
        }
        .style29
        {
            width: 183px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style27">
        <tr>
            <td style="color: #0000FF; font-size: x-large;" class="style28">
                ADD EMPLOYEE:<br />
                                </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
           
            <td class="style28">
                &nbsp;Employee ID:</td>
            <td>
                <asp:TextBox ID="txtid" runat="server" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
         <td class="style28">
                &nbsp;First Name:</td>
            <td>
                <asp:TextBox ID="txt_fname" runat="server"></asp:TextBox>
            </td>
            <td class="style29">
                Last Name:</td>
            <td>
                <asp:TextBox ID="txt_lname" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style28">
                Password:</td>
            <td>
                <asp:TextBox ID="txt_psw" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style28">
                Gender:</td>
            <td>
                <asp:RadioButtonList ID="rdb_gender" runat="server"   AutoPostBack="True">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td class="style28">
                Phno:</td>
            <td>
                <asp:TextBox ID="txt_pno" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style28">
                Email:</td>
            <td>
                <asp:TextBox ID="txt_email" runat="server"></asp:TextBox>
            </td>
            <td class="style29">
                Alt Email:</td>
            <td>
                <asp:TextBox ID="txt_aitmail" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style28">
                Experence:</td>
            <td>
                <asp:TextBox ID="txt_exc" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style28">
                Date Of Join:</td>
            <td>
                <asp:TextBox ID="txt_doj" runat="server"></asp:TextBox>
                <cc1:calendarextender ID="txt_doj_CalendarExtender" runat="server" 
                Enabled="True" TargetControlID="txt_doj" Format="dd/MM/yyyy">
            </cc1:calendarextender>
            </td>
        </tr>
        <tr>
            <td class="style28">
                Address:</td>
            <td>
                <asp:TextBox ID="txt_adderss" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style28">
                City:</td>
            <td>
                <asp:TextBox ID="txt_city" runat="server"></asp:TextBox>
            </td>
            <td class="style29">
                State:</td>
            <td>
                <asp:TextBox ID="txt_state" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style28">
                Country:</td>
            <td>
                <asp:TextBox ID="txt_county" runat="server"></asp:TextBox>
            </td>
            <td class="style29">
                PinCode:</td>
            <td>
                <asp:TextBox ID="txt_pincde" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style28">
                Position:</td>
            <td>
                <asp:DropDownList ID="txt_posn" runat="server">
                    <asp:ListItem>MANAGER</asp:ListItem>
                    <asp:ListItem>EMPLOYEE</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style29">
                Status:</td>
            <td>
                <asp:DropDownList ID="ddlstatus" runat="server" Height="16px" Width="100px">
                    <asp:ListItem>Active</asp:ListItem>
                    <asp:ListItem>Inactive</asp:ListItem>
                </asp:DropDownList>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                
                <asp:Button ID="btn_insert" style="position:absolute; top: 553px; left: 369px; width: 128px;" 
                    runat="server" Text="Insert" onclick="btn_insert_Click" />
                
            </td>
        </tr>
    </table>
    <br />
</asp:Content>

