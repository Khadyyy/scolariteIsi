package sn.entities;


import javax.persistence.*;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table (name = "user")
public class User implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    @Column(name = "firstname", nullable = false, length = 200)
    private String firsName;
    @Column (name = "lastname", nullable = false, length = 150)
    private String lastName;
    @Column (name = "email", nullable = false, length = 200, unique = true)
    private String email;
    @Column (name = "password", nullable = false, length = 200)
    private String password;
    @ManyToMany(fetch = FetchType.EAGER)
    List<Role> roles = new ArrayList<Role>(); 

    public User() {
        super();
    }

    public int getId() { return id; }

    public void setId(int id) {
        this.id = id;
    }

    public String getFirsName() {
        return firsName;
    }

    public void setFirsName(String firsName) {
        this.firsName = firsName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public List<Role> getRoles() {
        return roles;
    }

    public void setRoles(List<Role> roles) {
        this.roles = roles;
    }
}
