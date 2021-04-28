using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Security.Cryptography;
using System.Runtime.InteropServices;
using System.Windows.Forms;
using System.Data;
using System.Data.SqlClient;
using System.Text;
namespace pcuDE
{
    public partial class Activity : System.Web.UI.Page
    {
         
        byte[] salt;
        String nameFile;
        string updated;
        
        protected void Page_Load(object sender, EventArgs e)
        {
            name.Text = (String)Session["name"];
            salt = (byte[])Session["salting"];
            txtId.Text = name.Text;
            /*salt = GenerateRandomSalt();*/
            if (!IsPostBack)
            {

                PopulateUploadFile();
            }
        }

        private void PopulateUploadFile()
        {
            DirectoryInfo di = new DirectoryInfo(Server.MapPath("~/uplodedfile/"));
            List<Upload> uplodedfiles = new List<Upload>();

            foreach (var files in di.GetFiles())
            {
                uplodedfiles.Add(new Upload
                {
                    FileName = files.Name,
                    FileExtention = Path.GetExtension(files.Name),
                    FilePath = files.FullName,
                    Size = (files.Length / 1024)
                });

            }
            /*DataList1.DataSource = uplodedfiles;
            DataList1.DataBind();*/
        }

        public void btnEncrypt_Click(object sender, EventArgs e)
        {
            byte[] file = new byte[FileUploadImae.PostedFile.ContentLength];

            FileUploadImae.PostedFile.InputStream.Read(file, 0, FileUploadImae.PostedFile.ContentLength);
            string fileName= FileUploadImae.PostedFile.FileName;
           
            byte[] documentContent = FileUploadImae.FileBytes;
            string fileExt = FileUploadImae.PostedFile.ContentType;
            string fileSize = FileUploadImae.PostedFile.ContentLength.ToString();

            string size = fileSize + "KB";
     


            String locking = txtKey.Text;
            byte[] pass = Encoding.UTF8.GetBytes(locking);
            try
            {
                string outputFile = Path.Combine(Server.MapPath("~/uplodedfile/"), fileName);

                if (File.Exists(outputFile)) { }
                else
                {


                    byte[] salty = salt;
                    FileStream fsCrypt = new FileStream(outputFile + ".aes", FileMode.Create);

                    RijndaelManaged AES = new RijndaelManaged();
                    AES.KeySize = 256;
                    AES.BlockSize = 128;
                    AES.Padding = PaddingMode.PKCS7;
                    var key = new Rfc2898DeriveBytes(pass, salty, 50000);
                    AES.Key = key.GetBytes(AES.KeySize / 8);
                    AES.IV = key.GetBytes(AES.BlockSize / 8);
                    AES.Mode = CipherMode.CFB;
                    fsCrypt.Write(salty, 0, salty.Length);
                    CryptoStream cs = new CryptoStream(fsCrypt, AES.CreateEncryptor(), CryptoStreamMode.Write);


                    foreach (var data in file) { cs.WriteByte((byte)data); }
                    updated = Path.Combine(Server.MapPath("~/uplodedfile/"), outputFile+".aes");
                    cs.Close();
                    fsCrypt.Close();


                    try
                    {
                        SqlConnection con = new SqlConnection("Data Source=.\\KARAN;Initial Catalog=Data;Integrated Security=True");
                        con.Open();
                        SqlCommand cmd = new SqlCommand("INSERT INTO EncryptedDocument VALUES(@id,@fd,@fn,@fe,@size,@efp,@pass,@salt); ", con);
                        cmd.Parameters.AddWithValue("@id", name.Text);
                        cmd.Parameters.AddWithValue("@fd", txtDetails.Text);
                        cmd.Parameters.AddWithValue("@fn", fileName);
                        cmd.Parameters.AddWithValue("@fe", fileExt);
                        cmd.Parameters.AddWithValue("@size", size);
                        cmd.Parameters.AddWithValue("@efp", updated);
                        cmd.Parameters.AddWithValue("@pass", locking);
                        cmd.Parameters.AddWithValue("@salt", salt);
                        cmd.ExecuteNonQuery();
                        con.Close();
                        nameFile = FileUploadImae.PostedFile.FileName;
                         MessageBox.Show("Data Uploded Succesfully");
                       

                    }
                    catch (Exception ex)
                    {
                        Response.Write("File not stored");
                    }




                }
                PopulateUploadFile();
            }
            catch (Exception exp)
            {
                MessageBox.Show("Encryption is not done,select file carefully" + exp);
            }
        }

        private byte[] GenerateRandomSalt()
        {
            byte[] data = new byte[32];
            RNGCryptoServiceProvider rng = new RNGCryptoServiceProvider();
            for (int i = 0; i < 10; i++)
            {
                rng.GetBytes(data);

            }
            return data;

        }

      
    }
}