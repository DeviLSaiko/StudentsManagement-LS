using Registration.Factory;
using Registration.Remoting;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebUi.STMT.Students
{
    public partial class Students : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
             
            if (!IsPostBack)
            {
                
                IStudents MyoBj = RegistrationFactory.CreateStudentObject();
                GS_Students A_Students = new GS_Students();

                 B

                myada.Fill(MyTable);

                GridView.DataSource = MyTable;
                GridView.DataBind();
            }

             
            }
        }

    }

