<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<div class=" navagationBar">
        <div class=" topNavBar">
            <a href="${pageContext.request.contextPath}/">PAD<i class="fa-solid fa-paw fa-2xl" style="color: #dbdfe6;"></i>Lister</a>
        </div>
        <div class="bottomNavBar">
            <c:choose>
                <c:when test="${sessionScope['user'] != null}">
                    <li><a href="${pageContext.request.contextPath}/profile">View Profile</a></li>
                    <li><a href="${pageContext.request.contextPath}/ads">View Ads</a></li>
                    <li><a href="${pageContext.request.contextPath}/ads/create">Create Ads</a></li>
                    <li><a href="${pageContext.request.contextPath}/logout">Logout</a></li>
                </c:when>
                <c:otherwise>
                    <li><a href="${pageContext.request.contextPath}/ads">View Ads</a></li>
                    <li><a href="${pageContext.request.contextPath}/login">Login</a></li>
                    <li><a href="${pageContext.request.contextPath}/register">Register</a></li>

                </c:otherwise>
            </c:choose>
            <li>
                <form action="${pageContext.request.contextPath}/ads/search" class="searchBar" method="GET">
                    <input id="s" name="s" class="form-control" type="search" placeholder="Search Ads..." aria-label="Search">
                    <button class="btn btn-outline-success" type="submit"><i class="fas fa-search"></i></button>
                </form>
            </li>
        </div>
</div>


