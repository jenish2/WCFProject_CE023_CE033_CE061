using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
namespace ShoppingCartWCFClient
{
    public partial class DisplayItemRecord : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                DataSet ds = new DataSet();
                ServiceReference1.Service1Client client = new ServiceReference1.Service1Client();
                ds = client.GetCartRecords();
                grdcart.DataSource = ds;
                grdcart.DataBind();
            }
        }

     
    }
}