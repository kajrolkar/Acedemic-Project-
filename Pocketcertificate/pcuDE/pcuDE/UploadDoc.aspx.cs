using System;
using System.Collections.Generic;
using System.IO;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;




namespace pcuDE
{
    public partial class UploadDoc : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                PopulateUploadFile();
            }
        }

        private void PopulateUploadFile()
        {
            DirectoryInfo di = new DirectoryInfo(Server.MapPath("~/uplodedfile/"));
            List<Upload> uploadedFiles = new List<Upload>();
            FileInfo[] array = di.GetFiles();
            for (int i = 0; i < array.Length; i++)
            {
                
            }
                            
        }

        protected void btnUpload_Click(object sender, EventArgs e)
        {
            byte[] file = new byte[FileUploding.PostedFile.ContentLength];
            FileUploding.PostedFile.InputStream.Read(file, 0, FileUploding.PostedFile.ContentLength);

        }
    }
}