<%@page import="javax.json.JsonArrayBuilder"%>
<%@page import="javax.json.JsonBuilderFactory"%>
<%@page import="javax.json.JsonObjectBuilder"%>
<%@page import="javax.json.Json"%>
<%@page import="javax.json.JsonObject"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%  //Uber  
    String uberX_base_fare="30";
    String uberX_fare="12";
    String uberX_min_Fare="90";    
    String uberGO_base_fare="30";
    String uberGO_fare="11";
    String uberGO_min_Fare="60";    
    String uberBLACK_base_fare="80";
    String uberBLACK_fare="15";
    String uberBLACK_min_Fare="150";
    
    //TaxiForSure
    String hatchback_base_fare="49";
    String hatchback_fare="14";
    String hatchback_min_Fare="49";
    String sedan_base_fare="49";
    String sedan_fare="16";
    String sedan_min_Fare="49";
    
    //Ola
    String Osedan_base_fare="100";
    String Osedan_fare="18";
    String Osedan_min_Fare="100";
    String mini_base_fare="100";
    String mini_fare="12";
    String mini_min_Fare="100";
    String prime_base_fare="200";
    String prime_fare="18";
    String prime_min_Fare="200";
    
    JsonBuilderFactory factory = Json.createBuilderFactory(null);
    JsonObject jsonRate=factory.createObjectBuilder().add("Rate", factory.createArrayBuilder().add(factory.createArrayBuilder().add(factory.createObjectBuilder().add("Company", "Uber").add("carType", "uberX").add("BaseFare", uberX_base_fare).add("Fare", uberX_fare).add("MinFare", uberX_min_Fare)).add(factory.createObjectBuilder().add("Company", "Uber").add("carType", "uberGO").add("BaseFare", uberGO_base_fare).add("Fare", uberGO_fare).add("MinFare", uberGO_min_Fare)).add(factory.createObjectBuilder().add("Company", "Uber").add("carType", "uberBLACK").add("BaseFare", uberBLACK_base_fare).add("Fare", uberBLACK_fare).add("MinFare", uberBLACK_min_Fare)))
                                                                                              .add(factory.createArrayBuilder().add(factory.createObjectBuilder().add("Company", "TaxiForSure").add("carType", "Hatchback").add("BaseFare", hatchback_base_fare).add("Fare", hatchback_fare).add("MinFare", hatchback_min_Fare)).add(factory.createObjectBuilder().add("Company", "TaxiForSure").add("carType", "Sedan").add("BaseFare", sedan_base_fare).add("Fare", sedan_fare).add("MinFare", sedan_min_Fare)))
                                                                                               .add(factory.createArrayBuilder().add(factory.createObjectBuilder().add("Company", "Ola").add("carType", "Sedan").add("BaseFare", Osedan_base_fare).add("Fare", Osedan_fare).add("MinFare", Osedan_min_Fare)).add(factory.createObjectBuilder().add("Company", "Ola").add("carType", "Mini").add("BaseFare", mini_base_fare).add("Fare", mini_fare).add("MinFare", mini_min_Fare)).add(factory.createObjectBuilder().add("Company", "Ola").add("carType", "Prime").add("BaseFare", prime_base_fare).add("Fare", prime_fare).add("MinFare", prime_min_Fare)))).build();
            
            
            //.add("Uber", factory.createObjectBuilder().add("BaseFare", uber_base_fare).add("Fare", uber_fare).add("MIN", uber_min_Fare))
            //                                                                                    .add("TaxiForSure", factory.createObjectBuilder().add("BaseFare", taxisure_base_fare).add("Fare", taxisure_fare).add("MIN", taxisure_min_Fare))
             //                                                                        .add("Ola", factory.createObjectBuilder().add("BaseFare", ola_base_fare).add("Fare", ola_fare).add("MIN", ola_min_Fare))).build();
    
    System.out.println("RateChart Invoked..!");
    out.print(jsonRate);
    
    
    
    
%>
