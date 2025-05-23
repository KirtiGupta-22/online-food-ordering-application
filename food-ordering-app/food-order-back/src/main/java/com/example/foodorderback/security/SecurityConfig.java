package com.example.foodorderback.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.HttpMethod;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.config.BeanIds;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.config.http.SessionCreationPolicy;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.NoOpPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter;

import com.example.foodorderback.service.CustomUserDetailService;
import org.springframework.web.servlet.config.annotation.CorsRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;


@Configuration
@EnableWebSecurity
@EnableGlobalMethodSecurity(prePostEnabled = true)
public class SecurityConfig extends WebSecurityConfigurerAdapter{
	
	@Autowired 
	private JwtFilter jwtFilter;
	
	@Autowired
	private CustomUserDetailService customUserDetailService;
	
	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
		auth.userDetailsService(customUserDetailService);
	}
	
	@Bean
	public PasswordEncoder passwordEncoder() {
		return new BCryptPasswordEncoder();
	}
	
	//@Bean(name = BeanIds.AUTHENTICATION_MANAGER)
	@Bean
    @Override
    public AuthenticationManager authenticationManagerBean() throws Exception {
        return super.authenticationManagerBean();
    }
	
	@Override
	
    protected void configure(HttpSecurity http) throws Exception {
		http.cors().and()
		.csrf().disable().
				authorizeRequests()
				.antMatchers("/api/login","/api/menu", "/api/finalOrder/createFinalOrderNotLoggedIn", "/api/user/registration", "/api/finalOrder/createFinalOrder", "/api/meal/getMealsByMealTypeId/{id}", "/api/finalOrder/getOrderItemsByFinalOrderId/{id}","/api/finalOrder/getFinalOrderById/{id}", "/api/mealType/getAllMealTypes", "/api/meal/getAllMeals")
        	    .permitAll()
				.antMatchers(HttpMethod.OPTIONS, "/**")
               .permitAll().anyRequest().authenticated()
                .and().exceptionHandling().and().sessionManagement()
                  .sessionCreationPolicy(SessionCreationPolicy.STATELESS);
       http.addFilterBefore(jwtFilter, UsernamePasswordAuthenticationFilter.class);;

//		http
//				.csrf().disable()
//				.authorizeRequests()
//				.antMatchers("/api/menu").permitAll()  // 👈 make menu public
//				.anyRequest().authenticated()
//				.and()
//				.sessionManagement().sessionCreationPolicy(SessionCreationPolicy.STATELESS);
    }







}
