using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Iletisim
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnSend_Click(object sender, EventArgs e)
        {
            var mail = new MailMessage();
            
            mail.To.Add("gönderimyapılacakmail@mail.com");

            mail.From = new MailAddress("hangimailegönderimyapılacak@mail.com", "Site adı iletişim bölümü", System.Text.Encoding.UTF8);
            mail.Subject = string.Format("{0} {1} kullanıcıdan geri bildirim", TxtFirstName.Text, TxtLastName);
            mail.SubjectEncoding = System.Text.Encoding.UTF8;

            mail.Body = TxtMessage.Text;
            mail.BodyEncoding = System.Text.Encoding.UTF8;
            mail.IsBodyHtml = true;

            var client = new SmtpClient();
            client.Credentials = new NetworkCredential("gonderimmailadres@mail.com", "gonderimSifresi");
            client.Port = 587;
            client.Host = "smtp.gmail.com";
            client.EnableSsl = true;

            try
            {
                client.Send(mail);
                ClientScript.RegisterStartupScript(Page.GetType(),"UserMessage","<script>alert('Geri Bildirim İçin Teşşekür Ederiz.')</script>");
            }
            catch
            {
                //ClientScript.RegisterStartupScript(Page.GetType(), "UserMessage", "<script>alert('Hata Oluştu')</script>");
            }
        }
    }
}