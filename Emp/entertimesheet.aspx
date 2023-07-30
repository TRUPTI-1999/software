<%@ Page Language="C#" MasterPageFile="~/Emp/emp.master" AutoEventWireup="true" CodeFile="entertimesheet.aspx.cs" Inherits="Emp_entertimesheet" Title="Untitled Page" %>

<script runat="server">

    
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style4
    {
        width: 387px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td colspan="2">
                <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Italic="True" 
                    Font-Names="Magneto" Font-Size="XX-Large" ForeColor="#0033CC" 
                    Text="Enter Your Timesheet"></asp:Label>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td class="style4">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Project Name:</td>
            <td>
                <asp:DropDownList ID="ddl_pname" runat="server" AutoPostBack="True">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                Date:</td>
            <td>
                <asp:TextBox ID="txt_date" runat="server" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style4">
                <asp:Label ID="Label4" runat="server" Font-Names="Magneto" Font-Size="X-Large" 
                    ForeColor="#0033CC" Text="Analasys"></asp:Label>
                <br />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                Analasys Requirment:</td>
            <td>
                <asp:TextBox ID="txt_anareq" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                Preparing Functional Design Document:</td>
            <td>
                <asp:TextBox ID="txt2_anal" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style4">
                <asp:Label ID="Label5" runat="server" Font-Names="Magneto" Font-Size="X-Large" 
                    ForeColor="#0033CC" Text="Design"></asp:Label>
                <br />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                Preparing High Level Design:</td>
            <td>
                <asp:TextBox ID="txt1_desg" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                Preparing&nbsp; Loe Level Design:</td>
            <td>
                <asp:TextBox ID="txt2_design" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style4">
                <asp:Label ID="Label6" runat="server" Font-Names="Magneto" Font-Size="X-Large" 
                    ForeColor="#0033CC" Text="Development"></asp:Label>
                <br />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                Writing Code:</td>
            <td>
                <asp:TextBox ID="txt1_devlp" runat="server"></asp:TextBox>
            </td>
            <td class="style4">
                &nbsp;&nbsp;
                Preparing Technical Design Document:</td>
            <td>
                <asp:TextBox ID="txt_2devlop" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style4">
                <asp:Label ID="Label7" runat="server" Font-Names="Magneto" Font-Size="X-Large" 
                    ForeColor="#0033CC" Text="Production Support"></asp:Label>
                <br />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                Performing Routing Task:</td>
            <td>
                <asp:TextBox ID="txt_task" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style4">
                <asp:Label ID="Label8" runat="server" Font-Names="Magneto" Font-Size="X-Large" 
                    ForeColor="#0033CC" Text="Bug Fixing"></asp:Label>
                <br />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                Analasys &amp; Fixing Bug:</td>
            <td>
                <asp:TextBox ID="txt_bug" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style4">
                <asp:Label ID="Label9" runat="server" Font-Names="Magneto" Font-Size="X-Large" 
                    ForeColor="#0033CC" Text="Testing"></asp:Label>
                <br />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                Unit Testing:</td>
            <td>
                <asp:TextBox ID="txt1_testng" runat="server"></asp:TextBox>
            </td>
             <td class="style4">
               &nbsp;&nbsp;
                System Testing:</td>
            <td>
                <asp:TextBox ID="txt2_tesng" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                Integrity Testing:</td>
            <td>
                <asp:TextBox ID="txt3_tesng" runat="server"></asp:TextBox>
            </td>
            <td class="style4">
               &nbsp;&nbsp;
                Preparing Test cases:</td>
            <td>
                <asp:TextBox ID="txt4_tesng" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Status:</td>
            <td>
                <asp:DropDownList ID="ddlstatus" runat="server" Height="16px" Width="100px">
                    <asp:ListItem>Entered</asp:ListItem>
                </asp:DropDownList>&nbsp;</td>
        </tr>
        <tr>
            <td  colspan="2">
                <asp:Button ID="Button1" runat="server" 
                    style="position :absolute; top: 802px; left: 547px;"          Text="Save" 
                    Width="136px" onclick="Button1_Click1" />
                
            </td>
        </tr>
        </table>
</asp:Content>

