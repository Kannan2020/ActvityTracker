using System.ComponentModel.DataAnnotations;
namespace AT.Entity
{
    public class LoginViewModel
    {
        [Display(Name="Username")]
        [Required]
        public string Username { get; set; }
        [Display(Name="Password")]
        [Required]
        [DataType(DataType.Password)]
        public string Password { get; set; }
    }
}
