<%@page import="java.io.StringReader"%>
<%@page import="javax.json.JsonReader"%>
<%@page import="java.io.InputStreamReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.net.URLConnection"%>
<%@page import="java.net.URL"%>
<%@page import="java.io.ObjectOutputStream"%>
<%@page import="org.apache.commons.lang3.RandomStringUtils"%>
<%@page import="javax.json.JsonArrayBuilder"%>
<%@page import="javax.json.JsonObjectBuilder"%>
<%@page import="javax.json.JsonArray"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@page import="javax.json.JsonBuilderFactory"%>

<%@page import="javax.json.JsonObject"%>
<%@page import="javax.json.Json"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
    <%
        String recv,recv1;
        String taxi_for_sure="",uber="";
        String area_lat=request.getParameter("lat");
        String area_lng=request.getParameter("lng");
       
       URL taxi_for_sure_URL = new URL("http://iospush.taxiforsure.com/getNearestDriversForApp/?longitude="+area_lng+"0&latitude="+area_lat+"&density=320&appVersion=4.1.1");
       URLConnection urlcon = taxi_for_sure_URL.openConnection();
       BufferedReader buffread = new BufferedReader(new InputStreamReader(urlcon.getInputStream()));

       while ((recv = buffread.readLine()) != null)
        taxi_for_sure += recv;
       buffread.close();
         JsonReader reader = (JsonReader) Json.createReader(new StringReader(taxi_for_sure));
         JsonObject obj = reader.readObject();         
         reader.close();
         JsonObject responce_data=obj.getJsonObject("response_data");
         JsonArray array=responce_data.getJsonArray("data");        
         
//        URL uber_URL = new URL("https://api.uber.com/v1/estimates/time?server_token=RQ28hrjOR39zq2w5sof9xiTHolQ_z9t4n5T2etHP&start_latitude="+area_lat+"&start_longitude="+area_lng);
//       URLConnection urlcon1 = uber_URL.openConnection();
//       BufferedReader buffread1 = new BufferedReader(new InputStreamReader(urlcon1.getInputStream()));
//
//       while ((recv1 = buffread1.readLine()) != null)
//        uber += recv1;
//       buffread1.close();
//        
//       JsonReader uber_reader = (JsonReader) Json.createReader(new StringReader(taxi_for_sure));
//         JsonObject uber_obj = uber_reader.readObject();         
//         uber_reader.close();
//        // JsonObject uber_responce=obj.getJsonObject("response_data");
//         JsonArray uber_array=responce_data.getJsonArray("times");      
         
         
        JsonObject jsonTaxi;
        JsonBuilderFactory factory = Json.createBuilderFactory(null);
        JsonObjectBuilder main_object_builder=factory.createObjectBuilder();
        JsonObjectBuilder taxisure_object_builder;
        JsonArrayBuilder taxisure_array__builder=factory.createArrayBuilder();
        JsonArrayBuilder uber_array__builder=factory.createArrayBuilder();
        JsonObjectBuilder uber_object_builder;
        String distance="";
        String uuid="";
        String Distance="";
        String carType="";
        String longitude="";
        String duration="";
        String Time="";
        String latitude="";
        String city="";
        String BaseFare="49";
        String Fare="16";
        
        String localized_display_name="";
        String estimate="";
        String display_name="";
        String product_id="";
        
        for(int i=0;i<array.size();i++)
        {
//            JsonObject uber_cab;
//            if(i<uber_array.size())
//            {
//                uber_cab=uber_array.getJsonObject(i);
//                localized_display_name=uber_cab.getString("localized_display_name");
//                estimate=""+uber_cab.getInt("estimate");
//                display_name=uber_cab.getString("display_name");
//                product_id=uber_cab.getString("product_id");
//                
//                
//                
//            }
            JsonObject cab=array.getJsonObject(i);
            distance=cab.getString("distance");
            uuid=cab.getString("uuid");
            Distance=cab.getString("Distance");
            carType=cab.getString("carType");
            longitude=cab.getString("longitude");
            duration=""+cab.getInt("duration");
            Time=""+cab.getInt("Time");
            latitude=cab.getString("latitude");
            city=cab.getString("city");        
            
       
        taxisure_object_builder=factory.createObjectBuilder();           
        taxisure_object_builder.add("ID",uuid);
        taxisure_object_builder.add("Name","TaxiForSure");
        taxisure_object_builder.add("ETA", duration);
        taxisure_object_builder.add("Lat", latitude);
        taxisure_object_builder.add("Lng", longitude);
        taxisure_object_builder.add("BaseFare", BaseFare);
        taxisure_object_builder.add("Type", carType);
        if(carType.equals("Hatchback"))
        {
            Fare="14";
            
        }       
        
        taxisure_object_builder.add("Fare", Fare);
        taxisure_array__builder.add(taxisure_object_builder);
        taxisure_object_builder=null;

    }
        
        
        main_object_builder.add("Taxi", taxisure_array__builder);
        JsonObject insta_taxie=main_object_builder.build();
        out.println(insta_taxie);  
        
        System.out.println("ala re gadya..!\nLati:"+area_lat+"\nLang:"+area_lng);
        
      
    %>
    
