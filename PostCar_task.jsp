<%@page import="java.io.File"%>
<%@page import="DAO.UserCheck"%>
<%@page import="DTO.Image"%>

<jsp:useBean id="postcar" class="DTO.Postcar"></jsp:useBean>
<jsp:setProperty name="postcar" property="*"></jsp:setProperty>
<%--<jsp:useBean id="i" class="DTO.Image"></jsp:useBean>
<jsp:setProperty name="i" property="*"></jsp:setProperty>---%>

<% 
   String source="";
   int user_id=(int)session.getAttribute("user_id");
   int car_id=UserCheck.GetCarID(session.getAttribute("user_id").toString());
   Image i=new Image(car_id,source); 
   String source1=getServletContext().getRealPath("/")+"G:/Netbeans Project/AutoCar/web/image_file"+source;          
   if(UserCheck.PostCar(postcar,user_id)){
        if(UserCheck.UploadImage(i, car_id)){
       out.print("Car Posted Successfullyyyy....!!!");
  %>
  <script>alert("Car Posted Successfullyyy....!!!");</script>
 <% response.sendRedirect("homepage.jsp");
   }}
  else {%>
   <script>alert('error....!!!');</script>
<%}
%>