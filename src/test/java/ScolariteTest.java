import sn.dao.IRole;
import sn.dao.IUser;
import sn.dao.RoleImpl;
import sn.dao.UserImpl;
import sn.entities.Role;
import sn.entities.User;

import java.util.ArrayList;
import java.util.List;

public class ScolariteTest {

    public static void main(String[] args){

        IRole roledao  = new RoleImpl();
        /*Role role = new Role();
        role.setName("ROLE_ADMIN");
        int result = roledao.save(role);*/

        /*IRole roledao  = new RoleImpl();
        Role role = new Role();
        role.setName("ROLE_USER");
       int result = roledao.save(role);*/

        IUser userdao  = new UserImpl();
    User user = new User();
    user.setFirsName("khady");
    user.setLastName("diawara");
    user.setEmail("diawara@isi.com");
    user.setPassword("passer");
    List<Role> roles = new ArrayList<Role>();
    roles.add(roledao.get(1));// DB
    user.setRoles(roles);
       
        int resultats = userdao.save(user);
       // IRole roledao  = new RoleImpl();
       // IUser userdao  = new UserImpl();
        //User user = new User();
       /* user.setFirsName("Ablaye");
        user.setLastName("faye");
        user.setEmail("faye@isi.com");
        user.setPassword("faye");*/
        //user.getId (Integer.parseInt ("1"));
       /* List<Role> roles1 = new ArrayList<Role>();
        roles1.add(roledao.get(1));// DB
        user.setRoles(roles1);
        //insert
         int resultats = userdao.save(user);
*/
        System.out.println(resultats);

    }
}
