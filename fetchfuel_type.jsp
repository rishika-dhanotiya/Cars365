<%@page import="Connection.Connect" %>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% 
    Connection con = null;
    try{
        con = Connect.getConnect();
        
        PreparedStatement pst = con.prepareStatement("select *  from fueltype_db ");
        ResultSet rs = pst.executeQuery();
        String data="";
        data=data+"Select fuel type";
        out.print(data);
        while(rs.next())
        {
%>
    data=data+"<option value="<%=rs.getString("fuel_id")%>"><%=rs.getString("fuel_name")%></option>";
<%
        }
    }catch(Exception e)
    {
        e.printStackTrace();
    }
    finally{
    try {
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
%>
