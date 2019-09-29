package fr.heraut.api.filter;


import fr.heraut.api.security.SecurityConstant;
import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.SignatureAlgorithm;
import io.jsonwebtoken.io.Decoders;
import io.jsonwebtoken.security.Keys;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter;

import javax.crypto.SecretKey;
import javax.servlet.FilterChain;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.security.Key;
import java.util.Date;
import java.util.stream.Collectors;

public class JwtAuthenticationFilter extends UsernamePasswordAuthenticationFilter {

    private AuthenticationManager authenticationManager;

    public JwtAuthenticationFilter(AuthenticationManager authenticationManager) {
        this.authenticationManager = authenticationManager;

        setFilterProcessesUrl(SecurityConstant.AUTH_LOGIN_URL);
    }

    @Override
    public Authentication attemptAuthentication(HttpServletRequest request, HttpServletResponse response) {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        return authenticationManager.authenticate(new UsernamePasswordAuthenticationToken(username, password));
    }

    @Override
    protected void successfulAuthentication(HttpServletRequest request, HttpServletResponse response,
                                            FilterChain filterChain, Authentication authentication) {
        UserDetails user = ((User) authentication.getPrincipal());


        byte[] keyBytes = Decoders.BASE64.decode(SecurityConstant.JWT_SECRET);
        Key k = Keys.hmacShaKeyFor(keyBytes);

        String token = Jwts.builder()
                .signWith(k)
                .setHeaderParam("typ", SecurityConstant.TOKEN_TYPE)
                .setIssuer(SecurityConstant.TOKEN_ISSUER)
                .setAudience(SecurityConstant.TOKEN_AUDIENCE)
                .setSubject(user.getUsername())
                .setExpiration(new Date(System.currentTimeMillis() + 864000000))
                .claim("roles", user.getAuthorities()
                        .stream()
                        .map(GrantedAuthority::getAuthority)
                        .collect(Collectors.toList()))
                .compact();

        response.addHeader(SecurityConstant.TOKEN_HEADER, SecurityConstant.TOKEN_PREFIX + token);
        System.out.println(response);
        System.out.println(token);
    }
}
