<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Signin.aspx.cs" Inherits="Home_decoration.Signin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ĐĂNG NHẬP</title>
     <link rel="stylesheet" href="CSS/style.css" />
    <link rel="stylesheet" href="CSS/signin.css" />
</head>
<body>
    <div class="header">
        <div class="logo col-1">
            <img src="img/logo.png" />
        </div>
        <div class="nav-bar col-9">
            <nav>
                <a href="Home.aspx">TRANG CHỦ</a>
                <a href="Product.aspx">SẢN PHẨM</a>
                <a href="#">BLOG</a>
                <a href="#contact-in4">LIÊN HỆ</a>
            </nav>
        </div>
        <div class="nav-ic col-2">
            <img src="img/heart-icon-614x460.png" />
             <a href="Cart.aspx"><img src="img/shopping-cart-icon-614x460.png" />
             </a>
                 <img src="img/search-icon-2-614x460.png" />
        </div>
    </div>
    <hr />

    <div class="body">
        <form method="post" enctype="multipart/form-data" runat="server" class="dn">
        <div class="formdn">
            
                <div class="img-dn">
                    <img src="img/new-product/n-p8.jpg" />
                </div>
                <div class="f-d-nhap">
                    <h2>ĐĂNG NHẬP</h2>
                    <br />
                    <div>
                        <label>Tên đăng nhập</label>
                    <asp:TextBox ID="txtUser" CssClass="txtuser txt" runat="server" placeholder="Tên đăng nhập"></asp:TextBox>
                    <br />
                    </div>
                    <div>
                        <label>Mật khẩu</label>
                    <asp:TextBox ID="txtPass" CssClass="txtpass txt" runat="server" TextMode="Password" placeholder="Mật Khẩu"></asp:TextBox>
                    <br />
                    </div>
                    
                <asp:Button ID="btnDangnhap" runat="server" Text="Đăng nhập" ValidationGroup="dangnhap" CssClass="btn"  OnClick="btnDangnhap_Click" />
        
                </div>
            </div>
      
    </form>
    </div>
    <div class="footer">
        <div class="ft c-inf col-6">
            <div class="contact-info" id="contact-in4">
                <h3>LIÊN HỆ</h3>
                <p>
                   <p>Email: Homedecoration@gmail.com</p> 
                    <p>Số điện thoại: 0345685425 </p>
                    <p>Facebook: Home decoration</p>
                </p>
            </div>
            
        </div>
        <div class="ft c-f col-6">
            <div class="contact-form">
                <div class="cf-tb_name">
                    <input type="text" placeholder="Enter your name" />
                </div>
                <div class="cf-tb_email">
                    <input type="email" placeholder="Enter your email" />
                </div>
                <div class="cf-ta_mess">
                    <textarea rows="4" placeholder="Write your message here">
                    </textarea>
                </div>
                <div class="btn_send">
                    <input id="btn-send" type="submit" value="Send message"/>
                </div>
            </div>
        </div>
        
    </div>
</body>
</html>
