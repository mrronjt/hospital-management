package com.hos.Controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hos.Entity.Patient;
import com.hos.Service.PatientService;

/**
 * Servlet implementation class PatientServlet
 */
@WebServlet("/PatientServlet")
public class PatientServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PatientServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String firstName = request.getParameter("firstName");
		String lastName = request.getParameter("lastName");
		String birthDate = request.getParameter("");
		String phoneNo = request.getParameter("phoneNo");
		String unit = request.getParameter("unit");
		String doctor = request.getParameter("doctor");
		String cured = request.getParameter("cured");
		String type = request.getParameter("patientType");
		PrintWriter out = response.getWriter();
		
		Patient patient = new Patient(firstName, lastName, birthDate, phoneNo, unit, doctor, cured, type); 
		try {
			PatientService patientService = new PatientService();
			boolean result = patientService.addPatient(patient);
			out.println("<html>");
         out.println("<head>");      
         out.println("<title>Adding new Patient Successful</title>");    
         out.println("</head>");
         out.println("<body>");
         out.println("<center>");
         if(result) {
             out.println("Go Back to Patient list page: <a href=member.jsp>Click here</a>");
         }
         else {
        	 out.println("<h1>Registration Failed</h1>");
             out.println("To try again<a href=AddPatient.jsp>Click here</a>");
         }

         out.println("</center>");
         out.println("</body>");
         out.println("</html>");
	         
		}finally {
			out.close();
		}
	}

}
