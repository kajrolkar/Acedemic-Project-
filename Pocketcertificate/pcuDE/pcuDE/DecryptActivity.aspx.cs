using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Globalization;
using System.IO;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;





namespace pcuDE
{
    public partial class DecryptActivity : System.Web.UI.Page
    {
        String FileName;
        String FileExtn;
        String size;
        String path;
        byte[] salt;
        protected void Page_Load(object sender, EventArgs e)
        {
            String name = (String)Session["name"];
            salt = (byte[])Session["salting"];
            
           


        }










        protected void Decrypt_Click(object sender, EventArgs e)
        {
            byte[] padd = salt;
            byte[] key = Encoding.UTF8.GetBytes(txtKey.Text);
            String position = path;

            try
            {
                string outputFile = Path.Combine(Server.MapPath("~/uplodedfile/"), txtName.Text + ".aes");
                string inputFile = Path.Combine(Server.MapPath("~/uplodedfile/"), txtName.Text);
                if (File.Exists(outputFile))
                {
                    FileStream fsCrypt = new FileStream(outputFile, FileMode.Open);
                    fsCrypt.Read(padd, 0, salt.Length);
                    RijndaelManaged AES = new RijndaelManaged();
                    AES.KeySize = 256;
                    AES.BlockSize = 128;
                    var password = new Rfc2898DeriveBytes(key, padd, 50000);
                    AES.Key = password.GetBytes(AES.KeySize / 8);
                    AES.IV = password.GetBytes(AES.BlockSize / 8);
                    AES.Padding = PaddingMode.PKCS7;
                    AES.Mode = CipherMode.CFB;
                    CryptoStream cs = new CryptoStream(fsCrypt, AES.CreateDecryptor(), CryptoStreamMode.Read);
                    if (File.Exists(inputFile)) {
                        MessageBox.Show("file alredy stored in buffer");
                    }
                    else
                    {
                        
                        FileStream fsOut = new FileStream(inputFile, FileMode.Create);
                        int data;
                        while ((data = cs.ReadByte()) != -1)
                        {
                            fsOut.WriteByte((byte)data);
                        }
                        fsOut.Close();
                        cs.Close();
                        fsCrypt.Close();
                        Response.ContentType = "appllication/octet-stream";
                        Response.AppendHeader("content-disposition", "attachment;fileName="+ txtName.Text);
                        Response.TransmitFile(Server.MapPath("~/uplodedfile/" + txtName.Text));
                        Response.End();
                        

                    }
                   

                }
                
                else
                {
                    MessageBox.Show("File not found");
                }



            }
            catch (Exception ex)
            {
                MessageBox.Show("Yours File Uploding please wait for some time ...");
            }




        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow gr = GridView1.SelectedRow;
            txtName.Text = gr.Cells[1].Text;
            size = gr.Cells[3].Text;
            txtPath.Text = gr.Cells[4].Text;
            FileExtn = gr.Cells[2].Text;
        }

        protected void btnDownload_Click(object sender, EventArgs e)
        {
            
           


        }
    }
}