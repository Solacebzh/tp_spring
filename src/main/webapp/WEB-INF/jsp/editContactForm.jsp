<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
            crossorigin="anonymous"></script>
    <title>Project - Edit Contact</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<main class="container mx-auto mt-4">
    <div class="container">
        <div class="col-md-6 mx-auto text-center">
            <div class="header-title">
                <h2 class="wv-heading--subtitle">
                    Add a new Contact
                </h2>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4 mx-auto">
                <div class="form ">
            <form:form method="post" action="${pageContext.request.contextPath}/contacts/edit/${contact.id}">
                <div>
                    <form:hidden path="id"/>
                </div>
                <div class="form-group">
                    <label for="firstName">First name</label>
                    <form:input class="form-control" path="firstName"/>
                </div>
                <div class="form-group">
                    <label for="lastName" >Last name</label>
                    <form:input type="text" class="form-control" path="lastName"/>
                </div>
                <div class="form-group">
                    <label for="email">Email</label>
                    <form:input type="email" class="form-control" path="email"/>
                </div>
                <div class="form-group">
                    <label for="birthday">Birthday</label>
                    <form:input class="form-control" path="birthday"/>
                </div>
                <div class="form-group">
                    <label for="company">Company</label>
                    <form:input class="form-control" path="company"/>
                </div>
                <div class="form-group">
                    <label for="function">Function</label>
                    <form:input class="form-control" path="function"/>
                </div>
                <div class="form-group">
                    <label for="note">Note</label>
                    <form:input class="form-control" path="note"/>
                </div>
                <div class="form-group">
                    <label for="phoneNumber">Phone number</label>
                    <form:input class="form-control" path="phoneNumber"/>
                </div>
                <div class="form-group">
                    <label for="pictureUrl">Picture</label>
                    <form:input class="form-control" path="pictureUrl"/>
                </div>
                <input type="submit" value="save" />
            </form:form>
                </div>
            </div>
        </div>
    </div>
</main>
</body>
</html>
