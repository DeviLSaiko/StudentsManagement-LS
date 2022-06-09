using Registration.Remoting;

namespace Registration.Factory
{
    public static class RegistrationFactory
    {
        public static IStudents CreateStudentObject()
        {
            return new RegistrationApp();
        }
    }
}
