package com.sunbeaminfo.service;

import java.util.HashSet;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.sunbeaminfo.entities.User;
import com.sunbeaminfo.DTO.LoginResponceDTO;
import com.sunbeaminfo.entities.UserRoleEntity;
import com.sunbeaminfo.dao.RoleRepository;
import com.sunbeaminfo.dao.UserRepository;

@Service
@Transactional
public class AuthenticationService {

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private RoleRepository roleRepository;

    @Autowired
    private PasswordEncoder passwordEncoder;

    @Autowired
    private AuthenticationManager authenticationManager;

    @Autowired
    private TokenService tokenService;

    public User registerUser(String username, String password){

        String encodedPassword = passwordEncoder.encode(password);
        //UserRoleEntity userRole = roleRepository.findByAuthority("USER").get();
        UserRoleEntity userRole1 = new UserRoleEntity();
        userRole1.setAuthority("USER");
        userRole1.setId(1);
        Set<UserRoleEntity> authorities = new HashSet<>();

        authorities.add(userRole1);

        return userRepository.save(new User(0, username, authorities, encodedPassword));
    }

    public LoginResponceDTO loginUser(String username, String password){

        try{
            Authentication auth = authenticationManager.authenticate(
                new UsernamePasswordAuthenticationToken(username, password)
            );

            String token = tokenService.generateJwt(auth);

            return new LoginResponceDTO(userRepository.findByEmail(username).get(), token);

        } catch(AuthenticationException e){
            return new LoginResponceDTO(null, "");
        }
    }

}
