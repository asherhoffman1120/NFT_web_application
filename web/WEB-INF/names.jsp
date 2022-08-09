<%--
  Created by IntelliJ IDEA.
  User: johnpiapian
  Date: 8/8/22
  Time: 8:08 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="Model.Test" %>
<% Test tests[] = (Test[]) request.getAttribute("data"); %>
<html>
<head>
    <title>Display</title>
    <style>
        .container {
            display: flex;
            flex-direction: row;
            justify-content: center;
        }

        table, th, td {
            /*border: 1px solid black;*/
            border-collapse: collapse;
            text-align: center;
        }

        table {
            border: 1px solid black;
        }

        tr:nth-child(even) {
            background-color: #eaeaea;
        }

        tr.header {
            background-color: #2a2a2a;
        }

        th {
            color: whitesmoke;
            padding: 10px;
        }

        td {
            padding: 10px;
            min-width: 200px;
        }
    </style>
</head>
<body>
    <div class="container">
        <table>
            <tr class="header">
                <th>Names</th>
            </tr>
            <% for(Test t : tests) { %>
            <tr><td><%= t.getName() %></td></tr>
            <% } %>
        </table>
    </div>
</body>
</html>
