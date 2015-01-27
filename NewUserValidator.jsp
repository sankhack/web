<%@page import="com.login.EmailValidator"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
        <%
            String email=request.getParameter("email");
            
        %>
        <%! EmailValidator eval=new EmailValidator(); %>
        <%
            if(email!=null && email!="")
            {
            if(eval.isValid(email))
            {
                out.println("valid");
            }
            else
            {
                out.println("invalid");
            }
            }
         %>
  