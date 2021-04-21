using Home_decoration.model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace Home_decoration
{
    public class Global : System.Web.HttpApplication
    {

        protected void Application_Start(object sender, EventArgs e)
        {
            List<Products> n_product = new List<Products>();
            n_product.Add(new Products() 
            { Id = 1, Name = "Sofa đơn xanh nhạt", Describe = "Ghế sofa đơn xanh nhạt là mẫu nội thất mang phong cách hiện đại tới từ Châu Âu vừa có thể sử dụng, làm đồ trang trí trong nhà, trong phòng đọc sách vừa có thể làm quà tặng cho bạn bè và người thân. Phù hợp với nhiều vị trí trong gia đình và dễ dàng di chuyển tới nhiều vị trí khác nhau trong nhà.", Link = "img\\new-product\\n-p1.jpg", Price = 1200000});
            n_product.Add(new Products()
            { Id = 2, Name = "Kệ gỗ", Describe = "Kệ gỗ là mẫu nội thất mang phong cách hiện đại tới từ Châu Âu vừa có thể sử dụng, làm đồ trang trí trong nhà, trong phòng đọc sách vừa có thể làm quà tặng cho bạn bè và người thân. Phù hợp với nhiều vị trí trong gia đình và dễ dàng di chuyển tới nhiều vị trí khác nhau trong nhà.", Link = "img\\new-product\\n-p2.jpg", Price = 2100000 });
            n_product.Add(new Products()
            { Id = 3, Name = "Khay gỗ mặt kính", Describe = "Khay gỗ mặt kính là mẫu nội thất mang phong cách hiện đại tới từ Châu Âu vừa có thể sử dụng, làm đồ trang trí trong nhà, trong phòng đọc sách vừa có thể làm quà tặng cho bạn bè và người thân. Phù hợp với nhiều vị trí trong gia đình và dễ dàng di chuyển tới nhiều vị trí khác nhau trong nhà.", Link = "img\\new-product\\n-p3.jpg", Price = 350000 });
            n_product.Add(new Products()
            { Id = 4, Name = "Tranh treo tường", Describe = "Tranh treo tường là mẫu nội thất mang phong cách hiện đại tới từ Châu Âu vừa có thể sử dụng, làm đồ trang trí trong nhà, trong phòng đọc sách vừa có thể làm quà tặng cho bạn bè và người thân. Phù hợp với nhiều vị trí trong gia đình và dễ dàng di chuyển tới nhiều vị trí khác nhau trong nhà.", Link = "img\\new-product\\n-p4.jpg", Price = 200000 });
            n_product.Add(new Products()
            { Id = 5, Name = "Bộ 3 tranh treo tường", Describe = "Bộ 3 tranh treo tường là mẫu nội thất mang phong cách hiện đại tới từ Châu Âu vừa có thể sử dụng, làm đồ trang trí trong nhà, trong phòng đọc sách vừa có thể làm quà tặng cho bạn bè và người thân. Phù hợp với nhiều vị trí trong gia đình và dễ dàng di chuyển tới nhiều vị trí khác nhau trong nhà.", Link = "img\\new-product\\n-p5.jpg", Price = 500000 });
            n_product.Add(new Products()
            { Id = 6, Name = "Giá cây", Describe = "Giá cây là mẫu nội thất mang phong cách hiện đại tới từ Châu Âu vừa có thể sử dụng, làm đồ trang trí trong nhà, trong phòng đọc sách vừa có thể làm quà tặng cho bạn bè và người thân. Phù hợp với nhiều vị trí trong gia đình và dễ dàng di chuyển tới nhiều vị trí khác nhau trong nhà.", Link = "img\\new-product\\n-p6.jpg", Price = 100000 });


            //Tạo các aplication tương ứng cho từng đối tượng
            Application["products"] = n_product;
            

            Application["users"] = new List<User>() { new User { userName = "admin", passWord = "123", email = "thanhthuylss99@gmail.com", soHC="A123456" } };
        }

        protected void Session_Start(object sender, EventArgs e)
        {
            ///Tạo sesstion car để lưu danh sách cart cho phiên làm vc
            Session["cartItem"] = new List<CarEntity>();

            Session["TaikhoanDangky"] = new List<User>();
        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {

        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
    }
}