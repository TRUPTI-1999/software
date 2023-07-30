using System;
using System.Data;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Net;
using System.Net.Mail;

/// <summary>
/// Summary description for Mailing
/// </summary>
public class Mailing
{



    public static bool SendMail(string Tomailid, string subject, string Body)
    {
        SmtpClient smtp = new SmtpClient("smtp.gmail.com", 587);
        smtp.Credentials = new NetworkCredential("singhakit@gmail.com", "goldesingh19");
        MailMessage msg = new MailMessage("singhakit@gmail.com", Tomailid);
        msg.Subject = subject;
        msg.Body = Body;
        msg.IsBodyHtml = true;
        smtp.EnableSsl = true;
        smtp.Send(msg);
        return true;
	}
}
