<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing All The Ads"/>
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp"/>


<div class="container">
    <h1 class="heading">Here Are all the ads!</h1>
    <div class="row">
        <c:forEach var="ad" items="${ads}">
            <div class="col-md-4">
                <div class="borderAd">
                    <h2>${ad.title}</h2>
                    <div class="d-flex justify-content-around">
                        <form action="/ads/single" method="get">
                            <Button type="submit" value="${ad.id}" name="adID"> More Details</Button>
                        </form>
                        <form action="/ads/delete" method="post">
                            <Button type="submit" value="${ad.id}" name="deleteMe"> Delete</Button>
                        </form>
                        <form action="/edit-ad" method="get">
                            <Button type="submit" value="${ad.id}" name="editMe">Edit</Button>
                        </form>
                    </div>
                </div>
            </div>
        </c:forEach>
    </div>
</div>

</body>
</html>
