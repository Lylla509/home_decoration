using Home_decoration.model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Home_decoration
{
    public partial class Product : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                Hiensp();
            List<CarEntity> glstCar = (List<CarEntity>)Session["cartItem"];
            int soluong;
            if (glstCar.Count > 0)
                soluong = glstCar.Count;
            else soluong = 0;
            ltrSoluonghang.Text = soluong.ToString();

        }
        private void Hiensp()
        {
            List<Products> n_product = Application["products"] as List<Products>;
            List<Products> n_product10;
            if (n_product.Count >= 10)
                n_product10 = n_product.GetRange(0, 10);
            else n_product10 = n_product;
            lvNewProducts.DataSource = n_product10;
            lvNewProducts.DataBind();
        }
    }
}