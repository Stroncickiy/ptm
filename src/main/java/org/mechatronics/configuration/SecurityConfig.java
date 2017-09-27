package org.mechatronics.configuration;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Bean;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;


@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter {

    @Autowired
    @Qualifier("myUserDetailsService")
    UserDetailsService userDetailsService;

    
    
    @Override
    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
    	   auth
           .userDetailsService(userDetailsService).passwordEncoder(passwordEncoder());
    }
    
   

    protected void configure(HttpSecurity http) throws Exception {
        http.exceptionHandling()
                .accessDeniedPage("/denied")
                .and()
                .formLogin()
                .loginPage("/login")
                .usernameParameter("username")
                .passwordParameter("password")
                .defaultSuccessUrl("/").and().authorizeRequests()
                .and().authorizeRequests()
                .antMatchers("/admin/*").hasAuthority("ADMIN")
                .and().authorizeRequests()
                .antMatchers("/**", "/resources/**")
                .permitAll().and().authorizeRequests()
                .anyRequest().authenticated().and().csrf().disable();
    }

    @Override
    protected UserDetailsService userDetailsService() {
        return userDetailsService;
    }

    @Bean
    public PasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }
 
}