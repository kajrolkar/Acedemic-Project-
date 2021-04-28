<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UploadDoc.aspx.cs" CodeFile="~/UploadDoc.aspx.cs" Inherits="pcuDE.UploadDoc" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td>Select me</td>
                    <td>
                        <asp:FileUpload ID="FileUploding" runat="server" /></td>
                </tr>
                <tr>
                    <td>Key</td>
                    <td>
                        <asp:TextBox ID="txtKey" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="btnUpload" runat="server" Text="Encrypt and upload" OnClick="btnUpload_Click" /></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
