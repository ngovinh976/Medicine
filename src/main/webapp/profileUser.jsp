<%-- 
    Document   : profileUser
    Created on : Oct 31, 2023, 8:18:11 PM
    Author     : Ngo Phuc Vinh - CE170573
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Model.CartItem"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="Daos.ProductDAO"%>
<%@page import="Daos.UserDAO"%>
<%@page import="Model.UserModel"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tài khoản</title>
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    </head>
    <body>
        <div class="col-md-9">
            <div class="card">
                <div class="card-body">
                    <div class="row">
                        <div class="col-md-12">
                            <h4>Thông tin tài khoản</h4>
                            <hr>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <form action="/UserHomeController" method="post">
                                <div class="form-group row">
                                    <label for="username" class="col-4 col-form-label">Tên đăng nhập</label> 
                                    <div class="col-8">
                                        <input value="${sessionScope.thongtinkhachhang.username}" id="username" name="username"  class="form-control here" required="required" type="text" readonly>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="name" class="col-4 col-form-label">Họ tên</label> 
                                    <div class="col-8">
                                        <input value="${sessionScope.thongtinkhachhang.fullname}" id="name" name="name" placeholder="Full Name" class="form-control here" type="text">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="email" class="col-4 col-form-label">Email</label> 
                                    <div class="col-8">
                                        <input value="${sessionScope.thongtinkhachhang.email}" id="email" name="email" class="form-control here" type="text" readonly>
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="lastname" class="col-4 col-form-label">Điện thoại</label> 
                                    <div class="col-8">
                                        <input value="${sessionScope.thongtinkhachhang.phone}" id="phone" name="phone" placeholder="Phone Number" class="form-control here" type="text">
                                    </div>
                                </div>
<!--                                <div class="form-group row">
                                    <label for="text" class="col-4 col-form-label">Loại tài khoản</label> 
                                    <div class="col-8">
                                        <input hidden="" value="${sessionScope.thongtinkhachhang.userType}" id="text" name="UserType" placeholder="Nick Name" class="form-control here"  type="text" readonly>
                                    </div>
                                </div>-->
                                <div class="form-group row">
                                    <%
                                        String gender = (String) session.getAttribute("gender");
                                    %>
                                    <label for="email" class="col-4 col-form-label">Giới tính</label> 
                                    <input  type="radio" id="gender" name="gender" value="Male" <%= (gender.equals("Male")) ? "checked" : ""%>  /> Nam
                                    <input  style="margin-left: 30px"type="radio" id="gender" name="gender" value="Female"<%= (gender.equals("Female")) ? "checked" : ""%>/> Nữ
                                    <br>
                                 
                                </div>
                                <div class="form-group row">
                                    <label for="website" class="col-4 col-form-label">Ngày sinh</label> 
                                    <div class="col-8">
                                        <input value="${sessionScope.thongtinkhachhang.birthday}" id="birthday" name="birthday" placeholder="website" class="form-control here" type="date">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="publicinfo" class="col-4 col-form-label">Địa chỉ</label> 
                                    <div class="col-8">
                                        <textarea value="" id="addresss" name="address" cols="40" rows="4" class="form-control">${sessionScope.thongtinkhachhang.address}</textarea>
                                    </div>
                                </div>
                                <!--                                <div class="form-group row">
                                                                    <label for="newpass" class="col-4 col-form-label">New Password</label> 
                                                                    <div class="col-8">
                                                                        <input id="newpass" name="newpass" placeholder="New Password" class="form-control here" type="text">
                                                                    </div>
                                                                </div> -->
                                <div class="form-group row">
                                    <div class="offset-4 col-8">
                                        <button name="update" type="submit" class="btn btn-primary">Cập nhật</button>
                                        <a name="back" href="/UserHomeController" class="btn btn-secondary">Về trang chủ</a>
                                        <a name="back" href="/UserHomeController/ChangePass" class="btn btn-primary">Thay đổi mật khẩu</a>

                                    </div>
                                </div>
                            </form>  
                        </div>
                    </div>

                </div>
            </div>
        </div>

    </body>
</html>
