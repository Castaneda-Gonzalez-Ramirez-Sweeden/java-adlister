<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Please Log In" />
    </jsp:include>
</head>

<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />
<div class="container" >
    <h1>Please log into the site:</h1>
    <form action="/login" method="POST">
        <div class="form-group">
            <label for="username">Username</label>
            <input id="username" name="username" class="form-control" type="text">
        </div>
        <div class="form-group">
            <label for="password">Password</label>
            <input id="password" name="password" class="form-control" type="password">
        </div>
        <button type="submit" value="Log In">Log In</button>
    </form>
</div>
</body>

</html>
