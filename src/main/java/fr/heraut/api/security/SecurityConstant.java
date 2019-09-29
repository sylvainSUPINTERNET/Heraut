package fr.heraut.api.security;


import org.springframework.beans.factory.annotation.Value;


public class SecurityConstant {

    public static final String AUTH_LOGIN_URL = "/api/auth";

    // Signing key for HS512 algorithm
    // You can use the page http://www.allkeysgenerator.com/ to generate all kinds of keys

    @Value("{jwt.secret}")
    public static String JWT_SECRET;

    // JWT token defaults
    public static final String TOKEN_HEADER = "Authorization";
    public static final String TOKEN_PREFIX = "Bearer ";
    public static final String TOKEN_TYPE = "JWT";
    public static final String TOKEN_ISSUER = "secure-api";
    public static final String TOKEN_AUDIENCE = "secure-app";

}
