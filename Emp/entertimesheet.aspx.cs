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

public partial class Emp_entertimesheet : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Time"].ConnectionString);
    SqlCommand cmd, cmd1;
    SqlDataReader dr;
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            
                txt_date.Text = DateTime.Today.ToString("dd/MM/yyyy");
           
            int id = Convert.ToInt32(Session["firstname"].ToString());
            con.Open();
            
            string sql = "select * from assgto where empid=" + id ;
            DataSet ds = new DataSet();
            ds = DAL.SqlHelper.ExecuteDataset(clsConnection.Connection, CommandType.Text, sql);
            
            ddl_pname.DataTextField = "projectname";
            ddl_pname.DataValueField = "projectid";

            ddl_pname.DataSource = ds;
            ddl_pname.DataBind();
            con.Close();

        }
    }
    
    protected void Button1_Click1(object sender, EventArgs e)
    {
        con.Open();
        int i = 0;
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "select count(allocateid) from assgto ";
        cmd.Connection = con;
        i = Convert.ToInt32(cmd.ExecuteScalar());
        i = i + 1;
        con.Close();
        con.Open();
        string eid = Session["firstname"].ToString();
        string sql = "select * from timesheet where empid='" + eid + "' and date='" + txt_date.Text + "'";
        SqlDataAdapter dqt = new SqlDataAdapter(sql, con);
        DataTable dt = new DataTable();
        dqt.Fill(dt);
        if (dt.Rows.Count == 0)
        {

            string pid = ddl_pname.Text;
            string date = txt_date.Text;
            string anareq = txt_anareq.Text;
            string anal2 = txt2_anal.Text;
            string desng1 = txt1_desg.Text;
            string desng2 = txt2_design.Text;
            string devlp1 = txt1_devlp.Text;
            string devlp2 = txt_2devlop.Text;
            string task = txt_task.Text;
            string bug = txt_bug.Text;
            string test1 = txt1_testng.Text;
            string test2 = txt2_tesng.Text;
            string test3 = txt3_tesng.Text;
            string test4 = txt4_tesng.Text;
            string status = ddlstatus.Text;


            int total = int.Parse(anareq.ToString()) +
            int.Parse(anal2.ToString()) +
            int.Parse(desng1.ToString()) +
            int.Parse(desng2.ToString()) +
            int.Parse(devlp1.ToString()) +
            int.Parse(devlp2.ToString()) +
            int.Parse(task.ToString()) +
            int.Parse(bug.ToString()) +
            int.Parse(test1.ToString()) +
            int.Parse(test2.ToString()) +
            int.Parse(test3.ToString()) +
            int.Parse(test4.ToString());

            if (total <= 9)
            {
                cmd1 = new SqlCommand("insert into timesheet values("+ i +",'" + eid + "','" + pid + "','" + date + "','" + anareq + "','" + anal2 + "','" + desng1 + "','" + desng2 + "','" + devlp1 + "','" + devlp2 + "','" + task + "','" + bug + "','" + test1 + "','" + test2 + "','" + test3 + "','" + test4 + "'," + total + ",'Entered')", con);
                cmd1.ExecuteNonQuery();
                // cmd = new SqlCommand("update timesheet set totaltime=" + total + " where empid='" + eid + "'", con);
                //cmd.ExecuteNonQuery();
                Response.Write("<script>alert('Today's Time Sheet is Entered ')</script>");
            }
            else
            {
                Response.Write("<script>alert('Working Time Should Be Less Than 9hr Per Day ')</script>");
            
            }
        }
        else
        {
            Response.Write("<script>alert('Sorry Already Yor Are Entered Today Timesheet')</script>");
          
        }
        con.Close();
    
    }
}


