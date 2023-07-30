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

public partial class Admine_createproj : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Time"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            int i = 0;
            string sql2 = "select * from empinsert where position='MANAGER' and status='Active'";
            DataSet ds = new DataSet();
            ds = DAL.SqlHelper.ExecuteDataset(clsConnection.Connection, CommandType.Text, sql2);


            dd_ass.DataTextField = "firstname";
            dd_ass.DataValueField = "empid";
            dd_ass.DataSource = ds;
            dd_ass.DataBind();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "select count(projid) from createproj ";
            cmd.Connection = con;
            con.Open();
            i = Convert.ToInt32(cmd.ExecuteScalar());
            txtid.Text = i + 1 + "";
            con.Close();
            /* dr = cmd3.ExecuteReader();
            while(dr.Read())
            {
                dd_ass.Items.Add(dr[2].ToString());
            }*/
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        string name = txt_prjname.Text;
        string statdate = txt_stddate.Text;
        string estdate = txt_estdate.Text;
        string cname = txt_cname.Text;
        string clotn = txt_cln.Text;
        string add = txt_add.Text;
        string poc = txt_poc.Text;
        string estcost = txt_estcost.Text;
        string type = rdb_typ.Text;
        string req = txt_resreq.Text;
        string man = txt_paymagr.Text;
        string emp = txt_payemp.Text;
        string tche = dd_tec.Text;
        string database = dd_database.Text;
        string assn = dd_ass.Text;
      
            
            string sql = "insert into createproj values("+ txtid.Text  +",'"+ name + "','" + statdate + "','" + estdate + "','" + cname + "','" + clotn + "','" + add + "','" + poc + "','" + estcost +"','" + type + "','" + req + "','" + man + "','" + emp + "','" + tche + "','" + database + "','" + assn + "')" ;
            cmd.Connection = con;
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = sql;
            cmd.ExecuteNonQuery();

            string id = dd_ass.Text;
            string sql3 = "update empinsert set status='Inactive' where empid=" + id ;

            SqlCommand cmd1 = new SqlCommand(sql3, con);
            cmd1.CommandType = CommandType.Text;
            cmd1.CommandText = sql3;
            cmd1.ExecuteNonQuery();
            con.Close();
        
        
    }
        
     }
  