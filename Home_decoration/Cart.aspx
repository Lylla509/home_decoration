<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="Home_decoration.Cart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head >
    <title></title>
    <link rel="stylesheet" href="CSS/style.css" />
    <link rel="stylesheet" href="CSS/cart.css" />
    <script type="text/javascript">
        function checkxoa() {

        }
    </script>
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

    <div>

    
    <section class="scroll">
        <table class="customers">
            <thead class="ttbar">
                <tr>
                    <td></td>
                    <td></td>
                    <td>Tên Sản Phẩm</td>
                    <td>Giá</td>
                    <td>Số Lượng</td>
                    <td>Thành Tiền</td>
                </tr>
            </thead>
            <tbody class="product-list">
            <asp:ListView ID="lvGiohang" runat="server" OnItemCommand="lvGiohang_ItemCommand">
            <ItemTemplate>
                <tr class="tblsp">
                    <td class="td-xoa">
                        
                            <i class="fa fa-times" aria-hidden="true"></i>
                            <asp:Button ID="btnXoa" runat="server" CssClass="btn-xoa" CommandName="Xoa" CommandArgument='<%# Eval("Id") %>' Text="Xóa"/>
                    </td>
                    <td class="img1"><img src="<%# Eval("Path") %>" alt=""></td>
                    <td class="name"><%# Eval("Name") %></td>
                    <td class="price"><%# string.Format("{0:#,###,###.###}", Eval("Price")) %> vnđ</td>
                    <td class="count">
                        <%# Eval("Count") %>
                    </td>
                    <td class="total"><%# string.Format("{0:#,###,###.###}",Eval("TotalPrices")) %> vnđ</td>
                </tr>
            </ItemTemplate>
        </asp:ListView>
            </tbody>
            <tfoot>
                <tr>
                    <td colspan="2">Tổng số lượng sản phẩm</td>
                    <td class="count" colspan="2">
                       <asp:Literal ID="Count" runat="server"></asp:Literal>
                    </td>
                </tr>
            </tfoot>
        </table>
    </section>

        <div class="form2">
					<form class="form-total-price">
						<div class="hd">
							<h1 class="text2-h1">HÓA ĐƠN</h1>
							
							<h3>Tổng: <asp:Literal ID="ltrTongtien" runat="server"></asp:Literal> vnđ</h3>
							<h3>Phí Ship : 0đ</h3>
							<h3>Chiết Khấu: 0</h3>
							<p>-----------------------</p>
							<h3>Tổng tiền: <asp:Literal ID="ltrThanhtien" runat="server"></asp:Literal>  vnđ</h3>
							<button type="submit" class="submit-button-text1"><a>Đặt Hàng</a></button>
						</div>
					</form>
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
        </form>
</body>
</html>
