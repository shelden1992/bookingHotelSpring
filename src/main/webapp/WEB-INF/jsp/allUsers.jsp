<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="users" value="${page.getContent()}"/>
<c:set var="page" value="${page}"/>
<c:set var="totalPages" value="${page.getTotalPages()}"/>
<html>
<head>
    <title>Admin page</title>
    <%@include file="head.jsp" %>
</head>
<body data-spy="scroll" data-target="#templateux-navbar" data-offset="200">
<%@include file="navigationBar.jsp" %>
<section class="section image"
         style="background-image: url(${pageContext.request.contextPath}/images/Grey-Background.jpg)" id="showAllUsers">
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


        <%--For displaying Page numbers.
        The when condition does not display a link for the current page--%>
        <c:if test="${totalPages > 1}">
            <div class="page-navigator">
                <a href="${pageContext.request.contextPath}/admin/all-users?page=1" class="nav-item">1</a>
                <a href="${pageContext.request.contextPath}/admin/all-users?page=2" class="nav-item">2</a>
                <a href="${pageContext.request.contextPath}/admin/all-users?page=3" class="nav-item">3</a>
                <a href="${pageContext.request.contextPath}/admin/all-users?page=4" class="nav-item">4</a>
                <c:forEach items="${page.totalPages()}" var="pageInt">
<%--                    <c:if test="${pageInt != -1 }">--%>
<%--                        <a href="all-users?page=${pageInt}" class="nav-item">${pageInt}</a>--%>
<%--                    </c:if>--%>
<%--                    <c:if test="${pageInt == -1 }">--%>
<%--                        <span class="nav-item"> ... </span>--%>
<%--                    </c:if>--%>
                </c:forEach>
            </div>
        </c:if>
    </div>
</section>
<%@include file="endPage.jsp" %>
<%@include file="scripts.jsp" %>
</body>
</html>
