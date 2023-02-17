<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<nav class="navbar navbar-dark bg-dark">
        <div class="navbar-header">
            <a class="navbar-brand" href="/ads">Meet the Animals</a>
        </div>
        <ul class="nav navbar-nav navbar-right">
            <li>
                <form action="/ads/search" class="form-inline" method="GET">
                    <input id="s" name="s" class="form-control" type="search" placeholder="Search Ads" aria-label="Search">
                    <button type="submit">Submit</button>
                </form>
            </li>
            <c:choose>
                <c:when test="${sessionScope['user'] != null}">
                    <li><a href="${pageContext.request.contextPath}/profile">View Profile</a>   <a href="${pageContext.request.contextPath}/logout">Log Out</a>   <a href="${pageContext.request.contextPath}/ads/create">Create An Ad</a></li>
                </c:when>
                <c:otherwise>
                    <li><a href="${pageContext.request.contextPath}/login">Log In</a>            <a href="${pageContext.request.contextPath}/register">Register</a></li>
                </c:otherwise>
            </c:choose>
        </ul>
    </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>


