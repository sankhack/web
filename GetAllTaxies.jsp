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

   
<%-- <%
        System.out.println("ala re gadya..!");
        JsonBuilderFactory factory = Json.createBuilderFactory(null);
        JsonObjectBuilder main_object_builder=factory.createObjectBuilder();

        JsonObjectBuilder ola_object_builder;
        JsonArrayBuilder ola_array__builder=factory.createArrayBuilder();
        JsonArrayBuilder uber_array__builder=factory.createArrayBuilder();
        JsonObjectBuilder uber_object_builder2;
    for(int i=1;i<=10;i++)
    {
        ola_object_builder=factory.createObjectBuilder();
        String no=""+i+(i+1)+(i+2);
        String name=RandomStringUtils.randomAlphabetic(5);
        String latitude=RandomStringUtils.randomNumeric(7);
        String longitude=RandomStringUtils.randomNumeric(7);
        ola_object_builder.add("Taxi","MH 12 "+no);
        ola_object_builder.add("Name",name);
        ola_object_builder.add("Lat", latitude);
        ola_object_builder.add("Lang", longitude);
        ola_array__builder.add(ola_object_builder);
        ola_object_builder=null;

    }


    for(int i=1;i<=10;i++)
    {
        uber_object_builder2=factory.createObjectBuilder();
        String no=""+i+(i+1)+(i+2);
        String name=RandomStringUtils.randomAlphabetic(5);
        String latitude=RandomStringUtils.randomNumeric(7);
        String longitude=RandomStringUtils.randomNumeric(7);
        uber_object_builder2.add("Taxi","MH 12 "+no);
        uber_object_builder2.add("Name",name);
        uber_object_builder2.add("Lat", latitude);
        uber_object_builder2.add("Lang", longitude);
        uber_array__builder.add(uber_object_builder2);
        uber_object_builder2=null;

    }
        //main_object_builder.add("OLA", ola_array__builder).add("Uber", uber_array__builder);
    main_object_builder.add("OLA", ola_array__builder);
        JsonObject insta_taxie=main_object_builder.build();
        //out.println("1st: "+insta_taxie.toString());
        String res=insta_taxie.toString();
       // outputstream=new ObjectOutputStream(response.getOutputStream());
        //outputstream.writeObject(insta_taxie);

    %> --%>
    <%-- <%=res%> --%>
    <%
        JsonObject jsonTaxi;
        String area_lat=request.getParameter("lat");
        String area_lng=request.getParameter("lng");
        String swarget_lat="18.50",swarget_lng="73.86";
         JsonBuilderFactory factory = Json.createBuilderFactory(null);         
        
        System.out.println("ala re gadya..!\nLati:"+area_lat+"\nLang:"+area_lng);
        if(area_lat.contains(swarget_lat) || area_lng.contains(swarget_lng) )
        {                                                                                                                                                                                          
                 
        jsonTaxi=factory.createObjectBuilder().add("Taxi", factory.createArrayBuilder().add(factory.createObjectBuilder().add("ID", "OLA001").add("Name", "OLA").add("ETA", "20").add("Lat", "18.5004256").add("Lng", "73.8665348").add("BaseFare", "100").add("Fare", "17").add("Type", "Swarget"))
                                                                                                   .add(factory.createObjectBuilder().add("ID", "TFS001").add("Name", "TAXIFORSURE").add("ETA", "25").add("Lat", "18.5008783").add("Lng", "73.8658911").add("BaseFare", "120").add("Fare", "18").add("Type", "Hashback"))
                                                                                                   .add(factory.createObjectBuilder().add("ID", "OLA002").add("Name", "OLA").add("ETA", "20").add("Lat", "18.5010004").add("Lng", "73.866524117").add("BaseFare", "80").add("Fare", "15").add("Type", "Mini"))
                                                                                                   .add(factory.createObjectBuilder().add("ID", "TFS002").add("Name", "TAXIFORSURE").add("ETA", "10").add("Lat", "18.5007664").add("Lng", "73.8693029").add("BaseFare", "100").add("Fare", "17").add("Type", "Sedan"))
                                                                                                    .add(factory.createObjectBuilder().add("ID", "OLA003").add("Name", "OLA").add("ETA", "30").add("Lat", "18.5007884").add("Lng", "73.8693549").add("BaseFare", "80").add("Fare", "17").add("Type", "Mini"))
                                                                                                    .add(factory.createObjectBuilder().add("ID", "OLA001").add("Name", "TAXIFORSURE").add("ETA", "18").add("Lat", "18.5001865").add("Lng", "73.8687879").add("BaseFare", "80").add("Fare", "17").add("Type", "Mini"))
                                                                                                    .add(factory.createObjectBuilder().add("ID", "OLA001").add("Name", "UBER").add("ETA", "14").add("Lat", "18.5001885").add("Lng", "73.8683909").add("BaseFare", "120").add("Fare", "18").add("Type", "Hashback"))
                                                                                                    .add(factory.createObjectBuilder().add("ID", "OLA001").add("Name", "UBER").add("ETA", "5").add("Lat", "18.5009801").add("Lng", "73.8683919").add("BaseFare", "80").add("Fare", "15").add("Type", "Mini"))
                                                                                                    .add(factory.createObjectBuilder().add("ID", "OLA001").add("Name", "UBER").add("ETA", "4").add("Lat", "18.5007867").add("Lng", "73.8683802").add("BaseFare", "100").add("Fare", "17").add("Type", "Sedan"))
                                                                                                    .add(factory.createObjectBuilder().add("ID", "OLA001").add("Name", "MERU").add("ETA", "15").add("Lat", "18.5007969").add("Lng", "73.8677901").add("BaseFare", "80").add("Fare", "15").add("Type", "Mini"))
                                                                                                    .add(factory.createObjectBuilder().add("ID", "OLA001").add("Name", "MERU").add("ETA", "11").add("Lat", "18.5007999").add("Lng", "73.8677964").add("BaseFare", "100").add("Fare", "17").add("Type", "Sedan"))
                                                                                                    )
                                                                                                    .build();
        
            
        }
        else
        {       
        
        
        //JsonBuilderFactory factory = Json.createBuilderFactory(null);       
        jsonTaxi=factory.createObjectBuilder().add("Taxi", factory.createArrayBuilder().add(factory.createObjectBuilder().add("ID", "OLA001").add("Name", "OLA").add("ETA", "20").add("Lat", "18.499455").add("Lng", "73.859181").add("BaseFare", "100").add("Fare", "17").add("Type", "Sedan"))
                                                                                                   .add(factory.createObjectBuilder().add("ID", "TFS001").add("Name", "TAXIFORSURE").add("ETA", "25").add("Lat", "18.4965737").add("Lng", "73.8599667").add("BaseFare", "120").add("Fare", "18").add("Type", "Hashback"))
                                                                                                   .add(factory.createObjectBuilder().add("ID", "OLA002").add("Name", "OLA").add("ETA", "20").add("Lat", "18.4897769").add("Lng", "73.8595375").add("BaseFare", "80").add("Fare", "15").add("Type", "Mini"))
                                                                                                   .add(factory.createObjectBuilder().add("ID", "TFS002").add("Name", "TAXIFORSURE").add("ETA", "10").add("Lat", "18.4887584").add("Lng", "73.8582574").add("BaseFare", "100").add("Fare", "17").add("Type", "Sedan"))
                                                                                                    .add(factory.createObjectBuilder().add("ID", "OLA003").add("Name", "OLA").add("ETA", "30").add("Lat", "18.4887584").add("Lng", "73.8582574").add("BaseFare", "80").add("Fare", "17").add("Type", "Mini"))
                                                                                                    .add(factory.createObjectBuilder().add("ID", "OLA001").add("Name", "TAXIFORSURE").add("ETA", "18").add("Lat", "18.4887584").add("Lng", "73.8582574").add("BaseFare", "80").add("Fare", "17").add("Type", "Mini"))
                                                                                                    .add(factory.createObjectBuilder().add("ID", "OLA001").add("Name", "UBER").add("ETA", "14").add("Lat", "18.4908774").add("Lng", "73.8568302").add("BaseFare", "120").add("Fare", "18").add("Type", "Hashback"))
                                                                                                    .add(factory.createObjectBuilder().add("ID", "OLA001").add("Name", "UBER").add("ETA", "5").add("Lat", "18.4898198").add("Lng", "73.8573488").add("BaseFare", "80").add("Fare", "15").add("Type", "Mini"))
                                                                                                    .add(factory.createObjectBuilder().add("ID", "OLA001").add("Name", "UBER").add("ETA", "4").add("Lat", "18.4915305").add("Lng", "73.8581993").add("BaseFare", "100").add("Fare", "17").add("Type", "Sedan"))
                                                                                                    .add(factory.createObjectBuilder().add("ID", "OLA001").add("Name", "MERU").add("ETA", "15").add("Lat", "18.4915325").add("Lng", "73.8582574").add("BaseFare", "80").add("Fare", "15").add("Type", "Mini"))
                                                                                                    .add(factory.createObjectBuilder().add("ID", "OLA001").add("Name", "MERU").add("ETA", "11").add("Lat", "18.4887586").add("Lng", "73.8582574").add("BaseFare", "100").add("Fare", "17").add("Type", "Sedan"))
                                                                                                    )
                                                                                                    .build();
        
        
        
      }  
    %>
    
    <%=jsonTaxi%>