using Home_decoration.model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Home_decoration
{
    public partial class Cart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                hienGiohang();
            List<CarEntity> glstCar = (List<CarEntity>)Session["cartItem"];
            int soluong;
            if (glstCar.Count > 0)
                soluong = glstCar.Count;
            else soluong = 0;
            ltrSoluonghang.Text = soluong.ToString();
        }

        private void hienGiohang()
        {
            ///gọi 1 list giỏ hàng rồi gán vào listview
            List<CarEntity> glstCart = (List<CarEntity>)Session["cartItem"];
            lvGiohang.DataSource = glstCart;
            lvGiohang.DataBind();
            int tong = 0;
            int dem = 0;
            ///duyệt vòng for để tính tổng tiền trong giỏ hàng
            foreach (CarEntity car in glstCart)
            {
                tong += car.TotalPrices;
                dem += car.Count;
            }
            ///Hiện tổng tiền và thành tiền
            ltrTongtien.Text = string.Format("{0:#,###,###.###}", tong);
            ltrThanhtien.Text = string.Format("{0:#,###,###.###}", (tong));
            Count.Text = dem.ToString();
        }

        protected void lvGiohang_ItemCommand(object sender, ListViewCommandEventArgs e)
        {
            ///Nếu ng dùng ấn vào nút xóa thì sp sẽ đc xóa 
            if (e.CommandName == "Xoa")
            {
                int id = Convert.ToInt32(e.CommandArgument);
                if (id > 0)
                
                    {
                        List<CarEntity> glstCar = (List<CarEntity>)Session["cartItem"];
                        CarEntity carEntity = new CarEntity();
                        carEntity.Id = id;
                        glstCar.RemoveAll(c => c.Id == id);
                        Response.Write("<script>  alert('Xóa thành công!');</script>");
                        hienGiohang();
                    }
               
            }
        }

    }
}