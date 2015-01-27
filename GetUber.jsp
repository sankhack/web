<%@page import="javax.json.JsonArrayBuilder"%>
<%@page import="javax.json.JsonObjectBuilder"%>
<%@page import="javax.json.JsonBuilderFactory"%>
<%@page import="javax.json.JsonReader"%>
<%@page import="javax.json.Json"%>
<%@page import="javax.json.JsonArray"%>
<%@page import="javax.json.JsonObject"%>
<%@page import="java.io.StringReader"%>
<%@page import="java.io.InputStreamReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.net.URLConnection"%>
<%@page import="java.net.URL"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String reciev;
    String uber_data="";
    String area_lat=request.getParameter("lat");
    String area_lng=request.getParameter("lng");
    
    String localized_display_name="";
    String estimate="";
    String display_name="";
    String product_id="";
    String Fare="";
    String BaseFare="";
    URL jsonpage = new URL("https://api.uber.com/v1/estimates/time?server_token=RQ28hrjOR39zq2w5sof9xiTHolQ_z9t4n5T2etHP&start_latitude="+area_lat+"&start_longitude="+area_lng);
    URLConnection urlcon = jsonpage.openConnection();
    BufferedReader buffread = new BufferedReader(new InputStreamReader(urlcon.getInputStream()));

    while ((reciev = buffread.readLine()) != null)
    uber_data += reciev;
    buffread.close();
    
    JsonReader uber_reader = (JsonReader) Json.createReader(new StringReader(uber_data));
    JsonObject uber_obj = uber_reader.readObject();         
    uber_reader.close();    
    JsonArray uber_array=uber_obj.getJsonArray("times"); 
    JsonObject uber_cab;
    
    JsonBuilderFactory factory = Json.createBuilderFactory(null);
    JsonObjectBuilder main_object_builder=factory.createObjectBuilder();
    JsonArrayBuilder uber_array__builder=factory.createArrayBuilder();
    JsonObjectBuilder uber_object_builder;
    for(int i=0;i<uber_array.size();i++)
    {
        uber_cab=uber_array.getJsonObject(i);
        localized_display_name=uber_cab.getString("localized_display_name");
        estimate=""+uber_cab.getInt("estimate");
        display_name=uber_cab.getString("display_name");
        product_id=uber_cab.getString("product_id");
        
        uber_object_builder=factory.createObjectBuilder();           
        uber_object_builder.add("ID",product_id);
        uber_object_builder.add("Name","Uber");
        uber_object_builder.add("ETA", estimate);
        //uber_object_builder.add("Lat", latitude);
        //uber_object_builder.add("Lng", longitude);        
        uber_object_builder.add("Type", localized_display_name);
        if(localized_display_name.equals("uberGO"))
        {
            BaseFare="30";
            Fare="11";
            
        }
        else if(localized_display_name.equals("uberX"))
        {
            BaseFare="30";
            Fare="12";            
        }
        else
        {
            BaseFare="80";
            Fare="15";
            
        }
            
        uber_object_builder.add("BaseFare", BaseFare);
        uber_object_builder.add("Fare", Fare);
        uber_array__builder.add(uber_object_builder);
        uber_object_builder=null;
        
        
    }
    main_object_builder.add("Taxi", uber_array__builder);
    JsonObject insta_taxie=main_object_builder.build();
    out.println(insta_taxie);  

    
%>

