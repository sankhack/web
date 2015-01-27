<%@page import="java.io.ObjectOutputStream"%>
<%@page import="com.login.UserLogin"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
        <%!UserLogin s= new UserLogin(); %>
        <%!ObjectOutputStream outputstream;  %>
        <%! HttpSession session;%>
        <%
            String uname=request.getParameter("username");
            String pass=request.getParameter("pass");                        
            //out.println("Oho:"+bb);
            if(s.isValidUser(uname, pass))
            {               
             // outputstream=new ObjectOutputStream(response.getOutputStream());
               //outputstream.writeObject("true");
               out.print("true");
              
            }
            else
            {
               // outputstream=new ObjectOutputStream(response.getOutputStream());
              // outputstream.writeObject("false");               
                out.print("false");
            }
            
         %>
