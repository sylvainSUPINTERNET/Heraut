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