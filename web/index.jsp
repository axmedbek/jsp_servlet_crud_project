<%--
  Created by IntelliJ IDEA.
  User: m.ehmed
  Date: 7/24/2018
  Time: 11:38 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <jsp:include page="layouts/header.jsp"></jsp:include>
    <style>
        #loginForm {
            padding: 20px;
            margin-top: 10%;
            border: 1px solid #007bff;
            border-radius: 5px;
            margin-left: 35%;
            margin-right: 30%;
            box-shadow: 5px 5px #007bff;
        }
        .welcome-text{
            margin-bottom: 35px;
            font-style: italic;
            padding: 5px;
            border: 2px solid #9ac6f5;
            border-radius: 10px;
            color: dimgrey;
        }
    </style>
</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <form id="loginForm" action="/login" method="post">
                <h3 class="text-center welcome-text">Welcome to Swotline</h3>
                <div class="form-group">
                    <label for="exampleInputEmail1">Email address</label>
                    <input type="email" name="email" class="form-control" id="exampleInputEmail1"
                           aria-describedby="emailHelp" placeholder="Enter email">
                </div>
                <div class="form-group">
                    <label for="exampleInputPassword1">Password</label>
                    <input type="password" name="password" class="form-control" id="exampleInputPassword1"
                           placeholder="Password">
                </div>
                <div class="form-group form-check">
                    <input type="checkbox" name="accept" class="form-check-input" id="exampleCheck1">
                    <label class="form-check-label" for="exampleCheck1">Remember me</label>
                </div>
                <div class="text-center">
                    <button type="submit" class="btn btn-primary btn-sm" style="width: 150px;">Sign-in</button>
                </div>
            </form>
        </div>
    </div>
</div>
<jsp:include page="layouts/footer.jsp"></jsp:include>
</body>
</html>
