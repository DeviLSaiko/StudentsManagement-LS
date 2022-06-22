<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentsRegistration.aspx.cs" Inherits="WebUi.StudentsRegistration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <title>Student Registration - Add Students info to the DataBase...</title>
    <link rel="stylesheet" href="Style Sheet1.css" />

    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <script src="../../Assets/BS5/bootstrap.bundle.min5.js"></script>
    <link href="../../Assets/BS5/bootstrap.min5.css" rel="stylesheet" />
    <link href="../../Assets/font-awesome.min.css" rel="stylesheet" />

    <style type="text/css">
  
    </style>

</head>
<body>
    <!-- Header -->
    <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
        <div class="container-fluid">

            <a class="navbar-brand" href="../Admin.aspx">Home</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#collapsibleNavbar">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="collapsibleNavbar">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link active " href="Student_Regstration.aspx">Student Regstration</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link " href="StudentList.aspx">Students List</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link " href="Students.aspx">Students</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <!-- Header -->
    <div class="container-fluid mt-3">
        <h3>Students Management</h3>
        <p>Student Registration - Fill The Form And Register Students </p>
    </div>
    <br />
    <form id="form1" runat="server">
        <div class="container-sm">
            <div class="row">
                <div class="col-sm-10">
                    <div class="align-content-center">

                        <div>
                            <table class="table table-borderless">
                                <tr>
                                    <td></td>
                                    <td></td>
                                    <td class="auto-style1">Name</td>
                                    <td>
                                        <asp:TextBox ID="txtName" CssClass="form-control" runat="server" Height="35px" Width="288px"></asp:TextBox></td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td></td>
                                    <td class="auto-style1">Guardian Name</td>
                                    <td>
                                        <asp:TextBox ID="txtGardName" runat="server" CssClass="form-control" Height="35px" Width="288px"></asp:TextBox></td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td></td>
                                    <td class="auto-style1">Contact</td>
                                    <td>
                                        <asp:TextBox ID="txtContact" runat="server" CssClass="form-control" Height="35px" Width="288px"></asp:TextBox></td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td></td>
                                    <td class="auto-style1">Email</td>
                                    <td>
                                        <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" Height="35px" Width="288px"></asp:TextBox></td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td></td>
                                    <td class="auto-style1">Gender</td>
                                    <td>
                                        <asp:DropDownList ID="DdGen" runat="server" CssClass="form-select" Height="35px" Width="288px">
                                            <asp:ListItem Text="Select Gender" Value=""></asp:ListItem>
                                            <asp:ListItem Text="Male" Value="Male"></asp:ListItem>
                                            <asp:ListItem Text="Female" Value="Female"></asp:ListItem>
                                            <asp:ListItem Text="Others" Value="Others"></asp:ListItem>
                                        </asp:DropDownList></td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td></td>
                                    <td class="auto-style1">Batch</td>
                                    <td>
                                        <asp:TextBox ID="txtBatch" runat="server" CssClass="form-control" Height="35px" Width="288px"></asp:TextBox></td>
                                    <td></td>
                                </tr>

                                <tr>
                                    <td class="auto-style4"></td>
                                    <td class="auto-style4"></td>
                                    <td class="auto-style5">Department</td>
                                    <td class="auto-style4">
                                        <asp:DropDownList ID="ddDepart" runat="server"  CssClass="form-select" Height="35px" Width="288px" AutoPostBack="True"></asp:DropDownList></td>
                                    <td class="auto-style4"></td>
                                </tr>

                                <tr>
                                    <td class="auto-style2"></td>
                                    <td class="auto-style2"></td>
                                    <td class="auto-style3">DOB</td>
                                    <td class="auto-style2">
                                        <asp:TextBox ID="txtDOB" runat="server" CssClass="form-control" TextMode="Date" Height="35px" Width="288px"></asp:TextBox></td>
                                    <td class="auto-style2"></td>
                                </tr>

                                <tr>
                                    <td class="auto-style2"></td>
                                    <td class="auto-style2"></td>
                                    <td class="auto-style3">Address</td>
                                    <td class="auto-style2">
                                        <asp:TextBox ID="txtAddress" runat="server" CssClass="form-control" Height="35px" Width="288px"></asp:TextBox></td>
                                    <td class="auto-style2"></td>
                                </tr>

                                <tr>
                                    <td></td>
                                    <td></td>
                                    <td class="auto-style1"></td>
                                    <td>
                                        <asp:Button ID="BtnCreate" runat="server" OnClick="BtnCreate_Click" Text="Register Student" CssClass="btn btn-dark" Width="157px" Height="39px" /></td>
                                    <td></td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
