using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Data;
using System.IO;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using System.Security.Cryptography;

namespace pcuDE
{
    public partial class Dash : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=.\\KARAN;Initial Catalog=Data;Integrated Security=True");
        static String imageLink;

        protected void Page_Load(object sender, EventArgs e)
        {
            name.Text = (String)Session["name"];
            byte[] salt = GenerateSalt();
            Session["salting"]=(byte[]) salt;
            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT * FROM DataConstomer where id='" + name.Text+"';",con);
            /*cmd.Parameters.AddWithValue("@id", name.Text);*/
            DataSet ds = new DataSet();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(ds);
            txtUser.Text = ds.Tables[0].Rows[0]["id"].ToString();
            txtDob.Text = ds.Tables[0].Rows[0]["dob"].ToString();
            txtEmail.Text = ds.Tables[0].Rows[0]["email"].ToString();
            txtMobile.Text = ds.Tables[0].Rows[0]["phoneno"].ToString();
            imageLink = ds.Tables[0].Rows[0]["photo"].ToString();
            ProfileImage.ImageUrl = imageLink + "?n=" + DateTime.Now.Second.ToString();
            con.Close();
           


        }

        private byte[] GenerateSalt()
        {
            byte[] data = new byte[32];
            RNGCryptoServiceProvider rng = new RNGCryptoServiceProvider();
            for (int i = 0; i < 10; i++)
            {
                rng.GetBytes(data);

            }
            return data;
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            if (Uploadimage() == true)
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("UPDATE DataConstomer SET phoneno=@pho,photo=@photo WHERE id='" + txtUser.Text + "';", con);



                cmd.Parameters.AddWithValue("@pho", txtMobile.Text.ToString());
                cmd.Parameters.AddWithValue("@photo", imageLink); ;
                cmd.ExecuteNonQuery();
                Check.Text = "Data Succesfully Updated";
                con.Close();


                
            }
        }

        protected void Browse_Click(object sender, EventArgs e)
        {
           
        }
        private Boolean Uploadimage()
        {
            Boolean imagesaved = false;
            if (FileUploadImage.HasFile == true)
            {
                String contentType = FileUploadImage.PostedFile.ContentType;
                if (contentType == "image/jpeg")
                {
                    int filesize;
                    filesize = FileUploadImage.PostedFile.ContentLength;
                    if (filesize <= 102400)
                    {
                        System.Drawing.Image img = System.Drawing.Image.FromStream(FileUploadImage.PostedFile.InputStream);
                        int height = img.Height;
                        int width = img.Width;
                        if(height==200 && width == 200)
                        {
                            FileUploadImage.SaveAs(Server.MapPath("~/ProfileImage/") + txtUser.Text + ".jpg");
                            ProfileImage.ImageUrl = "~/ProfileImage/" + txtUser.Text + ".jpg";
                            imageLink = "ProfileImage/" + txtUser.Text + ".jpg";
                            imagesaved = true;
                        }
                        else
                        {
                            Check.Text = "Kindly Upload JPEG Image in Proper Dimention 200*200";
                        }
                    }
                    else
                    {
                        Check.Text = "File size exceed 50 kb";
                    }

                }
                else
                {
                    Check.Text = "Only Jpeg image file acceptible -please upload file again";
                }
            }
            else
            {
                Check.Text = "You have not selected any file";
            }
            return imagesaved;
        }
       
    }
}