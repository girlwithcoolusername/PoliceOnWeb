package com.java.servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

import com.java.beans.PersonneNonIdentifiee;
import com.java.dao.DAOFactory;
import com.java.dao.DAOPersonneNonIdentifiee;


public class findPniVisiteur extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public findPniVisiteur() {
        super();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		DAOPersonneNonIdentifiee obj = DAOFactory.getInstance().getDAOPersonneNonIdentifiee();
		String id_pni =request.getParameter("search");	
		List<PersonneNonIdentifiee> listpni= obj.findPersonneNonIdentifiee(id_pni);
		request.setAttribute("listpni", listpni);
		this.getServletContext().getRequestDispatcher("/WEB-INF/jsp/allPni.jsp").forward(request, response);	}

}
