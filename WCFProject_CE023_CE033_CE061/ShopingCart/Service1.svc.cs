using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.ServiceModel.Web;
using System.Text;

namespace ShopingCart
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "Service1" in code, svc and config file together.
    // NOTE: In order to launch WCF Test Client for testing this service, please select Service1.svc or Service1.svc.cs at the Solution Explorer and start debugging.
    public class Service1 : IService1
    {
        public string AddProdCart(Cart cart)
        {
            string result = "";
            try
            {
                SqlConnection con = new SqlConnection(@"Data Source=(localdb)\MSSQLLocalDB;AttachDbFilename=C:\Users\acer\source\repos\ShoppingCartWCFClient\ShoppingCartWCFClient\App_Data\WebFormsIdentity.mdf;Initial Catalog=WebFormsIdentity;Integrated Security=True");
                SqlCommand cmd = new SqlCommand();
                con.Open();
               
                string Query = @"INSERT INTO Cart (id,item_name,description,item_price)  
                                               Values(@id,@item_name,@description,@item_price)";

                cmd = new SqlCommand(Query, con);
                cmd.Parameters.AddWithValue("@id", cart.ID);
                cmd.Parameters.AddWithValue("@item_name", cart.Item_Name);
                cmd.Parameters.AddWithValue("@description", cart.Description);
                cmd.Parameters.AddWithValue("@item_price", Convert.ToInt32(cart.Item_Price));
                cmd.ExecuteNonQuery();
                con.Close();
                result = "Record Added Successfully !";
            }
            catch (FaultException fex)
            {
                throw new FaultException<string>("Error: " + fex);
                //result = "Error";
            }

            return result;
        }

        public DataSet GetCartRecords()
        {
            DataSet ds = new DataSet();
            try
            {
                SqlConnection con = new SqlConnection(@"Data Source=(localdb)\MSSQLLocalDB;AttachDbFilename=C:\Users\acer\source\repos\ShoppingCartWCFClient\ShoppingCartWCFClient\App_Data\WebFormsIdentity.mdf;Initial Catalog=WebFormsIdentity;Integrated Security=True");
                string Query = "SELECT * FROM Cart";

                SqlDataAdapter sda = new SqlDataAdapter(Query, con);
                sda.Fill(ds);
            }
            catch (FaultException fex)
            {
                throw new FaultException<string>("Error: " + fex);
            }

            return ds;
        }

        public string DeleteRecords(Cart cart)
        {
            string result = "";
            SqlConnection con = new SqlConnection(@"Data Source=(localdb)\MSSQLLocalDB;AttachDbFilename=C:\Users\acer\source\repos\ShoppingCartWCFClient\ShoppingCartWCFClient\App_Data\WebFormsIdentity.mdf;Initial Catalog=WebFormsIdentity;Integrated Security=True");

         
            SqlCommand cmd = new SqlCommand();
            string Query = "DELETE Cart Where id=@id";
            cmd = new SqlCommand(Query, con);
            cmd.Parameters.AddWithValue("@id", cart.ID);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            result = "Record Deleted Successfully!";
            return result;
        }

        public DataSet SearchCartRecord(Cart cart)
        {
            DataSet ds = new DataSet();
            try
            {
                SqlConnection con = new SqlConnection(@"Data Source=(localdb)\MSSQLLocalDB;AttachDbFilename=C:\Users\acer\source\repos\ShoppingCartWCFClient\ShoppingCartWCFClient\App_Data\WebFormsIdentity.mdf;Initial Catalog=WebFormsIdentity;Integrated Security=True");

                string Query = "SELECT * FROM Cart WHERE id=@id";

                SqlDataAdapter sda = new SqlDataAdapter(Query, con);
                sda.SelectCommand.Parameters.AddWithValue("@id", cart.ID);
                sda.Fill(ds);
            }
            catch (FaultException fex)
            {
                throw new FaultException<string>("Error:  " + fex);
            }
            return ds;
        }

        public string UpdateCart(Cart cart)
        {
            string result = "";
                SqlConnection con = new SqlConnection(@"Data Source=(localdb)\MSSQLLocalDB;AttachDbFilename=C:\Users\acer\source\repos\ShoppingCartWCFClient\ShoppingCartWCFClient\App_Data\WebFormsIdentity.mdf;Initial Catalog=WebFormsIdentity;Integrated Security=True");
        
            SqlCommand cmd = new SqlCommand();
            con.Open();
            string Query = "UPDATE Cart SET item_name=@item_name,description=@description,item_price=@item_price WHERE id=@id";

            cmd = new SqlCommand(Query, con);
            cmd.Parameters.AddWithValue("@id", cart.ID);
            cmd.Parameters.AddWithValue("@item_name", cart.Item_Name);
            cmd.Parameters.AddWithValue("@description", cart.Description);
            cmd.Parameters.AddWithValue("@item_price", cart.Item_Price);
           
            cmd.ExecuteNonQuery();
            result = "Record Updated Successfully !";
            con.Close();

            return result;
        }

    }
}
