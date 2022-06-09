using Registration.Remoting;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web.UI.WebControls;

namespace StudentsDataBase
{
    public class RegistrationData
    {

        public string DbCon()
        {
            return @"Data Source=.;Initial Catalog=STMT;Integrated Security=SSPI";
        }

        public bool RegisterStudent(GS_Students a_Student)
        {

            SqlConnection MyCon = new SqlConnection(DbCon());
            MyCon.Open();
            string InstQ = "insert into Students (Name,Mobile,Batch,DepartmentID,Joindate,Active) Values (@name,@ContactNo,@Batch,@DepartmentID,@JoinDate,@Active)";
            SqlCommand MyCmd = new SqlCommand(InstQ, MyCon);
            MyCmd.Parameters.AddWithValue("@name", a_Student.Name);
            MyCmd.Parameters.AddWithValue("@ContactNo", a_Student.Mobile);
            MyCmd.Parameters.AddWithValue("@Batch", a_Student.Batch);
            MyCmd.Parameters.AddWithValue("@DepartmentID", a_Student.DepartmentID);
            MyCmd.Parameters.AddWithValue("@JoinDate", a_Student.Joindate);
            MyCmd.Parameters.AddWithValue("@Active", a_Student.Active);
            MyCmd.ExecuteNonQuery();
            MyCon.Close();
            return true;
        }

        public bool LoadStudentForFees()
        {
            string Con = @"Data Source=.;Initial Catalog=STMT ;Integrated Security=SSPI";

            {
                DataTable MyTable = new DataTable();

                using (SqlConnection Sqlconnection = new SqlConnection(Con))
                {
                    SqlDataAdapter myada = new SqlDataAdapter("select * from Students", Sqlconnection);
                    myada.Fill(MyTable);
                }
            }
            return true;
        }

        public bool DeleteStudents(GS_Students a_Student)
        {
            string Con = @"Data Source=.;Initial Catalog=STMT ;Integrated Security=SSPI";

            DataTable MyTable = new DataTable();

            SqlConnection Sqlconnection = new SqlConnection(Con);

            string MYQ = "select StuID as ID , a.Name as Name , Mobile ,Batch , JoinDate as JoinDate, b.Name as Department from Students a join Departments b on a.DepartmentID = b.DepID";
            SqlDataAdapter myada = new SqlDataAdapter(MYQ, Sqlconnection);

            myada.Fill(MyTable);

            return true;
        }
    }

}





