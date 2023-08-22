package com.sunbeaminfo.service;

import java.util.List;
import org.springframework.stereotype.Service;
import com.sunbeaminfo.dao.UserRepository;
import com.sunbeaminfo.entities.User;

//UserServiceImpl.java
@Service
public class UserServiceImpl implements UserService {

 private final UserRepository userRepository;

 public UserServiceImpl(UserRepository userRepository) {
     this.userRepository = userRepository;
 }

 @Override
 public User createUser(User user) {
     return userRepository.save(user);
 }

 @Override
 public List<User> getAllUsers() {
     return userRepository.findAll();
 }

 @Override
 public User getUserById(Long id) {
     return userRepository.findById(id).orElse(null);
 }

 @Override
 public boolean deleteUser(Long id) {
     if (userRepository.existsById(id)) {
         userRepository.deleteById(id);
         return true;
     }
     return false;
 }

 @Override
 public boolean updateUser(Long id, User user) {
     if (userRepository.existsById(id)) {
         user.setId(id);
         userRepository.save(user);
         return true;
     }
     return false;
 }

}