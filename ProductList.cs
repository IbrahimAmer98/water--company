using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WEB_PROJECT_WATER_COMPANY
{
    public class ProductList
    {
        List <ProductItem>products = new List <ProductItem>();
        
        public List <ProductItem> addItem(ProductItem pi)
        {
            bool updated = false;
            foreach (ProductItem pr in products)
                if (pr.getItem().getItemID() == pi.getItem().getItemID())
                {
                    pr.quantity += pi.quantity;
                    updated = true;
                }
           
            if (!updated)
                products.Add(pi);

            return products;
        }

        public List<ProductItem> removeItem(ProductItem pi)
        {
            products.Remove(pi);

            return products;
        }
        public ProductItem getProductItem(int itemno)
        {

            foreach (ProductItem p in products)
                if (p.getItem().getItemID() == itemno)
                    return p;
            return null;
        }

        public int Checkemp()
        {
            if (products.Count() > 0)
                return 1;
            else
                return 2;
        }
        public List<ProductItem> getProducts()
        {
            return products;
        }
        public List<ProductItem> removeall()
        {
            products.Clear();

            return products;
        }

    }
}