using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
namespace ShoppingCartWCFClient
{
    public partial class UpdateItem : System.Web.UI.Page
    {
        ServiceReference1.Cart cart = new ServiceReference1.Cart();
        ServiceReference1.Service1Client client =new  ServiceReference1.Service1Client();
       // MyService.Employee employee = new MyService.Employee();
       // MyService.EmployeeServiceClient client = new MyService.EmployeeServiceClient();

        DataSet ds;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                SetPanel(true, false);
            }
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            if (txtSearch.Text != "")
            {
                cart.ID = Convert.ToInt32(txtSearch.Text.Trim());
                ds = new DataSet();
                ds = client.SearchCartRecord(cart);

                if (ds.Tables[0].Rows.Count > 0)
                {
                    lblID.Text = ds.Tables[0].Rows[0]["id"].ToString();
                    txtdesc.Text = ds.Tables[0].Rows[0]["description"].ToString();
                    txtprice.Text = ds.Tables[0].Rows[0]["item_price"].ToString();
                    txtname.Text = ds.Tables[0].Rows[0]["item_name"].ToString();
                    SetPanel(false, true);

                }
                else if (String.IsNullOrEmpty(txtSearch.Text)) {
                    lblSearchResult.Text = "Please Enter Item ID !";
                    lblSearchResult.ForeColor = System.Drawing.Color.Red;
                }
                else
                {
                    lblSearchResult.Text = "Please Enter a valid Item ID !";
                    lblSearchResult.ForeColor = System.Drawing.Color.Red;
                }

            }
            else
            {
                lblSearchResult.Text = "Please Enter Item ID !";
            }
        }

        private void SetPanel(bool pSearch, bool pUpdate)
        {
            panSearch.Visible = pSearch;
            panUpdate.Visible = pUpdate;
        }

        protected void bntReset_Click(object sender, EventArgs e)
        {
            SetPanel(true, false);
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            SetPanel(true, false);
            lblMsg.Text = "";
        }

        protected void bntUpdated_Click(object sender, EventArgs e)
        {
            cart.ID = Convert.ToInt32(lblID.Text.Trim());
            cart.Item_Name= txtname.Text;
            cart.Description = txtdesc.Text;
            cart.Item_Price = txtprice.Text;

            string result = client.UpdateCart(cart);
            lblSearchResult.Text = result;
            SetPanel(true, false);
            lblID.Text = "";
            txtname.Text = "";
            txtdesc.Text = "";
            txtprice.Text = "";
           

        }

    }
}