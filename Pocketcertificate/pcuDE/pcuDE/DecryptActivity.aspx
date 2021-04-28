<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DecryptActivity.aspx.cs" Inherits="pcuDE.DecryptActivity" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Decryption</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=0.5,maximum-scale=1.0" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous" />
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
    <script src="https://kit.fontawesome.com/b99e675b6e.js"></script>
    <link rel="stylesheet" href="dash.css" />
    <style type="text/css">
        .auto-style1 {
            width: 409px;
            height: 182px;
            margin-left: 200px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
                <button class="navbar-toggler sideMenuToggler" type="button">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <img width="195" height="60" src="slider/updated.png" style="margin-bottom: 3px; border-radius: 15px;" />
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav ml-auto">


                        <li class="nav-item dropdown">

                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <asp:Label ID="name" runat="server" Text="" Font-Bold="true" ForeColor="Red"></asp:Label>

                            </a>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdown" style="width: 20px;">
                                <a class="dropdown-item" href="Dash.aspx">Info</a>

                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="Login.aspx">LogOut</a>
                            </div>
                        </li>

                    </ul>

                </div>
            </nav>
        </div>

        <div class="main_block">
            <div class="left_block">
                <div class="sidebar">
                    <ul>
                        <li><a href="Dash.aspx" style="border-right-style: none;"><i class="fas fa-user"></i>Profile</a></li>
                        <li><a href="DecryptActivity.aspx" style="border-right-style: none;"><i class="fas fa-address-card"></i>Issued Document</a></li>
                        <li><a href="Activity.aspx" style="border-right-style: none;"><i class="fas fa-project-diagram"></i>Uploaded Document</a></li>
                        <li><a href="#" style="border-right-style: none;"><i class="fas fa-address-book"></i>Contact</a></li>
                    </ul>
                    <div class="social_media">
                        <a href="#"><i class="fab fa-facebook-f"></i></a>
                        <a href="#"><i class="fab fa-twitter"></i></a>

                    </div>
                </div>

            </div>
            <div class="right_block">
                <div style="height: 35px; background-color: black;">
                    <div style="height: 30px; background-color: rgb(0, 38, 255);">
                    </div>
                </div>
                <div style="height: 5px;"></div>
                <div style="height: 510px; background-color: rgb(239, 239, 231);">
                    <div style="height: 30px;"></div>
                    <h3><strong id="Download">File Decryption and Download
</strong></h3>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" EnableModelValidation="True" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" CellPadding="4" ForeColor="#333333" GridLines="None" Width="755px" Height="16px">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:CommandField ShowSelectButton="True" />
                            <asp:BoundField DataField="FileN" HeaderText="FileN" SortExpression="FileN" />
                            <asp:BoundField DataField="FileE" HeaderText="FileE" SortExpression="FileE" />
                            <asp:BoundField DataField="size" HeaderText="size" SortExpression="size" />
                            <asp:BoundField DataField="EncryptedPath" HeaderText="EncryptedPath" SortExpression="EncryptedPath" />
                        </Columns>
                      <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DataConnectionString %>" SelectCommand="SELECT [FileN], [FileE], [size], [EncryptedPath] FROM [EncryptedDocument] WHERE ([id] = @id)">
                        <SelectParameters>
                            <asp:SessionParameter Name="id" SessionField="name" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <table class="auto-style1" align="center">
                        <tr>
                            <td class="text-right"><strong>Name</strong></td>
                            <td>
                                &nbsp;&nbsp;&nbsp;
                                <asp:TextBox ID="txtName" runat="server" BorderStyle="None" ReadOnly="True" ToolTip="File Name" Width="276px"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td class="text-right"><strong>Path</strong></td>
                            <td>
                                &nbsp;&nbsp;&nbsp;
                                <asp:TextBox ID="txtPath" runat="server" BorderStyle="None" ReadOnly="True" ToolTip="Path of file" Width="276px"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td class="text-right"><strong>Key</strong></td>
                            <td>
                                &nbsp;&nbsp;&nbsp;
                                <asp:TextBox ID="txtKey" runat="server" Width="273px"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td class="text-center" colspan="2">
                                <asp:Button ID="Decrypt" runat="server" Text="Decrypt" OnClick="Decrypt_Click" BorderStyle="None" Font-Bold="True" ForeColor="Lime" ToolTip="Click to decrypt" /></td>
                        </tr>
                       
                    </table>




                </div>
            </div>

        </div>

        <div>
        </div>
    </form>
</body>
</html>
