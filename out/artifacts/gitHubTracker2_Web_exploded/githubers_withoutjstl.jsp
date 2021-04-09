<%@ page import="java.util.ArrayList" %>
<%@ page import="fr.wildcodeschool.githubtracker.model.Githuber" %>
<%@ page import="java.util.List" %><%--
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
<h1>githuber</h1>
<%
    Githuber githuber = (Githuber) request.getAttribute("githuber");
    //githuber.getName()
    out.println(githuber.getName()); %>
<p>Salut : ${githuber.getName()}</p>

<h1>listGithubers</h1>
<%
    //out.println(request.getAttribute("listGithubers"));
    List<Githuber> listGithubers = (List<Githuber>) request.getAttribute("listGithubers");
%>
<p>Salut : ${listGithubers}</p>
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
