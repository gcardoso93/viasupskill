package pt.upskill.vias.services;


import pt.upskill.vias.entities.User;

public interface AuthService {
    User validateLogin(String username, String password);
    boolean isUsernameTaken(String username);
    void registerUser(String username, String password, String email);

}
