<%@ page import="com.axmedbek.modal.Person" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: m.ehmed
  Date: 7/24/2018
  Time: 12:51 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <jsp:include page="layouts/header.jsp"></jsp:include>
    <style>
        table thead tr td {
            font-weight: bold;
        }
    </style>
</head>
<body>
<%
    List<Person> personList = (List<Person>) request.getAttribute("personList");
%>
<div class="container">
    <div class="row" style="margin-top: 10%;">
        <div class="text-right" style="margin-bottom: 5px;">
            <button class="btn btn-success btn-sm addNewUser" style="padding: 10px;"><i class="fa fa-plus"></i></button>
        </div>
        <table class="table table-hover" style="border: 2px solid #007bff;">
            <thead>
            <tr>
                <td>No</td>
                <td>Name</td>
                <td>Surname</td>
            </tr>
            </thead>
            <tbody>
            <% for (Person p : personList) { %>
            <tr>
                <td><%=p.getId()%>
                </td>
                <td><%=p.getName()%>
                </td>
                <td><%=p.getSurname()%>
                </td>
            </tr>
            <% } %>
            </tbody>
        </table>

        <div id="myModal" class="modal" tabindex="-1" role="dialog">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">Add Person</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">

                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-primary">Save</button>
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>

    </div>
</div>
<jsp:include page="layouts/footer.jsp"></jsp:include>
<script>
    $('.addNewUser').click(function(){
        $('#myModal').modal('show');
    });
</script>
</body>
</html>
