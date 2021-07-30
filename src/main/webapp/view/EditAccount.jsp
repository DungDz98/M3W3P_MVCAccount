<%--
  Created by IntelliJ IDEA.
  User: dungn
  Date: 7/30/2021
  Time: 9:16 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit Account</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <style>

    </style>
</head>
<body>
<div class="container">
    <h2 class="text-center">Sửa tài khoản</h2>
    <form method="post">
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
                <td><input type="text" placeholder="Nhập id" name="id" value="${account.id}" readonly></td>
                <td><input type="text" placeholder="Nhập tên tài khoản" name="user" value="${account.username}"></td>
                <td><input type="text" placeholder="Nhập mật khẩu" name="pass" value="${account.password}"></td>
                <td><input type="text" placeholder="Nhập email" name="email" value="${account.email}"></td>
            </tr>
            <tr>
                <td>
                    <button type="submit" class="btn btn-warning">Edit</button>
                </td>
            </tr>
            </tbody>
        </table>
    </form>
</div>

</body>
</html>
