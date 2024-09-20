<%@ page import="com.entity.User" %>
<%@ page import="com.entity.Doctor" %>
<%@ page import="com.dao.DoctorDao" %>
<%@ page import="com.db.DBConnect" %>
<%@ page import="java.util.List" %>
<%@ page import="com.dao.AppointmentDAO" %>
<%@ page import="com.entity.Appointment" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Appointment List</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<c:if test="${empty userObj}">
	<c:redirect url="user_Login.jsp"></c:redirect>
	</c:if>
    <%@ include file="component/navbar.jsp" %>
    <div class="container p-3">
        <div class="row">
            <div class="col-md-12">
                <div class="card paint-card">
                    <div class="card-body">
                        <p class="fs-4 fw-bold text-center text-success">Appointment List</p>
                        <table class="table">
                            <thead>
                                <tr>
                                    <th scope="col">Full Name</th>
                                    <th scope="col">Gender</th>
                                    <th scope="col">Age</th>
                                    <th scope="col">Appointment Date</th>
                                    <th scope="col">Diseases</th>
                                    <th scope="col">Doctor Name</th>
                                    <th scope="col">Status</th>
                                </tr>
                            </thead>
                            <tbody>
                                <%
                                    User user = (User) session.getAttribute("userObj");
                                    if (user != null) {
                                        AppointmentDAO dao = new AppointmentDAO(DBConnect.getConn());
                                        DoctorDao doctorDao = new DoctorDao(DBConnect.getConn());

                                        List<Appointment> list = dao.getAllAppointmentByLoginUser(user.getId());
                                        if (list != null && !list.isEmpty()) {
                                            for (Appointment ap : list) {
                                                Doctor d = doctorDao.getDoctorById(ap.getDoctorId());
                                %>
                                    <tr>
                                        <td><%= ap.getFullName() %></td>
                                        <td><%= ap.getGender() %></td>
                                        <td><%= ap.getAge() %></td>
                                        <td><%= ap.getAppointmentDate() %></td>
                                        <td><%= ap.getDiseases() %></td>
                                        <td><%= d.getFullName() %></td>
                                        <td>
                                            <% if ("pending".equals(ap.getStatus())) { %>
                                                <span class="badge bg-warning">Pending</span>
                                            <% } else { %>
                                                <span class="badge bg-success"><%= ap.getStatus() %></span>
                                            <% } %>
                                        </td>
                                    </tr>
                                <%
                                            }
                                        } else {
                                %>
                                    <tr>
                                        <td colspan="7" class="text-center">No appointments found.</td>
                                    </tr>
                                <%
                                        }
                                    } else {
                                %>
                                    <tr>
                                        <td colspan="7" class="text-center">User not logged in.</td>
                                    </tr>
                                <%
                                    }
                                %>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
