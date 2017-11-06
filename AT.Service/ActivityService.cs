using Core.Entity.Model;
using Core.Repository;
using Core.Service;
namespace AT.Service
{
    public class ActivityService : Service<Activity>, IActivityService
    {
        private readonly IRepository<Activity> _repository;
        public ActivityService(IRepository<Activity> repository)
            : base(repository)
        {
            _repository = repository;
        }

    }
}
