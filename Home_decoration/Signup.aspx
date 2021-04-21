<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="Home_decoration.Signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ĐĂNG KÝ</title>
     <link rel="stylesheet" href="CSS/style.css" />
    <script type="text/javascript">
        function checktuoi() {
            var txtNgaythang = document.getElementById('txtNgaythang');
            var ngayhientai = new Date();
            var ngaysinh = new Date(txtNgaythang.value);
            if (ngayhientai.getFullYear() - ngaysinh.getFullYear() < 1) {
                alert("Khách hàng phải có ngày sinh lớn hơn ngày hiện tại");
                txtNgaythang.focus();
            }
        }
        function checkHC() {
            var txthochieu = document.getElementById("txthochieu").text;
            if (txthochieu.length < 6 && txthochieu > 10) {
                alert("Số hộ chiếu nằm trong khoảng 6-10 ký tự");
            }
        }
        
    </script>
</head>
<body>
    <div class="header">
        <div class="logo col-1">
            <img src="img/logo.png" />
        </div>
        <div class="nav-bar col-9">
            <nav>
                <a href="Home.aspx">HOME</a>
                <a href="Product.aspx">PRODUCT</a>
                <a href="#">ABOUT US</a>
                <a href="#contact-in4">CONTACT</a>
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
            <h2>ĐĂNG KÝ</h2>
        <br />
        <label>Tên đăng nhập</label>
                <asp:TextBox ID="txtUser" runat="server" placeholder="Tên đăng nhập"></asp:TextBox>
            <%--<asp:RequiredFieldValidator ID="rvfHoten" runat="server" ErrorMessage="*" Display="Dynamic" ForeColor="Red" ValidationGroup="dangky" ControlToValidate="txtHoten"></asp:RequiredFieldValidator>
                --%>
           
            <br />
        <label>Email</label>
               <asp:TextBox ID="txtEmail" runat="server" TextMode="Email" placeholder="Email"></asp:TextBox>
             <br />
            <label>Số hộ chiếu</label>
               <asp:TextBox ID="txthochieu" runat="server" Tplaceholder="Số hộ chiếu"></asp:TextBox>
             <br />
        <label>Mật khẩu</label>
               <asp:TextBox ID="txtPass" runat="server" TextMode="Password" placeholder="Mật Khẩu"></asp:TextBox>
            <br />
            <asp:Button ID="btnDangky" runat="server" Text="Đăng ký" ValidationGroup="dangky" CssClass="btn" OnClientClick="checkHC()"  OnClick="btnDangky_Click" />
        <div class="re">
                    <h3>Bạn đã có tài khoản?</h3>
                    <button><a href="Signin.aspx">Đăng Nhập</a></button>
                </div>
        </div>
      
    </form>
    </div>
    <div class="footer">
        <div class="ft c-inf col-6">
            <div class="contact-info" id="contact-in4">
                <h3>CONTACT US</h3>
                <p>
                   <p>Email: Homedecoration@gmail.com</p> 
                    <p>Phone: 0345685425 </p>
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
