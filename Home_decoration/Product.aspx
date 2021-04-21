<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Product.aspx.cs" Inherits="Home_decoration.Product" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head >
    <title>PRODUCT</title>
    <link rel="stylesheet" href="CSS/style.css" />
    <link rel="stylesheet" href="CSS/product.css" />
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
             <a href="Cart.aspx"><img src="img/shopping-cart-icon-614x460.png" />[<asp:Literal ID="ltrSoluonghang" runat="server"></asp:Literal>]
             </a>
            <img src="img/search-icon-2-614x460.png" />
        </div>
    </div>
    
    <div class="body">
        <div class="menu-bar">
            <table>
                <tr>
                    <td><a>SẢN PHẨM MỚI</a>  </td>
                    <td><a>PHÒNG KHÁCH</a>   </td>
                    <td><a>PHÒNG BẾP</a>  </td>
                    <td><a>PHÒNG NGỦ</a>  </td>
                    <td><a>NGOÀI TRỜI</a>  </td>
                </tr>
            </table>
        </div>
        <%--container--%>
        <div class="container">
            
            <div class="sidebar col-3">
                <input type="text" id="txt_search"/>
                <button type="submit" id="btn_search" class="tbntim">Tìm
                </button>
                
            </div>
            <%-- new products--%>
            <div class="new-product">
                <div class="col-9">
                    <%--<asp:ListView ID="lvNewProducts" runat="server">
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
                </asp:ListView>--%>
                    <asp:ListView ID="lvNewProducts" runat="server">
                <ItemTemplate>
                    <article class="np">
                        <img src="<%# Eval("Link") %>" />
                        <a href="sanpham.aspx?id=<%# Eval("Id") %>">
                            <h3><%# Eval("Name") %></h3>
                            <p> <%# string.Format("{0:#,###,###.###}",Eval("Price")) %> VND
                            </p>
                        </a>
                            
                    </article>
                </ItemTemplate>
            </asp:ListView>
                </div>
            
            </div>
        </div>
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
