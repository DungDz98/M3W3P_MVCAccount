<%--
  Created by IntelliJ IDEA.
  User: dungn
  Date: 7/30/2021
  Time: 9:15 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create Account</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <style>

    </style>
</head>
<body>
<div class="container">
    <h2 class="text-center">Tạo tài khoản</h2>
    <form action="/account?action=create" method="post">
        <table class="table table-striped text-center">
            <thead>
            <tr>
                <th>ID</th>
                <th>Tên tài khoản</th>
                <th>Mật khẩu</th>
                <th>Email</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td><input type="text" placeholder="Nhập id" name="id"></td>
                <td><input type="text" placeholder="Nhập tên" name="user"></td>
                <td><input type="password" placeholder="Nhập password" name="pass"></td>
                <td><input type="text" placeholder="Nhập giá" name="email"></td>
            </tr>
            <tr>
                <td>
                    <button type="submit" class="btn btn-success">Create</button>
                </td>
            </tr>
            </tbody>
        </table>
    </form>
</div>

</body>
</html>
