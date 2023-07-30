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

public partial class Manager_allocate : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Time"].ConnectionString);
    string name;
    string sql1, empname, pname;
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            SqlCommand cmd;
            cmd = new SqlCommand("select * from empinsert where position='EMPLOYEE' and status='Active'", con);
            con.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            ddl_ass.Items.Clear();
            ddl_ass.Items.Insert(0, new ListItem("", ""));

            while (reader.Read())
            {
                ddl_ass.Items.Add(reader[0].ToString());
            }

            con.Close();

            int id = Convert.ToInt32(Session["firstname"]);
            string sql1 = "select * from createproj where assineto=" + id;
              cmd = new SqlCommand(sql1, con);
            con.Open();
             reader = cmd.ExecuteReader();
             ddl_pname.Items.Clear();
             ddl_pname.Items.Insert(0, new ListItem("", ""));

            while (reader.Read())
            {
                ddl_pname.Items.Add(reader[0].ToString());
            }

            con.Close();
            con.Open();
         id = Convert.ToInt32(Session["firstname"]);
         con.Close();
            sql1 = "select * from empinsert where empid=" + id;
            cmd = new SqlCommand(sql1, con);
            con.Open();
            reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                name = reader[1].ToString();
            }
            txtallocated.Text = name;
            con.Close();
        }
                
    }
    
    protected void btn_click_Click(object sender, EventArgs e)
    {
        con.Open();
        int id = Convert.ToInt32(Session["firstname"]);

        string proid = ddl_pname.Text;
        string status = ddlstatus.Text;
        int i = 0;
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "select count(allocateid) from assgto ";
        cmd.Connection = con;
        i = Convert.ToInt32(cmd.ExecuteScalar());
        i = i + 1;
        
        string sql3 = "insert into assgto values(" +i +",'"+ txtallocated.Text +"','"+ proid + "','" + txt_prjname.Text  + "'," + ddl_ass.Text+",'"+ txtname.Text  + "','" + status + "')";

        DAL.SqlHelper.ExecuteDataset(clsConnection.Connection, CommandType.Text, sql3);

        
        string sql4 = "update empinsert set status='Inactive' where empid=" + ddl_ass.Text;

        SqlCommand cmd1 = new SqlCommand(sql4, con);
        cmd1.CommandType = CommandType.Text;
        cmd1.CommandText = sql4;
        cmd1.ExecuteNonQuery();
        con.Close();
        Response.Write("<script>alert('Project is Allocated ')</script>");

    }

    protected void ddl_pname_SelectedIndexChanged(object sender, EventArgs e)
    {
       string sql1 = "select * from createproj where projid=" + ddl_pname.Text ;
       SqlCommand  cmd = new SqlCommand(sql1, con);
        con.Open();
        SqlDataReader reader = cmd.ExecuteReader();
        while (reader.Read())
        {
            txt_prjname.Text  = reader[1].ToString();
        }
        con.Close();
    }
    protected void ddl_ass_SelectedIndexChanged(object sender, EventArgs e)
    {
        sql1 = "select * from empinsert where empid=" + ddl_ass.Text ;
        SqlCommand    cmd = new SqlCommand(sql1, con);
        con.Open();
        SqlDataReader reader = cmd.ExecuteReader();
        while (reader.Read())
        {
            txtname.Text  = reader[1].ToString();
        }
        con.Close();
    }
}

      