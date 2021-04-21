<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="sanpham.aspx.cs" Inherits="Home_decoration.sanpham" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head >
    <title></title>
    <link rel="stylesheet" href="CSS/style.css" />
    <link rel="stylesheet" href="CSS/sanpham.css" />
</head>
<body>
    <form runat="server"> 
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
    <hr />
    <div class="main" >
        
        <asp:ListView ID="lvProducts" runat="server" OnItemCommand="lvChitietSanpham_ItemCommand">
            <ItemTemplate >
                <div class="img col-7">
                    <div>
                        <img src="<%# Eval("Link") %>" />
                    </div>
                    
                </div>
                <div class="describe col-3">
                    <h1> <%# Eval("Name") %></h1>
                    <h2> <%# string.Format("{0:#,###,###.###}",Eval("Price")) %>VND</h2>
                     <form action="#">
                        <div class="tb-sl">
                            <label for="quantity">
                            <lable>Số Lượng:</lable>
                        </label>
                            <asp:TextBox ID="txtSoluong" runat="server" TextMode="Number" min="1" max="100" Text="1"></asp:TextBox>
                        <br />
                        </div>
                        <div class="bt-them">
                            <asp:Button ID="btnThem" runat="server" Text="Thêm vào giỏ hàng" CommandArgument='<%# Eval("Id") %>' CommandName="Them" CssClass="btnThem" />
                    </div>
                        </form>
                    <div class="des">
                        <p>
                        <%# Eval("Describe") %>
                    </p>
                    </div>
                    
                </div>
                <%--<div class="lv-np">
                    <article class="new-p">
                    <img src="<%# Eval("Link") %>" />
                    <div class="img_overlay">
                        <div class="img_title">
                            <h4><%# Eval("Name") %></h4> 
                            <p></p>
                        </div>
                    </div>
                </article>
                </div>--%>
                        
                    </ItemTemplate>
            <%--<ItemTemplate>
                <div class="post" id="id">
            <div class="col-6">
            <img src="<%# Eval("Link") %>" alt="" />
        </div>
        <div class="col-6">
            <h3><%# Eval("Name") %></h3>
            <h4> <%# Eval("Price") %> </h4>
            <p>Mô tả</p>
            <p> <%# Eval("Describe") %> </p>
        </div>
        </div>
            </ItemTemplate>--%>
        </asp:ListView>
        
        
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
        </form>
</body>
</html>
