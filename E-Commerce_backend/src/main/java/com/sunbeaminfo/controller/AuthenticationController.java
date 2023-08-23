// package com.sunbeaminfo.controller;

// import org.springframework.beans.factory.annotation.Autowired;
// import org.springframework.web.bind.annotation.CrossOrigin;
// import org.springframework.web.bind.annotation.PostMapping;
// import org.springframework.web.bind.annotation.RequestBody;
// import org.springframework.web.bind.annotation.RequestMapping;
// import org.springframework.web.bind.annotation.RestController;

// import com.sunbeaminfo.DTO.LoginResponceDTO;
// import com.sunbeaminfo.DTO.RegistrationDTO;
// import com.sunbeaminfo.entities.User;
// import com.sunbeaminfo.service.AuthenticationService;

// @RestController
// @RequestMapping("/auth")
// @CrossOrigin("*")
// public class AuthenticationController {
    
//     @Autowired
//     private AuthenticationService authenticationService;

//     @PostMapping("/register")
//     public User registerUser(@RequestBody RegistrationDTO body){

//     return authenticationService.registerUser(body.getEmail(),body.getPassword());
//     }

//     @PostMapping("/login")
//     public LoginResponceDTO loginUser(@RequestBody RegistrationDTO body){
//         return authenticationService.loginUser(body.getEmail(), body.getPassword());
//     }

// }
package com.sunbeaminfo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.sunbeaminfo.DTO.LoginResponceDTO;
import com.sunbeaminfo.DTO.RegistrationDTO;
import com.sunbeaminfo.entities.User;
import com.sunbeaminfo.service.AuthenticationService;

@RestController
@RequestMapping("/auth")
@CrossOrigin("*")
public class AuthenticationController {

    @Autowired
    private AuthenticationService authenticationService;

    @PostMapping("/register")
    public User registerUser(@RequestBody RegistrationDTO body){
        return authenticationService.registerUser(body.getEmail(), body.getPassword());
    }
    
    @PostMapping("/login")
    public LoginResponceDTO loginUser(@RequestBody RegistrationDTO body){
        return authenticationService.loginUser(body.getEmail(), body.getPassword());
    }
}   