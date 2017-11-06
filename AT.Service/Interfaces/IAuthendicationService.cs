using Core.Entity.Model;
using Core.Service;
namespace AT.Service
{
    public interface IAuthendicationService 
    {
        User ValidateUser(string username, string password);
    }
}
