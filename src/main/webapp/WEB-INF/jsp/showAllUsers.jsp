<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Admin page</title>
    <%@include file="head.jsp" %>
</head>
<body data-spy="scroll" data-target="#templateux-navbar" data-offset="200">
<%@include file="navigationBar.jsp" %>
<section class="section image" style="background-image: url(${pageContext.request.contextPath}/images/Grey-Background.jpg)" id="showAllUsers">
    <div class="container">
        <table class="table">
            <tr style="color: aliceblue">
                <th>Name</th>
                <th>Surname</th>
                <th>Email</th>
                <th>Phone</th>
                <th>Additional Info</th>
            </tr>

            <!-- loop over and print our customers -->
            <c:forEach var="user" items="${users}">
<%--                        <c:url var="updateLink" value="/customer/showFormForUpdate">--%>
<%--                            <c:param name="customerId" value="${tempCustomer.id}"/>--%>
<%--                        </c:url>--%>
<%--                        <c:url var="deleteLink" value="/customer/deleteCustomer">--%>
<%--                            <c:param name="customerId" value="${tempCustomer.id}"/>--%>
<%--                        </c:url>--%>


                <tr>
                    <td style="color: aliceblue"> ${user.name} </td>
                    <td style="color: aliceblue"> ${user.surname} </td>
                    <td style="color: aliceblue"> ${user.email} </td>
                    <td style="color: aliceblue"> ${user.phone} </td>
                    <td style="color: aliceblue"> ${user.additionalInfo} </td>
<%--                                    <td><a href="${updateLink}">Update</a>--%>
<%--                                        |--%>
<%--                                        <a href="${deleteLink}"--%>
<%--                                           onclick="if (!(confirm('Are you shure you want delete this customer'))) return false">Delete</a>--%>
<%--                                    </td>--%>
                </tr>

            </c:forEach>

        </table>
    </div>
</section>
<%@include file="endPage.jsp" %>
<%@include file="scripts.jsp" %>
</body>
</html>
