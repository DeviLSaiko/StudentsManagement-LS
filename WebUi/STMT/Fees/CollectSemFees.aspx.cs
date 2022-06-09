
using Fees.FeesFactory;
using FeesRemoting;
using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;

namespace WebUi
{
    public partial class CollectSemFees : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
                string Con = @"Data Source=.;Initial Catalog=STMT ;Integrated Security=SSPI";
                if (!IsPostBack)
                {
                    DataTable MyTable = new DataTable();

                    using (SqlConnection Sqlconnection = new SqlConnection(Con))
                    {
                        SqlDataAdapter myada = new SqlDataAdapter("select * from Students", Sqlconnection);
                        myada.Fill(MyTable);
                    }
                    ddname.DataTextField = "Name";
                    ddname.DataValueField = "StuID";
                    ddname.DataSource = MyTable;
                    ddname.DataBind();
                }
        }

        protected void BtnCreate_Click(object sender, EventArgs e)
        {
            IFees MyObj = FeesFactory.CreateFeesObject();
            GS_Fees A_Fees = new GS_Fees();

            A_Fees.StuID = Convert.ToInt32(ddname.SelectedValue);
            A_Fees.Semester= Convert.ToInt32(DdSem.SelectedValue);
            A_Fees.Amount= Convert.ToInt32(txtAmount.Text);
            MyObj.CollectFeesStudent(A_Fees);

            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert(' Fees Collected')", true);
            txtAmount.Text = string.Empty;
            ddname.SelectedIndex = 0;
            DdSem.SelectedIndex = 0;
        }
    }
}