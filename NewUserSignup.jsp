<%@page import="java.io.OutputStreamWriter"%>
<%@page import="java.io.ObjectOutputStream"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.login.NewCustomer" %>
        <%! NewCustomer cust= new NewCustomer(); %>
        <%!ObjectOutputStream outputstream;  %>
        <%! OutputStreamWriter writer; %>
        <%          
            String uname=request.getParameter("username");
            String pass=request.getParameter("pass");
            String refname=request.getParameter("refname");
            String mobile=request.getParameter("mobile_no");
            String gender=request.getParameter("gender");
          response.setCharacterEncoding("UTF-8");
           if(uname!="" && uname!=null &&refname!="" && refname!=null &&mobile!="" && mobile!=null &&gender!="" && gender!=null)
           {
            if(cust.createUser(uname, pass, refname, mobile, gender))
            {             
                 out.print("true");
                 System.out.println("Trueeeee");
                
            }
            else
            {                
                 out.print("false");   
                 System.out.println("Falseeee");
            }
           }
           else
           {             
                 out.print("falsee");
           }       
          
        %>
        
  