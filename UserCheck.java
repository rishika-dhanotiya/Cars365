package DAO;
import java.sql.*;
import DTO.User;
import Connection.Connect;
import Connection.SendMailSSL;
import DTO.*;
//----------------------------------add user details-----------------------------------------------
public class UserCheck{
  
    public static boolean CheckUser(User user){
        Connection con=null;
        boolean status=false;
        try{
            con= Connect.getConnect();
            String uname=user.getUname();
            String password=user.getPassword();
            String email=user.getEmail();
            String contact=user.getContact();
                  
            String sql="insert into user_db(uname,password,email,contact,verified)values(?,?,?,?,?)";
            PreparedStatement pst=con.prepareStatement(sql);
            pst.setString(1, uname);
            pst.setString(2, password);
            pst.setString(3, email);
            pst.setString(4, contact);
            pst.setBoolean(5,false);
           if(pst.executeUpdate()!=0)
            {
                status=true;
                SendMailSSL.sendEmail(email);
                
            }
           }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        finally{
            try{
                con.close();
            }
            catch(Exception e)
            {
                e.printStackTrace();
            }
        }
        return status; 
    }


//-------------------------------verify email ---------------------------------------------------
    public static Boolean verify(String email){
        Connection con=null;
        Boolean status=false;
        try{    
          con=Connect.getConnect();
          PreparedStatement pst=con.prepareStatement("update user_db set verified=? where email=?");
          pst.setBoolean(1, true);
          pst.setString(2, email);
          int count=pst.executeUpdate();
          if(count>0){
              System.out.println("Updated Successfullyyyy...!!");
              status=true;
          }
          else{
              System.out.println("Error Occured..!!");
          }

        }
        catch(Exception e)
        {
        e.printStackTrace();    
        }
        finally{
            try{
                con.close();
            }
            catch(Exception e)
            {
                e.printStackTrace();
            }
        }
        return status;
    }

//------------------------------- login check-------------------------------------------
    public static boolean LoginCheck(User u){
        Connection con=null;
        boolean status=false;
        try{
            con=Connect.getConnect();
            PreparedStatement pst=con.prepareStatement("select * from user_db where uname=? and password=? and verified=?");
            pst.setString(1, u.getUname());
            pst.setString(2, u.getPassword());
            pst.setBoolean(3, true);
            ResultSet rs= pst.executeQuery();
            while(rs.next()){
                status=true;
            }
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        finally{
            try{
                con.close();
            }
            catch(Exception e)
            {
                e.printStackTrace();
            }
        }
        return status;
    }
    //---------------------------------  profile settings------------------------------------
     public static boolean SetProfile(User u){
         Connection con=null;
         boolean status=false;
       
         try{
             con= Connect.getConnect();
             PreparedStatement pst=con.prepareStatement("update user_db set password=? where uname=?");
             pst.setString(1, u.getPassword());
             pst.setString(2, u.getUname());
             int count=pst.executeUpdate();
             if(count >0){
                 status=true;
             }
             else{
                 System.out.println("Some Error Occured..!!!");
             }
         }
         catch(Exception e){
             e.printStackTrace();
         }
        finally{
            try{
                con.close();
            }
            catch(Exception e)
            {
                e.printStackTrace();
            }
        }
        return status;
    }
     //----------------------------------post car------------------------------------
     public static boolean PostCar(Postcar pc,int user_id){
             boolean status=false;
             Connection con=null;
            
            try{
            con=Connect.getConnect();
          String sql="insert into postcar_db(user_id,price,modelyear,owners,kmsdriven,color,fuel_type,city,description,insurance,car_brand,car_model,car_variant,times)values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
           PreparedStatement pst=con.prepareStatement(sql);
           
            pst.setInt(1,user_id);
            pst.setInt(2, pc.getPrice());
            pst.setInt(3, pc.getModelyear());
            pst.setInt(4, pc.getOwners());
            pst.setInt(5, pc.getKmsdriven());
            pst.setString(6, pc.getColor());
            pst.setString(7, pc.getFuel_type());
            pst.setString(8, pc.getCity());
            pst.setString(9, pc.getDescription());
            pst.setBoolean(10,true);
            pst.setInt(11, pc.getCar_brand());
            pst.setInt(12, pc.getCar_model());
            pst.setInt(13, pc.getCar_variant());
            pst.setTimestamp(14, new Timestamp(System.currentTimeMillis()));
           int count= pst.executeUpdate();
            if(count>0)
            {
                status=true;
            }
            else{
                System.out.println("error..!!!!");
            }
           }
         catch(Exception e){
             e.printStackTrace();
         }
        finally{
            try{
                con.close();
            }
            catch(Exception e)
            {
                e.printStackTrace();
            }
        }
        return status; 
     }
     
//---------------------------------Upload Image--------------------------------
public static boolean UploadImage(Image i,int car_id){
    boolean status=false;
    Connection con=null;
    try{
       con=Connect.getConnect();
       PreparedStatement pst=con.prepareStatement("insert into image_db(car_id,source) values(?,?) ");
       pst.setInt(1, car_id);
       pst.setString(2, i.getSource());
      if(pst.executeUpdate()!=0)
       {
           status=true;
       }
       else{
           System.out.println("error");
       }
    }
    catch(Exception e){
        e.printStackTrace();
    }
        finally{
            try{
                con.close();
            }
            catch(Exception e)
            {
                e.printStackTrace();
            }
        }
   return status;
}
//------------------------------Get UserID----------------------------
public static int GetUserID(String uname){
    int user_id=0;
    Connection con=null;
 try{
   con=Connect.getConnect();
   PreparedStatement pst=con.prepareStatement("select *from user_db where uname=?");
   pst.setString(1, uname);
   ResultSet rs=pst.executeQuery();
   if(rs.next()){
       user_id=rs.getInt("user_id");
       
   }
   else{
       System.out.println("error...!!");
   } 
 }
 catch(Exception e)
 {
     e.printStackTrace();
 }
 finally{
            try{
                con.close();
            }
            catch(Exception e)
            {
                e.printStackTrace();
            }
        }
 return user_id;
}
//--------------------------------------GetCarID------------------------
public static int GetCarID(String user_id){
    
    int car_id=0;
    int user_id1=Integer.parseInt(user_id);
    Connection con=null;
 try{
   con=Connect.getConnect();
   PreparedStatement pst;
        pst = con.prepareStatement("select car_id from postcar_db where times in (select max(times) from postcar_db where user_id=?");
   pst.setInt(1, user_id1);
   ResultSet rs=pst.executeQuery();
   if(rs.next()){
       car_id=rs.getInt("car_id");
   }
 }
 catch(Exception e)
 {
     e.printStackTrace();
 }
 return car_id;
}
}




