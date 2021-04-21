using Home_decoration.model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Home_decoration
{
    public partial class Signup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnDangky_Click(object sender, EventArgs e)
        {
            string email = txtEmail.Text;
            string passWord = txtPass.Text;
            string soHc = txthochieu.ToString();
            string name = txtUser.Text;
            if (soHc.Length < 6)
            {
                Response.Write("<script> alert('Số hộ chiếu nằm trong khoảng 6-10 ký tự')</script>");
            }
            else
            {
                List<User> nguoidung = Session["TaikhoanDangky"] as List<User>;
                nguoidung.Add(new User() { userName = name, email = email, passWord = passWord, soHC = soHc });
                Response.Write("<script> alert('Đăng ký thành công')</script>");
                Response.Write("<script>window.location='/Home.aspx';</script>");
            }
            
        }
    }
}