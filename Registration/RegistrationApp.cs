using Registration.Remoting;
using StudentsDataBase;
using System;
using System.Collections.Generic;

namespace Registration
{
    public class RegistrationApp : IStudents
    {

        public bool RegisterStudent(GS_Students a_Student)
        {
            RegistrationData MyDb = new RegistrationData();
            return MyDb.RegisterStudent(a_Student);
        }

        public bool DiscStudent(int a_StudentID)
        {
            return false;
        }
        public bool DeleteStudents(GS_Students a_Student)
        {
            RegistrationData MyDb = new RegistrationData();
            return MyDb.DeleteStudents(a_Student);

        }
        


    }
}
