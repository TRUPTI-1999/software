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

public partial class Admine_add : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Time"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    


    protected void Page_Load(object sender, EventArgs e)
    {
        int i = 0;
        if (con.State == ConnectionState.Closed)
        {
            con.Open();
        }
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "select count(empid) from empinsert ";
        cmd.Connection = con;
        i = Convert.ToInt32(cmd.ExecuteScalar());
        txtid.Text = i + 1 + "";
        con.Close();

    }
    protected void btn_insert_Click(object sender, EventArgs e)
    {
        try
        {
            con.Open();
            string fname = txt_fname.Text;
            string lname = txt_lname.Text;
            string sql = "insert into empinsert values(" + txtid.Text + ",'" + fname + "','" + lname + "','" + txt_psw.Text + "','" + rdb_gender.Text + "','" + txt_pno.Text + "','" + txt_email.Text + "','" + txt_aitmail.Text + "','" + txt_exc.Text + "','" + txt_doj.Text + "','" + txt_adderss.Text + "','" + txt_city.Text + "','" + txt_state.Text + "','" + txt_county.Text + "','" + txt_pincde.Text + "','" + txt_posn.Text + "','" + ddlstatus.Text + "')";
            cmd.Connection = con;
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = sql;
            cmd.ExecuteNonQuery();
            //int id = int.Parse(cmd.ExecuteScalar().ToString());
            //string genid = fname[0].ToString() + id + lname[0].ToString();

            //string sql1 = "update empinsert set empid='" + genid + "' where uniqid=" + id + " ";
            //SqlCommand cmd1 = new SqlCommand(sql1, con);
            //cmd1.CommandType = CommandType.Text;
            //cmd1.CommandText = sql1;
            //cmd1.ExecuteNonQuery();

            con.Close();
            Response.Write("<script>alert('Employee Details are Inserted to the Database')</script>");
           

        }
        catch (Exception ex)
        {
            Response.Write("handlor" + ex.Message.ToString());
        }
           
    }
}
    
        
