<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Home_decoration.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head >
    <title>HOME</title>
    <link rel="stylesheet" href="CSS/style.css" />
    <link rel="stylesheet" href="CSS/home.css" />
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
             <a href="Cart.aspx"><img src="img/shopping-cart-icon-614x460.png" />[<asp:Literal ID="ltrSoluonghang" runat="server"></asp:Literal>] </a>
                
                 <img src="img/search-icon-2-614x460.png" />
        </div>
    </div>
    <hr />
    <div class="body">
        <%--banner--%>
        <div class="banner">
            <img src="img/banner.jpg" class="img-bn1" />
            <img src="img/bannerr.jpg" class="img-bn2"/>
            <img src="img/banner2.jpg" class="img-bn3"/>
        </div>
       <%-- new products--%>
        <div class="new-product">
           <div class="lb_np">
               <label>SẢN PHẨM MỚI</label>
           </div>
            <%--<asp:ListView ID="lvNewProducts" runat="server">
                <ItemTemplate>
                    <article class="np">
                        <img src="<%# Eval("Link") %>" />
                        <a href="sanpham.aspx?id=<%# Eval("Id") %>">
                            <h3><%# Eval("Name") %></h3>
                            <p> <%# Eval("Price") + " VND" %></p>
                        </a>
                            
                    </article>
                </ItemTemplate>
            </asp:ListView>--%>
            <asp:ListView ID="lvNewProducts" runat="server">
                    <ItemTemplate >
                        <div class="lv-np">
                            <article class="new-p">
                            <img src="<%# Eval("Link") %>" />
                            <div class="img_overlay">
                                <div class="img_title">
                                    <h4><%# Eval("Name") %></h4> 
                                    <a href="sanpham.aspx?id=<%# Eval("Id") %>">
                                        <button type="button">Xem</button>
                                    </a>
                                </div>
                            </div>
                        </article>
                        </div>
                        
                    </ItemTemplate>
                </asp:ListView>
            
        </div>

        <div class="product-portfolio">
            
            <div class="lb_cat"><label>CATEGORY</label></div>
            
            <div class="p-p col-3">
                <div class="img-pp">
                    <img src="img/project1.jpg" />
                </div>
                <div class="pp-info">
                    <h3><a>Phòng khách</a> </h3>
                </div>
            </div>
            <div class="p-p col-3">
                <div class="img-pp">
                    <img src="img/project2.jpg" />
                </div>
                <div class="pp-info">
                    <h3><a>Phòng bếp</a> </h3>
                    
                </div>
            </div>
            <div class="p-p col-3">
                <div class="img-pp">
                    <img src="img/project3.jpg" />
                </div>
                <div class="pp-info">
                   <h3><a>Phòng ngủ</a> </h3>
                </div>
            </div>
            <div class="p-p col-3">
                <div class="img-pp">
                    <img src="img/project4.jpg" />
                </div>
                <div class="pp-info">
                   <h3><a>Trang trí</a> </h3>
                </div>
            </div>
        </div>

        

    </div>
    <div class="footer">
        <div class="ft c-inf col-6">
            <div class="contact-info" id="contact-in4">
                <h3>LIÊN HỆ</h3>
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
