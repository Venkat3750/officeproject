<html>

<head>

    <title>Yahoo!!</title>

    <style>

        table {

            font-family: arial, sans-serif;

            border-collapse: collapse;

            width: 100%;

        }



        td, th {

            border: 1px solid #dddddd;

            text-align: left;

            padding: 8px;

        }



        tr:nth-child(even) {

            background-color: #dddddd;

        }

    </style>

</head>

<body>

<form:form method="POST" action="/spring-mvc-xml/addEmployee" modelAttribute="SpringWeb">

    <table>

    <tr>

    <th>ServerName</th>

    <th>Status</th>

    <th>Time</th>

    </tr>

    <tr>

    <td>${servername}</td>

    <td>${status}</td>

    <td>${time}</td>

    </tr>

    </table>

    </body>

    </html>

