package servlets;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class ServletIMC extends HttpServlet {
    
    public double calculaIMC(double peso, double altura) {
        
        double IMC = peso / (altura * altura);      
             
            return IMC;
      
    }

    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse res) throws
            ServletException, IOException {
        
        double peso, altura;
        peso = Double.parseDouble(req.getParameter("peso"));
        altura = Double.parseDouble(req.getParameter("altura"));
        double respIMC = calculaIMC(peso, altura);   
        
        req.setAttribute("resultado", String.valueOf(respIMC));
        RequestDispatcher d = req.getRequestDispatcher("resultIMC.jsp");
        d.forward(req, res);
    }
}
