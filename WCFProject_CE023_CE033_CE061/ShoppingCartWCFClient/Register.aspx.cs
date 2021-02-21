using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;

namespace ShoppingCartWCFClient
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void CreateUser_Click(object sender, EventArgs e)
        {
            // Default UserStore constructor uses the default connection string named: DefaultConnection
            var userStore = new UserStore<IdentityUser>();
            var manager = new UserManager<IdentityUser>(userStore);

            var user = new IdentityUser() { UserName = UserName.Text };
            IdentityResult result = manager.Create(user, Password.Text);

            if (result.Succeeded)
            {
                StatusMessage.Text = string.Format("User {0} was created successfully!", user.UserName);
            }
            else if (String.IsNullOrEmpty(UserName.Text))
            {
                StatusMessage.Text = "Please Enter a Username";
            }
            else if (String.IsNullOrEmpty(Password.Text))
            {
            
               
                StatusMessage.Text = "Please Enter a Password and Enter atleast 6 charachters for password.";

            }
            else if (!Password.Text.Equals(ConfirmPassword.Text))
            {
                StatusMessage.Text = "Password and confrim password is not matching";
            }
            else
            {
                StatusMessage.Text = "Invalid UserName or Password";
            }
        }

        protected void login(object sender, EventArgs e)
        {
            Response.Redirect("~/Login.aspx");
        }
    }
}