<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CollectSemFees.aspx.cs" Inherits="WebUi.CollectSemFees" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Fees Collection - Collect Semmester Fees From Students</title>



    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>



</head>
<body>
    <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
        <div class="container-fluid">
            <a class="navbar-brand" href="../Admin">Home</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#collapsibleNavbar">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="collapsibleNavbar">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link active " href="../Fees/FeesCollect">Collect Fees</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link " href="../Students/StudentsRegistration.aspx">Students Registration</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link " href="../Fees/DeleteFees.aspx">Delete Fees</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <div class="container-fluid mt-3">
        <h3>Students Management</h3>
        <p>Fees Collection - Collect Semmester Fees From Students </p>
    </div>
    <br />
    <form id="form1" runat="server">
        <div class="container-sm">
            <div class="row">
                <div class="col-sm-8">
                    <div class="align-content-center">

                        <div>
                            <table>
                                <tr>
                                    <td></td>
                                    <td>Name</td>
                                    <td></td>
                                    <td>
                                        <asp:DropDownList ID="ddname" runat="server" Height="31px" Width="162px"></asp:DropDownList>
                                    </td>
                                    <td></td>
                                </tr>

                                <tr>
                                    <td></td>
                                    <td>Semester</td>
                                    <td></td>
                                    <td>
                                        <asp:DropDownList ID="DdSem" runat="server" Height="31px" Width="162px">
                                            <asp:ListItem Text="1" Value="1"></asp:ListItem>
                                            <asp:ListItem Text="2" Value="2"></asp:ListItem>
                                            <asp:ListItem Text="3" Value="3"></asp:ListItem>
                                            <asp:ListItem Text="4" Value="4"></asp:ListItem>
                                            <asp:ListItem Text="5" Value="5"></asp:ListItem>
                                            <asp:ListItem Text="6" Value="6"></asp:ListItem>
                                        </asp:DropDownList></td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td>Ammout</td>
                                    <td></td>
                                    <td>
                                        <asp:TextBox ID="txtAmount" runat="server" Height="27px" Width="155px"></asp:TextBox></td>
                                    <td></td>
                                </tr>

                                <tr>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td>
                                        <asp:Button ID="BtnCreate" OnClick="BtnCreate_Click" Style="margin: auto auto auto 0px; background-color: #000000; color: white; cursor: default; border-radius: 10px;" Width="119px" runat="server" Text="Collect Amount " Height="34px" /></td>
                                    <td></td>
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
