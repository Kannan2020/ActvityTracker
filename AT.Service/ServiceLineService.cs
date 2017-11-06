using Core.Entity.Model;
using Core.Repository;
using Core.Service;
namespace AT.Service
{
    public class ServiceLineService : Service<ServiceLineFunction>, IServiceLineService
    {
        private readonly IRepository<ServiceLineFunction> _repository;
        public ServiceLineService(IRepository<ServiceLineFunction> repository)
            : base(repository)
        {
            _repository = repository;
        }

    }
}
