<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%-- 
    Document   : newjsp
    Created on : Sep 1, 2014, 3:05:33 AM
    Author     : Ahmed Raaj
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="../css/affablebean.css">
        <link rel="shortcut icon" href="../img/favicon.ico">

        <script src="../js/jquery-1.4.2.js" type="text/javascript"></script>

        <script type="text/javascript">
            $(document).ready(function() {
                $('tr.tableRow').hover(
                        function() {
                            $(this).addClass('selectedRow');
                        },
                        function() {
                            $(this).removeClass('selectedRow');
                        }
                );
            });
        </script>

        <title> Swapno  :: Admin Console</title>
    </head>

    <body>
        <div id="main">
            <div id="header">
                <div id="widgetBar"></div>



                <img src="../img/logoText.PNG" id="logoText" alt="the affable bean">
            </div>

            <h2>admin console</h2>
            <div id="adminMenu" class="alignLeft">
                <p><a href="<c:url value='viewCustomers'/>">view all customers</a></p>

                <p><a href="<c:url value='viewOrders'/>">view all orders</a></p>

                <p><a href="<c:url value='viewProducts'/>">view all Products</a></p>

                <p><a href="<c:url value='logout'/>">log out</a></p>
            </div>

            <sql:query var="result" dataSource="jdbc/swapno">
                SELECT * FROM product
            </sql:query>

            <table border="1">
                <!-- column headers -->
                <tr>
                    <c:forEach var="columnName" items="${result.columnNames}">
                        <th><c:out value="${columnName}"/></th>
                        </c:forEach>
                </tr>
                <!-- column data -->
                <c:forEach var="row" items="${result.rowsByIndex}">
                    <tr>
                        <c:forEach var="column" items="${row}">
                            <td><c:out value="${column}"/></td>
                        </c:forEach>
                    </tr>
                </c:forEach>
            </table>
                
                <form action="addProducts" method="post">
                   Name: <input type="text" name="name" value="" size="10" />
                   price: <input type="text" name="price" value="" size="10" />
                   <input type="submit" name="submit" value="submit" />
                </form>

            <div id="footer"></div>
        </div>
    </body>
</html>