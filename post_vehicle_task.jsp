<%@page import="DTO.Postcar"%>
<%@page import="DTO.Image"%>
<%@page import="DAO.UserCheck"%>
<%@page import="java.io.File"%>
<%@page import="java.util.Iterator"%>
<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<%@page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%-----<%@page import="DAO.UserCheck"%>
<jsp:useBean id="user" class="DTO.Postcar"></jsp:useBean>
    
<jsp:setProperty name="user" property="*"></jsp:setProperty>
<%-----<jsp:useBean id="image" class="DTO.Image"></jsp:useBean>
    
<jsp:setProperty name="image" property="*"></jsp:setProperty>---%>

<%--<%
    if(UserCheck.PostCar(user))
    {
%>
       <script>alert("Car posted");</script> --%>
<%--
      if(UserCheck.UploadImage(image)){
            %>
            <script>alert("image saved");</script>
            
      <%  }
        else{%>
                <script>alert("image error");</script>
                <% response.sendRedirect("error.jsp");
           }--%>
 <%---  <% }
else{
%>
  <script>alert("car error");</script>
  <%response.sendRedirect("error.jsp");
}

%>---------%>






<%

Object uname=session.getAttribute("uname");
if(uname==null)
{
    %>
    <script>
        alert("please login first");
        window.location.href="homepage.jsp";
        
    </script>
    <%
}
else
{
  int car_id=0;
  int car_brand=0;
  int car_model=0;
  int car_variant=0;
  int price=0;
  int user_id=0;
  int modelyear=0;
  int owners=0;
  int kmsdriven=0;
  String fuel_type="";
  String color="";
  String city="";
  String description="";
  Boolean insurance=false;
    String source = "";
        
      try
    {
         DiskFileItemFactory factory = new DiskFileItemFactory();
         ServletFileUpload upload = new ServletFileUpload(factory);
    
       List<FileItem>list = upload.parseRequest(request);
       Iterator<FileItem>itr = list.iterator();
        while(itr.hasNext())
            {
                FileItem f1=itr.next();
                String fieldname=f1.getFieldName();
                    
                if(f1.isFormField())
                {
                    if(fieldname.equals("user_id"))
                    user_id=Integer.parseInt(f1.getString());
                   if(fieldname.equals("car_brand"))
                      car_brand=Integer.parseInt(f1.getString());
                    if(fieldname.equals("car_model"))
                         car_model=Integer.parseInt(f1.getString());
                    if(fieldname.equals("car_variant"))
                         car_variant=Integer.parseInt(f1.getString());
                         if(fieldname.equals("price"))
                      price=Integer.parseInt(f1.getString());
                    if(fieldname.equals("modelyear"))
                         modelyear=Integer.parseInt(f1.getString());
                    if(fieldname.equals("owners"))
                         owners=Integer.parseInt(f1.getString());
                     if(fieldname.equals("kmsdriven"))
                         kmsdriven=Integer.parseInt(f1.getString());
                       if(fieldname.equals("fuel_type"))
                         fuel_type=f1.getString();

                       if(fieldname.equals("color"))
                         color=f1.getString();
                         
                         if(fieldname.equals("city"))
                         city=f1.getString();
                       if(fieldname.equals("description"))
                         description=f1.getString();
                       if(fieldname.equals("insurance"))
                         insurance=Boolean.parseBoolean(f1.getString());
                       
                }
                else
                {
                    if(fieldname.equals("source"))
                    {
                        
                        source=f1.getName();
                        String imagefilepath=getServletContext().getRealPath("/")+"image_file/"+source;
                        System.out.println(source);
                        System.out.println(imagefilepath);

                        File fp=new File(imagefilepath);
                       f1.write(fp);
                    }
                }
                 
            }
                
System.out.println(user_id);
System.out.println(insurance);
System.out.println(car_brand);
System.out.println(car_model);
System.out.println(car_variant);
System.out.println(description);
System.out.println(color);
System.out.println(city);
System.out.println(source);

        

  Postcar pc=new Postcar(user_id, car_model, car_variant, car_brand, price, modelyear, owners, kmsdriven, color, description, city, fuel_type, insurance);
//.....................................insert form field in ads_master..........................
       int user_id1=(int)session.getAttribute("user_id");
        if(UserCheck.PostCar(pc,user_id1))
        {
          %>
          <script>
                alert("post car");
                window.location.href="post-vehicle.jsp";
                </script><%
              int car_id1=UserCheck.GetCarID(session.getAttribute("user_id").toString());
    

        
   
    System.out.println(source);

    Image i=new Image(car_id,source);



         //....................insert file.................................
  
        //    session.getAttribute("uname").toString();
    
            System.out.println(source);
            if(UserCheck.UploadImage(i,car_id1 ))
        {
            %>
            <script>
                alert("image saved");
                window.location.href="post-vehicle.jsp";
                </script>
            <%
        }
        else
        {
            response.sendRedirect("error.jsp");
        }
            }

    }

     
    catch(Exception e)
    {
        e.printStackTrace();
    }

        
        
        }

  %>