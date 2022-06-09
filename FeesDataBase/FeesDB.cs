using FeesRemoting;
using System.Data.SqlClient;

namespace FeesDataBase
{
    public class FeesDB
    {
        GS_Fees a_Fees = new GS_Fees();

        public string DbCon()
        {
            return @"Data Source=.;Initial Catalog=STMT;Integrated Security=SSPI";
        }

        public bool CollectFees(GS_Fees a_Fees)
        {
            SqlConnection MyCon = new SqlConnection(DbCon());
            MyCon.Open();

            string InstQ = " insert into SemFees (StuID , Semester ,Amount) Values (@StudentName , @Semester ,@Amount)";
            SqlCommand MyCmd = new SqlCommand(InstQ, MyCon);
            MyCmd.Parameters.AddWithValue("@StudentName", a_Fees.StuID);
            MyCmd.Parameters.AddWithValue("@Semester", a_Fees.Semester);
            MyCmd.Parameters.AddWithValue("@Amount", a_Fees.Amount);

            MyCmd.ExecuteNonQuery();
            MyCon.Close();

            return true;

           
        }
    }
}
