using Core.Entity.Model;
using System.Linq;
using System.Data.Entity;
namespace AT.Service
{
    //public class AuthendicationService : Service<User>, IAuthendicationService
    //{
    //    private readonly IRepository<User> _repository;
    //    public AuthendicationService(IRepository<User> repository)
    //        : base(repository)
    //    {
    //        _repository = repository;
    //    }
    //    public User ValidateUser(string username, string password)
    //    {
    //        return _repository.Queryable().FirstOrDefault(u => u.Username == username && u.Password == password);
    //    }
    //}


    public class AuthendicationService :IAuthendicationService
    {
        private readonly AuthendicationEntities _db;
        public AuthendicationService()
        {
           _db = new AuthendicationEntities();
        }
        public User ValidateUser(string username, string password)
        {
            return _db.Users.ToList().FirstOrDefault(u => u.Username == username && u.Password == password);
        }
    }
}
