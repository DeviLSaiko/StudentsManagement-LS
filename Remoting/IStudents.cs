namespace Registration.Remoting
{
    public interface IStudents
    {
        bool RegisterStudent(GS_Students a_Student);

        bool DeleteStudents(GS_Students a_Student);
    }
}
