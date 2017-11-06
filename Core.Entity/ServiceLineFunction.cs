using System.ComponentModel.DataAnnotations.Schema;
namespace Core.Entity.Model
{
    public partial class ServiceLineFunction : IObjectState
    {
        [NotMapped]
        public ObjectState ObjectState { get; set; }
    }
}
