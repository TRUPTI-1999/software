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

public partial class Manager_release : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Time"].ConnectionString);
    string sql1, name;
    SqlCommand cmd;
    SqlDataReader reader;
    int aid,empid;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            int id = Convert.ToInt32(Session["firstname"]);
            con.Close();
            sql1 = "select * from empinsert where empid=" + id;
            cmd = new SqlCommand(sql1, con);
            con.Open();
            reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                name = reader[1].ToString();
            }
            con.Close();

            string sql = "select * from assgto where allocatedby='" + name + "' and status='Active'";
            DataSet ds = new DataSet();

            cmd = new SqlCommand(sql, con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            ds = new DataSet();
            da.Fill(ds);
            if (!object.Equals(ds, null))
            {
                if (ds.Tables[0].Rows.Count > 0)
                {
                    GridView1.DataSource = ds.Tables[0];
                    GridView1.DataBind();
                }

            }
        }
    }

    protected void OnSelectedIndexChanged(object sender, EventArgs e)
    {
         aid = Convert.ToInt32(GridView1.SelectedRow.Cells[0].Text);
         string patno = GridView1.SelectedRow.Cells[1].Text;
         string pname = GridView1.SelectedRow.Cells[2].Text;
         empid = Convert.ToInt32(GridView1.SelectedRow.Cells[3].Text);
        string allocateto = GridView1.SelectedRow.Cells[4].Text;
        string status = GridView1.SelectedRow.Cells[5].Text;
        DataTable dt = new DataTable();
        dt.Columns.AddRange(new DataColumn[6] { new DataColumn("allocateid", typeof(int)),
                    new DataColumn("projectid", typeof(int)),
                    new DataColumn("projectname", typeof(string)),
                    new DataColumn("empid", typeof(int)),
                     new DataColumn("allocateto", typeof(string)),
                      new DataColumn("status", typeof(string))});
        dt.Rows.Add(aid,patno, pname, empid,allocateto, status);
        FormView1.DataSource = dt;
        FormView1.DataBind();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        aid = Convert.ToInt32(GridView1.SelectedRow.Cells[0].Text);
        empid = Convert.ToInt32(GridView1.SelectedRow.Cells[3].Text);
        string sql = "update assgto set status='Inactive'where allocateid=" + aid ;
        con.Open();
        cmd = new SqlCommand(sql, con);
        cmd.ExecuteNonQuery();
        con.Close();
                      
        string sql1 = "update empinsert set status='Active'where empid=" +empid;
        con.Open();
        cmd = new SqlCommand(sql1, con);
        cmd.ExecuteNonQuery();
        con.Close();

      }
}

