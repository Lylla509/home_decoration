using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Home_decoration.model
{
    public class CarEntity
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public int Price { get; set; }
        public string Path { get; set; }
        public int Count { get; set; }
        public int TotalPrices { get; set; }
    }
}