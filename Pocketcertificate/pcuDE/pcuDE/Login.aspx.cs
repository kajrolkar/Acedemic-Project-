using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Security.Cryptography;
using System.Text;
using System.Windows.Forms;
namespace pcuDE
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            String username = txtUsername.Text;
            String pwd = txtPin.Text.ToString();
            SqlConnection con = new SqlConnection("Data Source=.\\KARAN;Initial Catalog=Data;Integrated Security=True");
            con.Open();
            String passwords = Encryption(pwd);



            SqlCommand cmd = new SqlCommand("SELECT pin FROM DataConstomer WHERE id=@id;", con);
            cmd.Parameters.AddWithValue("@id", txtUsername.Text);
            DataSet ds = new DataSet();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            
            da.Fill(ds);
            cmd.ExecuteNonQuery();
            if (ds.Tables[0].Rows.Count == 0)
            {
                MessageBox.Show("Please try valid username Because it not valid id");
            }
            else {
                String checkpassword = ds.Tables[0].Rows[0]["pin"].ToString();

                if (checkpassword.Equals(passwords))
                {
                    Session["name"] = txtUsername.Text;
                    Response.Redirect("Dash.aspx");
                }
                else
                {
                    check.Text = "Invalid Login";
                }
            }

            con.Close();
            
           

        }

        public string Encryption(string pwd)
        {
            MD5CryptoServiceProvider md5 = new MD5CryptoServiceProvider();
            byte[] encrypt;
            UTF8Encoding encode = new UTF8Encoding();
            encrypt = md5.ComputeHash(encode.GetBytes(pwd));
            StringBuilder encryptedData = new StringBuilder();
            for (int i = 0; i < encrypt.Length; i++)
            {
                encryptedData.Append(encrypt[i].ToString());

            }
            return encryptedData.ToString();
        }
     

    }
}