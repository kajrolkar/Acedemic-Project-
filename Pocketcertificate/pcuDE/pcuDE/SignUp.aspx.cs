using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Security.Cryptography;
using System.Text;
using System.Net.Mail;


namespace pcuDE
{
    public partial class SignUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           


        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            string username = Username.Text;
            string pwd = txtPin.Text.ToString();
            string pass = encryption(pwd);
            if(username.Length>0 && pwd.Length>0)
            {
                SqlConnection con = new SqlConnection("Data Source=.\\KARAN;Initial Catalog=Data;Integrated Security=True");
                String password = encryption(pwd);
                con.Open();
                string search = "SELECT * FROM DataConstomer WHERE(id='" + username + "');";
                SqlCommand cmds = new SqlCommand(search, con);
                SqlDataReader sqldrs = cmds.ExecuteReader();
                if (sqldrs.Read())
                {
                    String passed = (string)sqldrs["pin"];
                    check.Text = "Username Already Taken";
                    sqldrs.Close();
                }
                else
                {
                    try
                    {
                        sqldrs.Close();
                        SqlCommand cmd = new SqlCommand("INSERT INTO DataConstomer(id,dob,email,pin) VALUES(@id,@dob,@email,@pin);", con);
                        cmd.Parameters.AddWithValue("@id", Username.Text);
                        cmd.Parameters.AddWithValue("@dob", txtDob.Text);
                        cmd.Parameters.AddWithValue("@email", txtMail.Text);
                        cmd.Parameters.AddWithValue("@pin",password);
                        cmd.ExecuteNonQuery();
                       SendEmail();
                      
                        String message = "Saved Succesfully";
                        check.Text = message.ToString();
                        Username.Text = "";
                        txtDob.Text = "";
                        txtMail.Text = "";
                        txtPin.Text = "";
                        Response.Redirect("Login.aspx");
                    }
                    catch(Exception ex)
                    {
                        /*check.Text = ex.ToString();*/
                    }
                    con.Close();


                    
                }
            }
            else
            {
                String message = "ALL filed will be empty";
                check.Text = message.ToString();
            }
           
        }

        public void SendEmail()
        {
            using (MailMessage mail = new MailMessage())
            {
                mail.From = new MailAddress("karankajrolkar@gmail.com");
                mail.To.Add(txtMail.Text);
                mail.Subject = "Your's Credientials";
                mail.Body = "<html><body><h1 align='center' color='Red'>Welcome to Digital Locker</h1><p><b>Your Username is:</b>" + Username.Text + "</p></br><p><b>Your pin is:</b>" + txtPin.Text.ToString() + "</p></body></html>";
               
                mail.IsBodyHtml = true;


                SmtpClient smtp = new SmtpClient("smtp.gmail.com", 587);
                {
                    smtp.Credentials = new System.Net.NetworkCredential("karankajrolkar@gmail.com", "sanjay@12");
                    smtp.EnableSsl = true;
                    smtp.Send(mail);
                    check.Text = "mail send";
                }
            }
        }

        public string encryption(string pwd)
        {
            MD5CryptoServiceProvider md5 = new MD5CryptoServiceProvider();
            byte[] encrypt;
            UTF8Encoding encode = new UTF8Encoding();
            encrypt = md5.ComputeHash(encode.GetBytes(pwd));
            StringBuilder encryptedData = new StringBuilder();
            for(int i=0;i<encrypt.Length;i++)
            {
                encryptedData.Append(encrypt[i].ToString());

            }
            return encryptedData.ToString();
        }
    }
}