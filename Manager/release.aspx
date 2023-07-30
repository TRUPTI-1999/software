<%@ Page Title="" Language="C#" MasterPageFile="~/Manager/Mastermanager.master" AutoEventWireup="true" CodeFile="release.aspx.cs" Inherits="Manager_release" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1"  
        style="position :absolute; top: 177px; left: 25px; height: 157px;"       
        runat="server" AutoGenerateColumns="False" 
        OnSelectedIndexChanged="OnSelectedIndexChanged" Width="547px" 
        CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
    <Columns>
        <asp:BoundField DataField="allocateid" HeaderText="Allocate ID" />
        <asp:BoundField DataField="projectid" HeaderText="Project ID" />
        <asp:BoundField DataField="projectname" HeaderText="Project Name" />
         <asp:BoundField DataField="empid" HeaderText="Emp ID" />
         <asp:BoundField DataField="allocateto" HeaderText="Allocate To" />
        <asp:BoundField DataField="Status" HeaderText="Status" />
         
       <asp:ButtonField Text="Select" CommandName="Select"/>
    </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
</asp:GridView>
    <asp:FormView ID="FormView1" 
        style="position :absolute; top: 185px; left: 582px; width: 321px; height: 111px;"      
        runat="server">
    <ItemTemplate>
        <table border="0" cellpadding="0" cellspacing="0">
            <tr>
                <td>
                    Project ID:
                </td>
                <td>
                    <%# Eval("projectid") %>
                </td>
            </tr>
            <tr>
                <td>
                    Project Name:  
                       
                </td>
                <td>
                    <%# Eval("projectname") %>
                </td>
            </tr>
             <tr>
                <td>
                   Emp ID:      
                </td>
                <td>
                    <%# Eval("empid") %>
                </td>
            </tr>
            <tr>
                <td>
                   Allocate To:      
                </td>
                <td>
                    <%# Eval("allocateto") %>
                </td>
            </tr>
            <tr>
                <td>
                    Status:     
                </td>
                <td>
                    <%# Eval("status") %>
                </td>
            </tr>
        </table>
    </ItemTemplate>
</asp:FormView>
<asp:TextBox ID="TextBox1" 
        
        style="position :absolute; top: 312px; left: 659px; height: 16px;" runat="server" 
        Visible="False"></asp:TextBox>



    <asp:Button ID="Button1"  
        style="position :absolute; top: 337px; left: 659px; width: 126px;"          
        runat="server" Text="Release" onclick="Button1_Click" />



</asp:Content>

