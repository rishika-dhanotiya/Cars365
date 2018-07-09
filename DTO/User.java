package DTO;

/**
 *
 * @author RISHIKA DHANOTIYA
 */
public class User {
    private char uname;
    private int user_id;
    private char password;
    private char email;
    private boolean verified;
    private int contact;

    public User() {
    }

    public User(char uname, int user_id, char password, char email, boolean verified, int contact) {
        this.uname = uname;
        this.user_id = user_id;
        this.password = password;
        this.email = email;
        this.verified = verified;
        this.contact = contact;
    }

    public void setUname(char uname) {
        this.uname = uname;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public void setPassword(char password) {
        this.password = password;
    }

    public void setEmail(char email) {
        this.email = email;
    }

    public void setVerified(boolean verified) {
        this.verified = verified;
    }

    public void setContact(int contact) {
        this.contact = contact;
    }

    public char getUname() {
        return uname;
    }

    public int getUser_id() {
        return user_id;
    }

    public char getPassword() {
        return password;
    }

    public char getEmail() {
        return email;
    }

    public boolean isVerified() {
        return verified;
    }

    public int getContact() {
        return contact;
    }
    
    
}
