using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WEB_PROJECT_WATER_COMPANY
{
    public class ProductItem
    {
        Item item;
        public int quantity;
        public ProductItem(Item i, int q)
        {
            item = i;
            quantity = q;
        }

        public Item getItem()
        {
            return item;
        }
        public int getQuantity()
        {

            return quantity;
        }


    }//class
}