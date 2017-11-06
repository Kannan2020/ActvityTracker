namespace Core.Repository
{
    public partial class ATDBContext : DataContext
    {
        public ATDBContext()
            : base("name=SSAMEntities")
        {
        }
    }
    
}
