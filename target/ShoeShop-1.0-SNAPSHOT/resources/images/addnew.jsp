<%-- 
    Document   : addnew
    Created on : Oct 16, 2023, 2:36:57 PM
    Author     : C15TQK
--%>

<%@page import="DAOc.CateDAO"%>
<%@page import="DAOc.brandsDAO"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="DAOc.productDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="resources/bootstrap.css"/>
        <link rel="stylesheet" href="/resources/bootstrap.min.css"/>

    </head>
    <body>
        <h1 class="text-center">Add new !</h1>
        <form method="post" enctype="multipart/form-data" onsubmit="return validateForm()" action="ProductController">
            <div class="row">     
                <div class="col-sm-2"><p>Product Name</p></div>
                <div class="col-sm-8"><input class="form-control" type="text" name="name" id="name" /></div>
            </div>

            <div class="row">
                <div class="col-sm-2"><p>Description</p></div>
                <div class="col-sm-8"><input class="form-control" type="text" name="des" id="des" /></div>
            </div>

            <div class="row">
                <div class="col-sm-2"><p>Price</p></div>
                <div class="col-sm-8"><input class="form-control" type="number" name="price" id="price" /></div>
            </div>

            <div class="row">
                <div class="col-sm-2"><p>Quantity</p></div>
                <div class="col-sm-8"><input class="form-control" type="number" name="quantity" id="quantity" /></div>
            </div>

            <div class="row">
                <div class="col-sm-2"><p>Size</p></div>
                <div class="col-sm-8"><input class="form-control" type="number" name="size" id="size" /></div>
            </div>

            <div class="row">
                <div class="col-sm-2"><p>Image</p></div>
                <div class="col-sm-8"><input class="form-control" type="file" name="image" id="image" size="50" /></div>
            </div>

            <div class="row">
                <div class="col-sm-2"><p>Categories ID</p></div>
                <div class="col-sm-8">
                    <select name="catid" id="catid" class="form-control">
                        <%
                            CateDAO cDAO = new CateDAO();
                            ResultSet rs = cDAO.getCate();
                            while (rs.next()) {

                        %>
                        <option value="<%= rs.getInt("CateID")%>"><%= rs.getString("CateName")%></option>

                        <%                             }
                        %>
                    </select></div>            
            </div>

            <div class ="row">
                <div class="col-sm-2"><p>Brand ID</p></div>
                <div class="col-sm-8">
                    <select name="brandid" id="brandid" class="form-control">
                        <%
                            brandsDAO cDAO2 = new brandsDAO();
                            ResultSet r = cDAO2.getBrand();
                            while (r.next()) {
                        %>
                        <option value="<%= r.getInt("BrandID")%>"><%= r.getString("BrandName")%></option>
                        <%
                            }
                        %>

                    </select>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-2"><p>Color</p></div>
                <div class="col-sm-8">
                    <input type="text" name="color" id="color" class="form-control"/></div>
            </div>

            <div class="col-sm-2"></div>
            <div class="col-sm-8" id="lbtn">
                <input class="rounded-button"  type="submit" name="btnAddNew" value="Add New"/>
                <button class="rounded-button" id="btl">Back to List</button>
            </div>
        </form>


        <script >
            function validateForm() {

                var name = document.getElementById("name").value;
                var des = document.getElementById("des").value;
                var price = document.getElementById("price").value;
                var quantity = document.getElementById("quantity").value;
                var size = document.getElementById("size").value;
                var image = document.getElementById("image").value;
                var catid = document.getElementById("catid").value;
                var brandid = document.getElementById("brandid").value;
                var color = document.getElementById("color").value;
                if (name === "" || des === "" || price === "" || quantity === "" || size === "" || catid === "" || brandid === "" || color === "") {
                    alert("Please enter full data!");
                    return false;
                }

                if (!image) {
                    alert("Please, choose a picture!");
                    return false;
                }

                // Code kiểm tra giá trị của các trường số
                if (price <= 0 || quantity <= 0 || size <= 0) {

                    alert("Accept only positive number greater than 0!");
                    return false;
                }
                if (isNaN(price) || isNaN(quantity) || isNaN(size)) {
                    alert("Input must be number.");
                }
                return true;
            }

        </script>

    </body>
</html>
