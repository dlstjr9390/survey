package com.survey.example.service;

import java.util.Collection;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import com.survey.example.domain.User;
import com.survey.example.mapper.UserMapper;

@Service
public class UserServiceImpl implements UserService {
	@Autowired
	UserMapper userMapper;
	
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException{
		User user = userMapper.readUser(username);
		user.setAuthorites(getAuthorities(username));
		return user;
	}
	
	@Override
	public void createUser(User uesr) {
		userMapper.createUser(uesr);
		
	}

	@Override
	public void createAuthority(User user) {
		userMapper.createAuthority(user);	
	}

	@Override
	public Collection<GrantedAuthority> getAuthorities(String username) {
		// TODO Auto-generated method stub
		List<GrantedAuthority> authorities = userMapper.readAuthorities(username);
		return authorities;
	}

	@Override
	public User readUser(String username) {
		return userMapper.readUser(username);
	}
}
