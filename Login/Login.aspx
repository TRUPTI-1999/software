<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login_Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Start Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>

    <asp:TextBox ID="txt_name" style="position:absolute; top: 182px; left: 446px;" 
        runat="server"></asp:TextBox>
    <asp:TextBox ID="txt_psw" style="position:absolute; top: 254px; left: 445px;" 
        runat="server" TextMode="Password"></asp:TextBox>
    <asp:Label ID="Label1" style="position:absolute; top: 188px; left: 229px; height: 19px;" 
        runat="server" Text="Employee Id:" ForeColor="#0033CC"></asp:Label>
    <asp:Label ID="Label2" 
        style="position:absolute; top: 261px; left: 228px; height: 30px; width: 120px;" 
        runat="server" Text="Emp Password:" ForeColor="#0033CC"></asp:Label>
    <asp:Button ID="Button2" style="position:absolute; top: 346px; left: 353px; width: 67px; height: 26px;" 
        runat="server" Text="Submit" ForeColor="#0033CC" onclick="Button2_Click" />
  
    <asp:Label ID="Label3"  
        style="position:absolute; top: 50px; left: 221px; width: 460px; height: 36px;" 
        runat="server" Text="Software Company" Font-Bold="True" Font-Italic="True" 
        Font-Names="Magneto" Font-Size="XX-Large" ForeColor="#FF0066"></asp:Label>
    <asp:Label ID="Label4"  
        style="position:absolute; top: 112px; left: 221px; width: 331px; height: 36px;" 
        runat="server" Text="Welcome to Login page" Font-Bold="True" Font-Italic="True" 
        Font-Names="Magneto" Font-Size="X-Large" ForeColor="#0033CC"></asp:Label>
    
    </form>
</body>
</html>
