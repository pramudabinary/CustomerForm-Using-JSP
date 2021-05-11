<%@ page import="java.sql.ResultSet" %><%--
  Created by IntelliJ IDEA.
  User: pramuda
  Date: 5/7/21
  Time: 2:18 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Customer Form</title>
    <link rel="stylesheet" href="asserts/bootstrap-5.0.0-beta3-dist/css/bootstrap.min.css">
</head>
<body>
<section class="row">
    <div><h1 class="m-3">Customer Form</h1></div>

    <div class="col-4 m-3">
        <form action="customer" method="post">
            <div>
                <label class="form-label" for="id">Customer ID</label>
                <input class="form-control" id="id" name="id" type="text">
            </div>

            <div>
                <label class="form-label" for="name">Customer Name</label>
                <input class="form-control" id="name" name="name" type="text">
            </div>

            <div>
                <label class="form-label" for="address">Address</label>
                <input class="form-control" id="address" name="address" type="text">
            </div>

            <div>
                <label class="form-label" for="contact">Contact</label>
                <input class="form-control" id="contact" name="contact" type="text">
            </div>

            <div>
                <label class="form-label" for="salary">Salary</label>
                <input class="form-control" id="salary" name="salary" type="text">
            </div>

            <div class="m-1">
                <button class="btn btn-dark m-2" type="submit">Save Customer</button>
            </div>
        </form>
    </div>

    <div class="col-7 m-3">
        <table class="table table-bordered table-hover">
            <thead>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Address</th>
                <th>Contact</th>
                <th>Salary</th>
            </tr>
            </thead>
            <tbody>
            <%
                ResultSet rst = (ResultSet) request.getServletContext().getAttribute("rst");
                if (rst != null) {
                    while (rst.next()) {
                        String id = rst.getString(1);
                        String name = rst.getString(2);
                        String address = rst.getString(3);
                        String contact = rst.getString(4);
                        String salary = rst.getString(5);
            %>
            <tr>

                <td><%=id%>
                </td>
                <td><%=name%>
                </td>
                <td><%=address%>
                </td>
                <td><%=contact%>
                </td>
                <td><%=salary%>
                </td>

            </tr>
            <%
                    }
                }
            %>
            </tbody>
        </table>
    </div>
</section>

<script src=" asserts/bootstrap-5.0.0-beta3-dist/js/bootstrap.min.js"></script>
</body>
</html>
