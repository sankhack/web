<%@page import="java.io.InputStreamReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.net.URLConnection"%>
<%@page import="java.net.URL"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
   String recv;
   String recvbuff="";
   URL jsonpage = new URL("http://iospush.taxiforsure.com/getNearestDriversForApp/?longitude=73.91934070&latitude=18.5862229&density=320&appVersion=4.1.1");
   URLConnection urlcon = jsonpage.openConnection();
   BufferedReader buffread = new BufferedReader(new InputStreamReader(urlcon.getInputStream()));
   while ((recv = buffread.readLine()) != null)
    recvbuff += recv;
   buffread.close();
   
   out.println(recvbuff);
%>

