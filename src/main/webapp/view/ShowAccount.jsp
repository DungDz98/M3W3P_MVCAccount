<%--
  Created by IntelliJ IDEA.
  User: dungn
  Date: 7/30/2021
  Time: 9:09 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Show Account</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <style>
        #orderBtn {
            display: inline-block;
        }
    </style>
</head>
<body>
<div class="container">
    <h2 class="text-center">Quản lý tài khoản</h2>
    <p>Vui lòng tạo tài khoản tại đây: <a id="orderBtn" href="/account?action=create" class="btn btn-success">Create</a></p>
    <table class="table table-striped text-center">
        <thead>
        <tr>
            <th>ID</th>
            <th>Tên tài khoản</th>
            <th>Mật khẩu</th>
            <th>Email</th>
            <th colspan="2">Tùy chọn</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${listAccount}" var="a" varStatus="loop">
            <tr>
                <td>${a.id}</td>
                <td>${a.username}</td>
                <td>${a.password}</td>
                <td>${a.email}</td>
                <td><a href="/account?action=delete&index=${loop.index}" class="btn btn-danger">Delete</a></td>
                <td><a href="/account?action=edit&index=${loop.index}" class="btn btn-warning">Edit</a></td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>

</body>
</html>

