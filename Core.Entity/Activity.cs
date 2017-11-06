using System.ComponentModel.DataAnnotations.Schema;
namespace Core.Entity.Model
{
    public partial class Activity : IObjectState
    {
        [NotMapped]
        public ObjectState ObjectState { get; set; }
    }
}
