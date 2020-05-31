package fr.heraut.api.config;

import fr.heraut.api.JWT.JwtConfigurer;
import fr.heraut.api.JWT.JwtTokenProvider;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.HttpMethod;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.config.http.SessionCreationPolicy;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

@Configuration
public class SecurityConfig extends WebSecurityConfigurerAdapter {


    @Autowired
    JwtTokenProvider jwtTokenProvider;

    @Bean
    @Override
    public AuthenticationManager authenticationManagerBean() throws Exception {
        return super.authenticationManagerBean();
    }

    @Override
    protected void configure(HttpSecurity http) throws Exception {
        //@formatter:off

        http
                .httpBasic().disable()
                .csrf().disable()
                .sessionManagement().sessionCreationPolicy(SessionCreationPolicy.STATELESS)
                .and()
                .authorizeRequests()

                // has role !== has authority but both work in this case
                .antMatchers("/v1/auth/login").permitAll()
                .antMatchers("/v1/auth/register").permitAll()


                // EXEMPLE SERVICES
                .antMatchers(HttpMethod.GET, "/vehicles/**").hasRole("ADMIN")
                .antMatchers(HttpMethod.DELETE, "/vehicles/**").hasRole("ADMIN")
                .antMatchers(HttpMethod.GET, "/v1/vehicles/**").permitAll()

                // USER SERVICES
                .antMatchers(HttpMethod.GET, "/v1/me").hasAnyRole("ADMIN", "USER")
                .antMatchers(HttpMethod.PUT, "/v1/granted/**").hasRole("ADMIN")
                .antMatchers(HttpMethod.GET, "/v1/users").hasAnyRole("ADMIN", "USER")
                .antMatchers(HttpMethod.GET, "/v1/users/**").hasAnyRole("ADMIN", "USER")

                // ANNOUNCES SERVICES
                .antMatchers(HttpMethod.POST, "/v1/announces/**").hasAnyRole("ADMIN", "USER")
                .antMatchers(HttpMethod.GET, "/v1/announces/**").hasAnyRole("ADMIN", "USER")
                .antMatchers(HttpMethod.PUT, "/v1/announces/**").hasAnyRole("ADMIN", "USER")

                // Services
                .antMatchers(HttpMethod.GET, "/v1/services/**").hasAnyRole("ADMIN", "USER")

                // AnimalsType
                .antMatchers(HttpMethod.GET, "/v1/animalsType/**").hasAnyRole("ADMIN", "USER")


                //EQUIPMENTS
                .antMatchers(HttpMethod.GET, "/v1/equipments/**").hasAnyRole("ADMIN", "USER")

                //SWAGGER DOCUMENTATION - DEV only url -> localhost:4200/api/v2/api-docs
                //.antMatchers(HttpMethod.GET, "/v2/api-docs**").permitAll()
                //.antMatchers(HttpMethod.POST, "/v2/api-docs**").permitAll()
                //.antMatchers(HttpMethod.PUT, "/v2/api-docs**").permitAll()
                //.antMatchers(HttpMethod.DELETE, "/v2/api-docs**").permitAll()

                // USER
                .antMatchers(HttpMethod.GET, "/v1/users/**").hasAnyRole("ADMIN", "USER")

                // BILLS
                .antMatchers(HttpMethod.GET, "/v1/bills/**").hasAnyRole("ADMIN", "USER")
                .antMatchers(HttpMethod.POST, "/v1/bills/**").hasAnyRole("ADMIN", "USER")

                // PAYMENT
                .antMatchers(HttpMethod.GET, "/v1/payment/**").hasAnyRole("ADMIN", "USER")
                .antMatchers(HttpMethod.POST, "/v1/payment/**").hasAnyRole("ADMIN", "USER")



                // BOOKINGS
                .antMatchers(HttpMethod.POST, "/v1/bookings/**").hasAnyRole("ADMIN", "USER")
                .antMatchers(HttpMethod.GET, "/v1/bookings/**").hasAnyRole("ADMIN", "USER")
                .antMatchers(HttpMethod.PUT, "/v1/bookings/**").hasAnyRole("ADMIN", "USER")

                // MEDIA
                .antMatchers(HttpMethod.GET, "/v1/media/**").hasAnyRole("ADMIN", "USER")


                // PUBLIC API
                .antMatchers(HttpMethod.GET, "/v1/public/**").permitAll()


                // STORE API - AFFILIATION AMAZON
                .antMatchers(HttpMethod.GET, "/v1/store/**").permitAll()
                .antMatchers(HttpMethod.POST, "/v1/store/**").permitAll()



                .anyRequest().authenticated()


                .and()

                .apply(new JwtConfigurer(jwtTokenProvider));
        //@formatter:on
    }

    @Bean
    public PasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }

}