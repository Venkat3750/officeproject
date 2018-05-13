<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<html>

<head>

    <title>Yahoo!!</title>

    <style>

        body {
            font-family: "Helvetica Neue", Helvetica, Arial;
            font-size: 14px;
            line-height: 20px;
            font-weight: 400;
            color: #3b3b3b;
            -webkit-font-smoothing: antialiased;
            font-smoothing: antialiased;
            background: white;
        }
        @media screen and (max-width: 580px) {
            body {
                font-size: 16px;
                line-height: 22px;
            }
        }

        .wrapper {
            margin: 0 auto;
            padding: 40px;
            max-width: 800px;
        }

        .table {
            margin: 0 0 40px 0;
            width: 100%;
            box-shadow: 0 1px 3px rgba(0, 0, 0, 0.2);
            display: table;
        }
        @media screen and (max-width: 580px) {
            .table {
                display: block;
            }
        }

        .row {
            display: table-row;
            background: #f6f6f6;
        }
        .row:nth-of-type(odd) {
            background: #e9e9e9;
        }
        .row.header {
            font-weight: 900;
            color: #ffffff;
            background: #ea6153;
        }
        .row.green {
            background: #27ae60;
        }
        .row.blue {
            background: #2980b9;
        }
        .row.purple {
            background: #800080;
        }

        @media screen and (max-width: 580px) {
            .row {
                padding: 14px 0 7px;
                display: block;
            }
            .row.header {
                padding: 0;
                height: 6px;
            }
            .row.header .cell {
                display: none;
            }
            .row .cell {
                margin-bottom: 10px;
            }
            .row .cell:before {
                margin-bottom: 3px;
                content: attr(data-title);
                min-width: 98px;
                font-size: 10px;
                line-height: 10px;
                font-weight: bold;
                text-transform: uppercase;
                color: #969696;
                display: block;
            }
        }
        h1{
            color: black;
            font-family: "American Typewriter";
        }
        h5{
            color: black;
            font-family: "Devanagari MT";
        }

        .cell {
            padding: 6px 12px;
            display: table-cell;
        }
        @media screen and (max-width: 580px) {
            .cell {
                padding: 2px 16px;
                display: block;
            }
        }
    </style>

</head>

<body  >
<img src="data:image/png;base64,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"
     alt=“Expedia Group” width="150" height="100" >

<h1 align="middle">BackUp Report</h1>

<h5 class="wrapper" align="middle">MySQL</h5>
<div class="wrapper">

    <table class="table">

        <tr class="row header">
            <th class="cell">
                ServerName
            </th>
            <th class="cell" align="middle">
                Status
            </th>
            <th class="cell">
                Time
            </th>
        </tr>
<c:forEach items="${serverStatus}" var="my">

        <tr class="row">
            <td class="cell" data-title="Name">
              Ansible
            </td>
            <td class="cell" data-title="Age">
                ${my.status}
            </td>
            <td class="cell" data-title="Occupation">
                ${my.time}
            </td>
        </tr>
</c:forEach>



    </table>

    <table class="table">

        <tr class="row header green">
            <th class="cell">
                ServerName
            </th>
            <th class="cell" align="middle">
                Status
            </th>
            <th class="cell">
                Time
            </th>
        </tr>

        <c:forEach items="${serverStatus}" var="my">

            <tr class="row">
                <td class="cell" data-title="Name">
                    Ansible
                </td>
                <td class="cell" data-title="Age">
                        ${my.status}
                </td>
                <td class="cell" data-title="Occupation">
                        ${my.time}
                </td>
            </tr>
        </c:forEach>


    </table>

    <table class="table">

        <tr class="row header blue">
            <th class="cell">
                ServerName
            </th>
            <th class="cell" align="middle">
                Status
            </th>
            <th class="cell">
                Time
            </th>
        </tr>

        <c:forEach items="${serverStatus}" var="my">

            <tr class="row">
                <td class="cell" data-title="Name">
                    Ansible
                </td>
                <td class="cell" data-title="Age">
                        ${my.status}
                </td>
                <td class="cell" data-title="Occupation">
                        ${my.time}
                </td>
            </tr>
        </c:forEach>

    </table>

    <table class="table">

        <tr class="row header purple">
            <th class="cell">
                ServerName
            </th>
            <th class="cell">
                Status
            </th>
            <th class="cell">
                Time
            </th>
        </tr>

        <c:forEach items="${serverStatus}" var="my">

            <tr class="row">
                <td class="cell" data-title="Name">
                    Ansible
                </td>
                <td class="cell" data-title="Age">
                        ${my.status}
                </td>
                <td class="cell" data-title="Occupation">
                        ${my.time}
                </td>
            </tr>
        </c:forEach>

    </table>
</div>>
    </body>

    </html>

