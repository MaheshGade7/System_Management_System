package com.user.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.AppointmentDAO;
import com.db.DBConnect;
import com.entity.Appointment;
@WebServlet("/addAppointment")
public class AppointmentServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		int userId = Integer.parseInt(req.getParameter("user_id"));
		String fullname = req.getParameter("fullname");
		String gender = req.getParameter("gender");
		String age = req.getParameter("age");
		String appoint_date = req.getParameter("appointment_date");
		String email = req.getParameter("email");
		String phno = req.getParameter("phone_number");
		String diseases = req.getParameter("diseases");
		int doctor_id = Integer.parseInt(req.getParameter("doctor_id"));
		String address = req.getParameter("address");
		
		//Appointment ap=new Appointment(user_id, fullname, gender, age, appoint_date, email, phno, diseases, address,"pending");
		Appointment ap=new Appointment(userId, fullname, gender, age, appoint_date, email, phno, diseases, doctor_id, address, "pending");
		
		AppointmentDAO dao=new AppointmentDAO(DBConnect.getConn());
		HttpSession session=req.getSession();
		if(dao.addAppointment(ap))
		{
			session.setAttribute("succMsg","Appointment Successfully...");
			resp.sendRedirect("user_appointment.jsp");
		}
		else
		{
			session.setAttribute("errorMsg","Something wrong on server");
			resp.sendRedirect("user_appointment.jsp");
		}
	}

}
