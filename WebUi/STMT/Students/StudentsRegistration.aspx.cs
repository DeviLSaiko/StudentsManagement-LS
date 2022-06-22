
using Registration.Factory;
using Registration.Remoting;
using System;
using System.Data;
using System.Data.SqlClient;

namespace WebUi
{
    public partial class StudentsRegistration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string Con = @"Data Source=.;Initial Catalog=STMT ;Integrated Security=SSPI";
                
                    DataTable MyTablee = new DataTable();

                    using (SqlConnection Sqlconnection = new SqlConnection(Con))
                    {
                        SqlDataAdapter myada = new SqlDataAdapter("select * from Departments ", Sqlconnection);
                        myada.Fill(MyTablee);
                    }
                    ddDepart.DataTextField = "Name";
                    ddDepart.DataValueField = "DepID";
                    ddDepart.DataSource = MyTablee;
                    ddDepart.DataBind();
               
            }
        }
        protected void BtnCreate_Click(object sender, EventArgs e)
        {
            try
            {
                
                IStudents MyoBj = RegistrationFactory.CreateStudentObject();
                GS_Students A_Students = new GS_Students();

                A_Students.Name = txtName.Text;
                A_Students.GardName = txtGardName.Text;
                A_Students.Email = txtEmail.Text;
                A_Students.DOB = txtDOB.Text;
                A_Students.Gender = DdGen.SelectedValue;
                A_Students.Mobile = Convert.ToInt32(txtContact.Text);
                A_Students.Batch = Convert.ToInt32(txtBatch.Text);
                A_Students.DepartmentID = Convert.ToInt32(ddDepart.SelectedValue);
                A_Students.Address = txtAddress.Text;
                A_Students.Active = true;
                A_Students.Address = txtAddress.Text;
                MyoBj.RegisterStudent(A_Students);

                txtBatch.Text = string.Empty;
                txtName.Text = string.Empty;
                txtContact.Text = string.Empty;
            }
            catch
            {
                
            }

        }
    }
}