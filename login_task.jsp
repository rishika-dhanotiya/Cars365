<%@page  import="DAO.UserCheck"%>
<jsp:useBean id="user" class="DTO.User" scope="request"></jsp:useBean>
<jsp:setProperty name="user" property="*"></jsp:setProperty>
<%
   if(UserCheck.LoginCheck(user))
   {
     session.setAttribute("uname",request.getParameter("uname"));
     
     int user_id=UserCheck.GetUserID(session.getAttribute("uname").toString());
     session.setAttribute("user_id", user_id);
     
     
     response.sendRedirect("homepage.jsp");
     
   }
   else{
   %>
   <script>
       alert('Invalid UserID and Password..!!');
   </script>
  <%
  response.sendRedirect("error.jsp");
  }%>
