package DTO;

public class User {
  
    private int user_id;
      private String uname;
    private String password;
   private String email;
     private String contact;
    private boolean verified;
    

    public User() {
    }

    public String getUname() {
        return uname;
    }

    public void setUname(String uname) {
        this.uname = uname;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public boolean isVerified() {
        return verified;
    }

    public void setVerified(boolean verified) {
        this.verified = verified;
    }

    public String getContact() {
        return contact;
    }

    public void setContact(String contact) {
        this.contact = contact;
    }

    public User(String uname, int user_id, String password, String email, boolean verified, String contact) {
        this.uname = uname;
        this.user_id = user_id;
        this.password = password;
        this.email = email;
        this.verified = verified;
        this.contact = contact;
    }

}