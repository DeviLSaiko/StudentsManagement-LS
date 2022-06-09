<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Students.aspx.cs" Inherits="WebUi.STMT.Students.Students" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Students List - These are the Students Registered in the DataBase...</title>
    <link rel="styleshe et" href="StyleSheet1.css" />

    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" />

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>

</head>
<body>

    <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
        <div class="container-fluid">

            <a class="navbar-brand" href="../admin.aspx">Home</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#collapsibleNavbar">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="collapsibleNavbar">
                <ul class="navbar-nav">                  
                    <li class="nav-item">
                        <a class="nav-link  " href="StudentsRegistration.aspx">Student Regstration</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active " href="../Students/Students.aspx"> Students </a>
                    </li>
                </ul>
            </div>
            </div>
    </nav>

    <div class="container-fluid mt-3">
        <h3>Students Management</h3>
        <p><b>Students List</b> - These are the Students Registered in the DataBase... </p>
    </div>
    <br />
    <form id="form1" runat="server">
        <center>
           
            
            <div class="container-sm">
       <div class="row">
           <div class="col-md-8" >
        
        <div class="align-content-center">  
            <table class=
                "table-hover     ">
        <asp:GridView ID="GridView"  CssClass=" table table-hover"  AutoGenerateColumns="false" runat="server">
        <Columns>

            <asp:BoundField DataField="Name" HeaderText="Name"  />
            <asp:BoundField DataField="Mobile" HeaderText="ContactNo" />
            <asp:BoundField DataField="Batch" HeaderText="Batch" />
            <asp:BoundField DataField="JoinDate" HeaderText="JoinDate" />
            <asp:BoundField DataField="Department" HeaderText="Department" />

             <asp:TemplateField HeaderText="Student" ControlStyle-CssClass="btn btn-danger" >
     <ItemTemplate>
                <asp:HyperLink runat="server" NavigateUrl='<%# string.Format("/StudentsManagement/Students/StudentsDel.aspx?ID={0}",
                    HttpUtility.HtmlEncode (Eval("ID").ToString()))%>'>Delete</asp:HyperLink>
     </ItemTemplate>
      </asp:TemplateField>   
            
     </Columns>
     </asp:GridView>
                </table>
            </div>
             
           </div>
            </div>
           </div>
                 
          </center>
         
        <div>
       </div>
    
    </form>
</body>
</html>


