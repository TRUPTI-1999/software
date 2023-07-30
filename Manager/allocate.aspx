<%@ Page Language="C#" MasterPageFile="~/Manager/Mastermanager.master" AutoEventWireup="true" CodeFile="allocate.aspx.cs" Inherits="Manager_allocate" Title="Untitled Page" %>

<script runat="server">

  
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style5
        {
            height: 36px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1" __designer:mapid="78">
        <tr __designer:mapid="79">
            <td __designer:mapid="7a">
                <asp:Label ID="Label3" runat="server" Text="Project Name"></asp:Label>
                :</td>
            <td __designer:mapid="7c">
                <asp:DropDownList ID="ddl_pname" runat="server" AutoPostBack="True" 
                    onselectedindexchanged="ddl_pname_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
             <td class="style30">
                Project Name:</td>
            <td>
                <asp:TextBox ID="txt_prjname" runat="server"></asp:TextBox>
            </td>

        </tr>
        <tr __designer:mapid="7e">
            <td class="style5" __designer:mapid="7f">
                <asp:Label ID="Label2" runat="server" Text="Assign To"></asp:Label>
                :</td>

            <td class="style5" __designer:mapid="81">
                <asp:DropDownList ID="ddl_ass" runat="server" AutoPostBack="True" 
                    onselectedindexchanged="ddl_ass_SelectedIndexChanged">
                </asp:DropDownList>
            </td>

             <td class="style30">
                 Employee Name:</td>
            <td>
                <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr __designer:mapid="83">
            <td __designer:mapid="84">
                Status:</td>
            <td __designer:mapid="85">
                <asp:DropDownList ID="ddlstatus" runat="server" Height="16px" Width="100px">
                    <asp:ListItem>Active</asp:ListItem>
                    <asp:ListItem>Inactive</asp:ListItem>
                </asp:DropDownList>
                <td class="style30">
                 Allocated by:</td>
            <td>
                <asp:TextBox ID="txtallocated" runat="server" Enabled="False"></asp:TextBox>
                <td>
                    &nbsp;</td>
            </td>
        </tr>
        <tr __designer:mapid="87">
            <td colspan="2" __designer:mapid="88">
                <br __designer:mapid="89" />
                <asp:Button ID="btn_click" style="position:absolute; top: 314px; left: 352px;" 
                    runat="server" Text="Submit" onclick="btn_click_Click" />
                <br __designer:mapid="8b" />
                <br __designer:mapid="8c" />
                <br __designer:mapid="8d" />
                <br __designer:mapid="8e" />
                <br __designer:mapid="8f" />
            </td>
        </tr>
    </table>
</asp:Content>

