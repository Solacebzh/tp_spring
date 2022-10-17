<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<header>
    <nav class="navbar navbar-dark navbar-expand-lg bg-dark">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">Home</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link" href="${pageContext.request.contextPath}/contacts/addContactForm">Add
                            Contact</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" href="${pageContext.request.contextPath}/signup/<sec:authentication property='principal.username' />">Profil
                        </a>
                    </li>
                    <sec:authorize access="isAuthenticated()">
                    <form:form action="/logout" method="post" >
                        <button class="btn btn-outline-danger" type="submit">Deconnexion</button>
                    </form:form>
                    </sec:authorize>
                </ul>
                <form class="d-flex" role="search" method="get">
                    <input id="search" name="search" class="form-control me-2" type="search"
                           placeholder="search"
                           aria-label="search" action="${pageContext.request.contextPath}/contacts/all">
                    <button class="btn btn-outline-success" type="submit">Search</button>
                </form>
            </div>
        </div>
    </nav>
</header>