<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: qdesnik
  Date: 15.08.2019
  Time: 16:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="styles/w3.css">
    <title>Users</title>
</head>
<body>
<div>
    <h1>qNotes</h1>
</div>

   <div>
       <div>
           <div>
               <h2>Users</h2>

   </div>
    <%
        List<String> names = (List<String>) request.getAttribute("userNames");

        if (names != null && !names.isEmpty()) {
            out.println("<ul>");
            for (String s : names) {
                out.println("<li>" + s + "</li>");
            }
            out.println("</ul>");
        } else out.println("<p>There are no users yet!</p>");
    %>
       </div>
   </div>

<div>
    <button onclick="location.href='/'">Back to main</button>
</div>
</body>
</html>
