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
                <td>Operation</td>
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
                <td>
                    <form id="deletePersonForm" action="/deletePerson" method="post">
                        <input type="hidden" name="id" value="<%=p.getId()%>">
                    </form>
                    <a href="javascript:void(0)" class="btn btn-info btn-sm editPerson"><i class="fa fa-pencil-alt"></i></a>
                    <a href="javascript:void(0)" class="btn btn-danger btn-sm deletePerson"><i class="fa fa-trash"></i></a>
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
                        <form id="savePersonForm" action="/addPerson" method="post">
                            <div class="form-group">
                                <label>Name</label>
                                <input type="text" class="form-control" placeholder="Enter name" name="name">
                            </div>
                            <div class="form-group">
                                <label>Surname</label>
                                <input type="text" class="form-control" placeholder="Enter surname" name="surname">
                            </div>
                        </form>
                    </div>
                    <div class="modal-footer">
                        <button type="submit" class="btn btn-success savePerson"><i class="fa fa-user-plus"></i>
                        </button>
                        <button type="button" class="btn btn-secondary btn-sm" data-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>

    </div>
</div>
<jsp:include page="layouts/footer.jsp"></jsp:include>
<script>
    $('.addNewUser').click(function () {
        $('#myModal').modal('show');
    });

    $('.savePerson').click(function () {
        $('#savePersonForm').submit();
    });

    $('.deletePerson').click(function () {
        $.confirm({
            title: 'Təsdiq',
            content: 'Silmək istədiyinizə əminsizin?',
            type: 'red',
            typeAnimated: true,
            buttons : {
                positiveButton: {
                    text : "Sil",
                    btnClass : 'btn-green',
                    action:function(){
                        $('#deletePersonForm').submit();
                    },
                },
                negativeButton : {
                    text : "İmtina",
                    btnClass : 'btn-red',
                    action:function(){

                    },
                }
            }
        });

    });
</script>
</body>
</html>
