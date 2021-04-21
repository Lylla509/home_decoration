using Home_decoration.model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Home_decoration
{
    public partial class sanpham : System.Web.UI.Page
    {
        private const string QUERYSANPHAMID = "id";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                hienBaiViet();
            List<CarEntity> glstCar = (List<CarEntity>)Session["cartItem"];
            int soluong;
            if (glstCar.Count > 0)
                soluong = glstCar.Count;
            else soluong = 0;
            ltrSoluonghang.Text = soluong.ToString();
        }
        private void hienBaiViet()
        {
            int id = Convert.ToInt32(Request.QueryString[QUERYSANPHAMID]);
            List<Products> n_product = Application["products"] as List<Products>;
            n_product = n_product.FindAll(bv => bv.Id == id);
            lvProducts.DataSource = n_product;
            lvProducts.DataBind();
        }

        protected void lvChitietSanpham_ItemCommand(object sender, ListViewCommandEventArgs e)
        {
            ///Khi nguwoif dùng ấn vào thêm giỏ hàng thì dữ liệu đc chuyển sang giỏ hàng
            if (e.CommandName == "Them")
            {
                int id = Convert.ToInt32(e.CommandArgument);
                if (id > 0)
                {
                    TextBox txtSoluong = e.Item.FindControl("txtSoluong") as TextBox;
                    int soluong = Convert.ToInt32(txtSoluong.Text);

                    List<Products> n_product = (List<Products>)Application["products"];
                    List<CarEntity> glstCar = (List<CarEntity>)Session["cartItem"];
                    CarEntity cart = new CarEntity();
                    n_product = n_product.FindAll(sp => sp.Id == id);
                    cart.Id = n_product[0].Id; // gán id bằng id sản phẩm tìm đc trong danh sách
                    cart.Path = n_product[0].Link; // gán link ảnh bằng link ảnh sản phẩm tìm đc trong danh sách
                    cart.Name = n_product[0].Name; // gán tên sp bằng tên sp sản phẩm tìm đc trong danh sách
                    cart.Price = n_product[0].Price; // gán giá bằng giá sản phẩm tìm đc trong danh sách
                    cart.Count = soluong; // số lượng số lượng chọn trên textbox
                    cart.TotalPrices = cart.Price * cart.Count; //tổng tiền
                    glstCar.Add(cart); // thêm vào giỏ hàng
                    if (cart.Count > 0)
                    {
                        Response.Write("<script>  alert('Thêm thành công!');</script>");
                        Response.Write("<script>window.location='/product.aspx';</script>");
                    }
                }
            }
        }
    }
}