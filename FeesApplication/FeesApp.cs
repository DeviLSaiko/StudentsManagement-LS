using FeesDataBase;
using FeesRemoting;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FeesApplication
{
    public class FeesApp : IFees
    {
        public bool CollectFeesStudent(GS_Fees a_Student)
        {
            FeesDB MyDb = new FeesDB();
            return MyDb.CollectFees(a_Student);
        }
    }
}
