<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
    <title>Document</title>
</head>
<body>
    <div class="modal modal-signin position-static d-block bg-secondary py-5" tabindex="-1" role="dialog" id="modalSignin">
        <div class="modal-dialog" role="document">
            <div class="modal-content rounded-4 shadow">
                <div class="modal-header p-5 pb-4 border-bottom-0">
                    <!-- <h1 class="modal-title fs-5" >Modal title</h1> -->
                    <h1 class="fw-bold mb-0 fs-2">Sign up for free</h1>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body p-5 pt-0">
                    <form:form method="post" action="${pageContext.request.contextPath}/signup" modelAttribute="createUser">

                        <div class="form-floating mb-3">
                            <form:input type="text" class="form-control rounded-3" path="pictureUrl"/>
                            <label for="pictureUrl" >Picture</label>
                        </div>

                        <div class="form-floating mb-3">
                            <form:input type="text" class="form-control rounded-3" path="firstName"/>
                            <label for="firstName" >First name</label>
                        </div>

                        <div class="form-floating mb-3">
                            <form:input type="text" class="form-control rounded-3" path="lastName"/>
                            <label for="lastName" >Last name</label>
                        </div>

                        <div class="form-floating mb-3">
                            <form:input class="form-control rounded-3"  path="email" required="true"/>
                            <form:errors path="email" cssStyle="color: #ff0008;"/>
                            <label for="email">Email</label>
                        </div>

                        <div class="form-floating mb-3">
                            <form:input type="password" class="form-control rounded-3" path="password" required="true"/>
                            <form:errors path="password" cssStyle="color: #ff0008;"/>
                            <label for="password" >Password</label>
                        </div>

                        <button class="w-100 mb-2 btn btn-lg rounded-3 btn-primary" value="Save"type="submit">Sign
                            up</button>
                        <small class="text-muted">By clicking Sign up, you agree to the terms of use.</small>
                    </form:form>
                </div>
            </div>
        </div>
    </div>
</body>
</html>