using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;

public partial class Admine_Delete : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Time"].ConnectionString);
    SqlCommand cmd, cmd1;
    SqlDataReader dr,dr1;
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
        cmd = new SqlCommand("select * from empinsert where position!='ADMIN'", con);
        dr1 = cmd.ExecuteReader();
        while (dr1.Read())
        {
            DropDownList1.Items.Add(dr1[0].ToString());
        }
        dr1.Close();
        con.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        cmd = new SqlCommand("select * from empinsert where empid="+DropDownList1.Text, con);
        dr = cmd.ExecuteReader();
        GridView1.DataSource = dr;
        GridView1.DataBind();
        dr.Close();
        con.Close();

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        con.Open();
        //cmd1 = new SqlCommand("delete from empinsert where uniqid=" + TextBox1.Text + "", con);
        cmd1 = new SqlCommand("update empinsert set status='Deleted' where empid="+DropDownList1.Text, con);
        cmd1.ExecuteNonQuery();

        SqlCommand cmd2 = new SqlCommand("update assgto set status='Deleted' where empid=" + DropDownList1.Text , con);
        cmd2.ExecuteNonQuery();

        SqlCommand cmd3 = new SqlCommand("update timesheet set status='Deleted' where empid=" + DropDownList1.Text , con);
        cmd2.ExecuteNonQuery();

        SqlCommand cmd4 = new SqlCommand("update billing set status='Deleted' where empid=" + DropDownList1.Text , con);
        cmd2.ExecuteNonQuery();
        Response.Write("Deleted");
        con.Close();
    }
    
}
