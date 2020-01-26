<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Admin page</title>
    <%@include file="head.jsp" %>
</head>
<body data-spy="scroll" data-target="#templateux-navbar" data-offset="200">
<%@include file="navigationBar.jsp" %>
<section class="section bg-light pb-0">
<div class="container">
    <table class="table">
        <tr>
            <th>Name</th>
            <th>Surname</th>
            <th>Email</th>
            <th>Phone</th>
            <th>Additional Info</th>
        </tr>

        <!-- loop over and print our customers -->
        <c:forEach var="user" items="${users}">
            <%--        <c:url var="updateLink" value="/customer/showFormForUpdate">--%>
            <%--            <c:param name="customerId" value="${tempCustomer.id}"/>--%>
            <%--        </c:url>--%>
            <%--        <c:url var="deleteLink" value="/customer/deleteCustomer">--%>
            <%--            <c:param name="customerId" value="${tempCustomer.id}"/>--%>
            <%--        </c:url>--%>


            <tr>
                <td> ${user.name} </td>
                <td> ${user.surname} </td>
                <td> ${user.email} </td>
                <td> ${user.phone} </td>
                <td> ${user.additionalInfo} </td>
                    <%--            <td><a href="${updateLink}">Update</a>--%>
                    <%--                |--%>
                    <%--                <a href="${deleteLink}"--%>
                    <%--                   onclick="if (!(confirm('Are you shure you want delete this customer'))) return false">Delete</a>--%>
                    <%--            </td>--%>
            </tr>

        </c:forEach>

    </table>
</div>
</section>
<%@include file="endPage.jsp" %>
<%@include file="scripts.jsp" %>
</body>
</html>
