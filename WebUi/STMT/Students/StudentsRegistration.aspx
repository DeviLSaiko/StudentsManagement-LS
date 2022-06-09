<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentsRegistration.aspx.cs" Inherits="WebUi.StudentsRegistration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Student Registration - Add Students info to the DataBase...</title>
    <link rel="stylesheet" href="Style Sheet1.css" />



    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>

    <style type="text/css">
  
        .auto-style1 {
            width: 130px;
        }
        .auto-style6 {
            width: 169px;
        }
        .auto-style7 {
            width: 33px;
        }
        .auto-style8 {
            width: 56px;
        }
  
    </style>
</head>
<body>
    <!-- Header -->
    <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
        <div class="container-fluid">
            <a class="navbar-brand" href="../Admin">Home</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#collapsibleNavbar">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="collapsibleNavbar">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link active " href="../Students/StudentsRegistration.aspx">Students Registration</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link " href="Students.aspx">Students</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <!-- Header -->

    <div class="col-sm-1"></div>
    <div class="container">
        <h3>Students Management</h3>
        <p>Student Registration - Fill The Form And Register Students </p>
    </div>
    <br />
    <form id="form1" runat="server">
        <div class="container-sm">
            <div class="row">
                <div class="col-sm-4">
                    <div class="align-content-center">
                        <div>
                            <table class=" table-borderless">
                                <tr>
                                    <td class="auto-style7"></td>
                                    <td class="auto-style8"></td>
                                    <td class="auto-style1">Name</td>
                                    <td class="auto-style6">
                                        <asp:TextBox ID="txtName" CssClass="form-control" runat="server" Height="28px" Width="187px"></asp:TextBox></td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td class="auto-style7"></td>
                                    <td class="auto-style8"></td>
                                    <td class="auto-style1">Contact</td>
                                    <td class="auto-style6">
                                        <asp:TextBox ID="txtContact" runat="server" CssClass="form-control" Height="28px" Width="188px"></asp:TextBox></td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td class="auto-style7"></td>
                                    <td class="auto-style8"></td>
                                    <td class="auto-style1">Batch</td>
                                    <td class="auto-style6">
                                        <asp:TextBox ID="txtBatch" runat="server" CssClass="form-control" Height="28px" Width="188px"></asp:TextBox></td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td class="auto-style7"></td>
                                    <td class="auto-style8"></td>
                                    <td class="auto-style1">Department</td>
                                    <td class="auto-style6">
                                        <asp:DropDownList ID="ddDepart" runat="server" Font-Size="Small" CssClass="form-control" Height="28px" Width="192px" AutoPostBack="True"></asp:DropDownList></td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td class="auto-style7"></td>
                                    <td class="auto-style8"></td>
                                    <td class="auto-style1">Date Of Join</td>
                                    <td class="auto-style6">
                                        <asp:TextBox ID="txtDateofJo" runat="server" CssClass="form-control" TextMode="Date" Height="25px" Width="187px"></asp:TextBox></td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td class="auto-style7"></td>
                                    <td class="auto-style8"></td>
                                    <td class="auto-style1"></td>
                                    <td class="auto-style6">
                                        <asp:Button ID="BtnCreate" runat="server" OnClick="BtnCreate_Click" Text="Register Student" CssClass="btn btn-dark" Width="157px" Height="39px" /></td>
                                    <td></td>
                                </tr>
                            </table>
                            <asp:Label ID="txtError" runat="server" Text=""></asp:Label>
                        </div>
                    </div>
                </div>
               
            </div>
        </div>
    </form>
</body>
</html>
