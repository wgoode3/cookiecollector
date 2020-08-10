<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Cookie Collector</title>
    <link rel="stylesheet" href="/webjars/bootstrap/4.5.0/css/bootstrap.min.css" />
    <script src="/webjars/jquery/3.5.1/jquery.min.js"></script>
    <script src="/webjars/bootstrap/4.5.0/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="/css/style.css" />
</head>
<body>
    <div class="container">
        <div class="jumbotron">    
            <h1>Cookie Collector</h1>
        </div>
        
        <div class="alert alert-success">You have ${total} cookies in the bank!</div>
        
        <div class="row">
            <div class="col-md-3">
                <div class="card">
                    <div class="card-header bg-primary text-light">Super Market</div>
                    <div class="card-body">
                        <p>Find 10 - 20 cookies</p>
                        <form action="/get_cookies" method="post">
                            <input type="hidden" name="location" value="super market" />
                            <input type="submit" value="Find Cookies" class="btn btn-block btn-outline-primary" />
                        </form>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="card">
                    <div class="card-header bg-success text-light">Bakery</div>
                    <div class="card-body">
                        <p>Find 5 - 10 cookies</p>
                        <form action="/get_cookies" method="post">
                            <input type="hidden" name="location" value="bakery" />
                            <input type="submit" value="Find Cookies" class="btn btn-block btn-outline-success" />
                        </form>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="card">
                    <div class="card-header bg-info text-light">Your kitchen</div>
                    <div class="card-body">
                        <p>Find 2 - 5 cookies</p>
                        <form action="/get_cookies" method="post">
                            <input type="hidden" name="location" value="kitchen" />
                            <input type="submit" value="Find Cookies" class="btn btn-block btn-outline-info" />
                        </form>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="card">
                    <div class="card-header bg-danger text-light"">The Internet</div>
                    <div class="card-body">
                        <p>Find 0 - 25 cookies</p>
                        <form action="/get_cookies" method="post">
                            <input type="hidden" name="location" value="internet" />
                            <input type="submit" value="Find Cookies" class="btn btn-block btn-outline-danger" />
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <div class="card mt-3">
            <div class="card-header bg-dark text-light">Activities</div>
            <div class="card-body">
                <div class="log">
                    <c:forEach items="${log}" var="msg">
                        <p>${msg}</p>
                    </c:forEach>       
                </div>
            </div>
        </div>
    </div>
</body>
</html>