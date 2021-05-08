using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WEB_PROJECT_WATER_COMPANY
{
    public class Item
    {
        private int itemid;
        private string name;
        int price;
        string imagepath;
        public Item(int i, string n, int p, string ip)
        {
            itemid = i;
            name = n;
            price = p;
            imagepath = ip;
        }

       public string getName()
        {
            return name;
        }

        public int getItemID()
        {
            return itemid;
        }
public int getPrice()
        {
            return price;
        }
        public string getImagePath()
        {
            return imagepath;
    }
    }

}