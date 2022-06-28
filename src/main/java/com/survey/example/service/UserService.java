package com.survey.example.service;

import java.util.Collection;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetailsService;
import com.survey.example.domain.User;

public interface UserService extends UserDetailsService{
	public User readUser(String username);
	public void createUser(User uesr);
	public void createAuthority(User user);
	Collection<GrantedAuthority> getAuthorities(String username);
}
