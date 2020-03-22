package fr.heraut.api.services.User;

import fr.heraut.api.repositories.UserRepository;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Component;

@Component
public class ApiUserDetailsService implements UserDetailsService {


    // TODO -> exemple transactionnal jpa OPERATION
    //   Employee employee = em.find(Employee.class, 1);
    //
    //  em.getTransaction().begin();
    //  em.remove(employee);
    //  em.getTransaction().commit();

    private UserRepository users;

    public ApiUserDetailsService(UserRepository users) {
        this.users = users;
    }

    @Override
    // USERNAME EST L'EMAIL DE L'utilisateur ici !
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        return this.users.findByEmail(username)
                .orElseThrow(() -> new UsernameNotFoundException("Username: " + username + " not found"));
    }


}