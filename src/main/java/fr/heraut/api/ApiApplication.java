package fr.heraut.api;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;

@SpringBootApplication
public class ApiApplication {

	// TODO => implement userDetailService : https://www.baeldung.com/spring-security-authentication-with-a-database

	public static void main(String[] args) {
		SpringApplication.run(ApiApplication.class, args);
	}

}
