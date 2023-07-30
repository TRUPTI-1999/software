<%@ Page Language="C#" MasterPageFile="~/Emp/emp.master" AutoEventWireup="true" CodeFile="Viewtimesh.aspx.cs" Inherits="Emp_Viewtimesh" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
    <table class="style1">
    <tr>
        <td>
            <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Italic="True" 
                Font-Names="Magneto" Font-Size="X-Large" ForeColor="#0033CC" 
                Text="Your Time Sheet Details"></asp:Label>
            <br />
            <br />
        </td>
    </tr>
    <tr>
        <td>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                BorderColor="#E7E7FF" BackColor="White" BorderStyle="None" 
                BorderWidth="1px" CellPadding="3" GridLines="Horizontal">
                <FooterStyle BorderStyle="None" BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
            <Columns>
            <asp:BoundField DataField="timesheetid" HeaderText="ID" />
            <asp:BoundField DataField="empid" HeaderText="Emp Id" />
            <asp:BoundField DataField="projectid" HeaderText="Project Id" />
            <asp:BoundField DataField="date" HeaderText="Date" />
            <asp:BoundField DataField="totaltime" HeaderText="Total Time" />
            <asp:BoundField DataField="status" HeaderText="Status" />
            
            </Columns>
                <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                <AlternatingRowStyle BackColor="#F7F7F7" />
            </asp:GridView>
        </td>
    </tr>
</table>


</asp:Content>


