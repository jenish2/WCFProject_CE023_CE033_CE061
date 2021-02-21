using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.ServiceModel.Web;
using System.Text;

namespace ShopingCart
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the interface name "IService1" in both code and config file together.
    [ServiceContract]
    public interface IService1
    {

        [OperationContract]
        string AddProdCart(Cart cart);

        [OperationContract]
        DataSet GetCartRecords();

        [OperationContract]
        string DeleteRecords(Cart cart);

        [OperationContract]
        DataSet SearchCartRecord(Cart cart);

        [OperationContract]
        string UpdateCart(Cart cart);
    }

    // Use a data contract as illustrated in the sample below to add composite types to service operations.

    [DataContract]
    public class Cart
    {
        public int id;
        public string item_name;
        public string description;
        public string item_price;

        [DataMember]
        public int ID
        {
            get
            {
                return id;
            }
            set
            {
                id = value;
            }
        }

        [DataMember]
        public string Item_Name
        {
            get
            {
                return item_name;
            }
            set
            {
                item_name = value;
            }
        }

        [DataMember]
        public string Description
        {
            get
            {
                return description;
            }
            set
            {
                description = value;
            }
        }

        [DataMember]
        public string Item_Price
        {
            get
            {
                return item_price;
            }
            set
            {
                item_price = value;
            }
        }

    }
}



