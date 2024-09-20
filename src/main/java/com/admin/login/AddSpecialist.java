package com.admin.login;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.SpecialistDao;
import com.db.DBConnect;
import com.entity.User;

@WebServlet("/addSpecialist")
public class AddSpecialist extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	    String specName = req.getParameter("specName");
	    System.out.println("Specialist Name: " + specName);

	    SpecialistDao dao = new SpecialistDao(DBConnect.getConn());
	    boolean f = dao.addSpecialist(specName);
	    System.out.println("Specialist Added: " + f);

	    HttpSession session = req.getSession();

	    if (f) {
	        session.setAttribute("succMsg", "Specialist Added");
	        //System.out.println("Redirecting to admin/index.jsp");
	        resp.sendRedirect("admin/index.jsp");
	    } else {
	        session.setAttribute("errorMessage", "Something went wrong");
	        //System.out.println("Redirecting to admin_login.jsp");
	        resp.sendRedirect("admin/index.jsp");
	    }
	}

}
