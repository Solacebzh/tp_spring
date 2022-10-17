<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
    <title>Book Project - List</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<main class="container mx-auto mt-4">
    <div class="row">
            <div class="col-md-4">
                <div class="card" style="width: 18rem;">
                    <img src="${contact.pictureUrl}" class="card-img-top" alt="..." style="height: 200px;
                        object-fit: scale-down;">
                    <div class="card-body">
                        <h6 class="card-subtitle mb-2 text-muted"name="contact">${contact.firstName}</h6>
                        <p class="card-text"name="contact">${contact.lastName}</p>
                        <p class="card-text"name="contact">${contact.email}</p>
                        <p class="card-text"name="contact">${contact.birthday}</p>
                        <p class="card-text"name="contact">${contact.company}</p>
                        <p class="card-text"name="contact">${contact.function}</p>
                        <p class="card-text"name="contact">${contact.note}</p>
                        <p class="card-text"name="contact">${contact.phoneNumber}</p>
                        <a href="${pageContext.request.contextPath}/contacts/editContact/${contact.id}">Edit</a>
                        <a href="${pageContext.request.contextPath}/contacts/deleteContact/${contact.id}">Delete</a>
                    </div>
                </div>
            </div>
    </div>
</main>
</body>
</html>