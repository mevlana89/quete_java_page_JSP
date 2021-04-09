<%@ page import="java.util.ArrayList" %>
<%@ page import="fr.wildcodeschool.githubtracker.model.Githuber" %>
<%@ page import="java.util.List" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%--
  Created by IntelliJ IDEA.
  User: ergunmu1
  Date: 09/04/2021
  Time: 10:14
  To change this template use File | Settings | File Templates.
--%>
<jsp:include page="header.jsp"/>
<title>Github Tracker</title>
</head>
<body>
<h1>githuber by JSTL</h1>

<table class="table">
    <thead>
    <tr>
        <th scope="col">#</th>
        <th scope="col">Name</th>
        <th scope="col">Login</th>
        <th scope="col">Email</th>
        <th scope="col">Url avatar</th>
    </tr>
    </thead>
    <tbody>
    <tr>
    <c:forEach items="${ listGithubers }" var="githuber" varStatus="status">
        <td>
            <c:out value="${ githuber.getId() }"></c:out>
        </td>
        <td>
            <c:out value="${ githuber.getName() }"></c:out>
        </td>
        <td>
            <c:out value="${ githuber.getLogin() }"></c:out>
        </td>
        <td>
            <c:out value="${ githuber.getEmail() }"></c:out>
        </td>
        <td>
            <c:out value= "${ githuber.getAvatarUrl() }"></c:out>
        </td>
    </tr>
    </c:forEach>
    </tbody>
</table>

<h1>GiHubers by java </h1>
<%
    //out.println(request.getAttribute("listGithubers"));
    List<Githuber> listGithubers = (List<Githuber>) request.getAttribute("listGithubers");
%>

<!-- <p>Salut : ${listGithubers}</p> -->
<table class="table">
    <thead>
    <tr>
        <th scope="col">#</th>
        <th scope="col">Name</th>
        <th scope="col">Login</th>
        <th scope="col">Email</th>
        <th scope="col">Url avatar</th>
    </tr>
    </thead>
    <tbody>
    <tr>
        <%
            for (Githuber githubersList : listGithubers) {
                out.println("<td>" + githubersList.getId() + "</td>");
                out.println("<td>" + githubersList.getName() + "</td>");
                out.println("<td>" + githubersList.getLogin() + "</td>");
                out.println("<td>" + githubersList.getEmail() + "</td>");
                out.println("<td>" + githubersList.getAvatarUrl() + "</td>");
                out.println("</tr>");
            }
        %>
    </tbody>
</table>

</body>
</html>
