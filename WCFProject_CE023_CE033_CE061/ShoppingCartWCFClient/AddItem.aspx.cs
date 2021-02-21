using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ShoppingCartWCFClient
{
    public partial class AddItem : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                ID.Text = "";
                ItemName.Text = "";
                Description.Text = "";
                ItemPrice.Text = "";
                lblMsg.Text = "";
                ID.Focus();
            }

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            //Adding New Employee Records  

            if ((ID.Text != "") || (ItemName.Text != "") || (Description.Text != "") || (ItemPrice.Text != ""))
            {
                try
                {
                    ServiceReference1.Cart cart = new ServiceReference1.Cart();
                    cart.ID = Convert.ToInt32(ID.Text);
                    cart.Item_Name = ItemName.Text;
                    cart.Description = Description.Text;
                    cart.Item_Price = ItemPrice.Text;

                    ServiceReference1.Service1Client cl = new ServiceReference1.Service1Client();

                   // ServiceReference2.Service1Client client = new ServiceReference2.Service1Client();
                    lblMsg.Text = "Cart ID: " + cart.ID + ", " + cl.AddProdCart(cart);
                }
                catch (Exception ex)
                {
                    lblMsg.Text = "Cart ID must be unique! "+ex;
                }


            }
            else
            {

                lblMsg.Text = "All fields are mandatory! ";
                lblMsg.ForeColor = System.Drawing.Color.Red;
            }


        }

        protected void bntReset_Click(object sender, EventArgs e)
        {
            ClearForm();
        }

        private void ClearForm()
        {
            ID.Text = "";
            ItemName.Text = "";
            Description.Text = "";
            ItemPrice.Text = "";
            lblMsg.Text = "";
            ID.Focus();
        }
    }
}