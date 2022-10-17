<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
    <title>Book Project - List</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<main class="container mx-auto mt-4">
        <div class="row">
            <c:forEach items="${contacts}" var="contact">
                <div class="card">
                    <h5 class="card-header" name="contact">${contact.firstName} ${contact.lastName}</h5>
                    <div class="card-body">
                        <h5 class="card-title" >Number Phone</h5>
                        <p class="card-text" name="contact">${contact.phoneNumber}</p>
                        <a href="${pageContext.request.contextPath}/contacts/details/${contact.id}"
                           class="btn btn-primary">Show Detail</a>
                    </div>
                </div>
            </c:forEach>
        </div>
</main>
</body>
</html>