using Home_decoration.model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Home_decoration
{
    public partial class Signin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
            protected void btnDangnhap_Click(object sender, EventArgs e)
        {
                //.gán session user và pass vào các textbox tương ứng
                Session["username"] = txtUser.Text;
                Session["password"] = txtPass.Text;
                List<User> glstusers = (List<User>)Application["users"];
                int tdn = 0;
                int mk = 0;
                ///gán tên đăng nhập và mật khẩu vào session tương ứng
                string tendangnhap = Session["username"].ToString();
                string matkhau = Session["password"].ToString();
                ///duyệt vòng for để kiểm tra tên đăng nhập và mật khẩu có đúng không
                foreach (User item in glstusers)
                {
                    if (tendangnhap.Equals(item.userName))
                        tdn = 1;
                    if (matkhau.Equals(item.passWord))
                        mk = 1;
                }

                if (tdn == 1 && mk == 1)
                {
                    Response.Write("<script>  alert('Đăng nhập thành công!');</script>");
                    Response.Write("<script>window.location='/Home.aspx';</script>");

                }
                else
                    Response.Write("<script> alert('Tên đăng nhập hoặc mật khẩu sai!')</script>");
            }
        }
    }
