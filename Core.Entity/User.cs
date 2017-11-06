using System.ComponentModel.DataAnnotations.Schema;
namespace Core.Entity.Model
{
    public partial class User : IObjectState
    {
        [NotMapped]
        public ObjectState ObjectState { get; set; }
    }
}
