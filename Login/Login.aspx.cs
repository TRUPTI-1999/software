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

public partial class Login_Login : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Time"].ConnectionString);
    SqlCommand cmd;
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    
    {
       
        if (txt_name.Text == "admin" && txt_psw.Text == "admin")
        {
            Response.Redirect("~/Admine/Home.aspx");
        }
        con.Open();
        string emp_id = txt_name.Text;
        string psw = txt_psw.Text;
        string sql = "select * from empinsert where empid=" + emp_id + " and paswd='" + psw + "'";
        SqlDataAdapter da = new SqlDataAdapter(sql, con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count == 1)
        {
           Session["firstname"] = emp_id;
            if (dt.Rows[0]["position"].ToString() == "MANAGER")
            {
                Response.Redirect("~/Manager/Man Home.aspx");
            }
            else if (dt.Rows[0]["position"].ToString() == "EMPLOYEE")
            {
                Response.Redirect("~/Emp/Home.aspx");
            }
            
            else
            {
                Response.Write("invalid");
            }
            }
        }
        


        

    }
   
