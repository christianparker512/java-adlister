package com.codeup.adlister.dao;

import com.codeup.adlister.models.User;

import java.sql.*;

public class MySQLUsersDao implements Users {
    private Connection connection = null;

    public MySQLUsersDao(Config config) {
        try {
            DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());
            connection = DriverManager.getConnection(
                    config.getUrl(),
                    config.getUser(),
                    config.getPassword()
            );
        } catch (SQLException e) {
            throw new RuntimeException("Error connecting to the database!", e);
        }
    }


    @Override
    public User findByUsername(String username) {
        try{
            String sqlQuery = "SELECT * FROM users WHERE username = ? limit 1";
            PreparedStatement stmt = connection.prepareStatement(sqlQuery);
            stmt.setString(1, username);
            ResultSet rs = stmt.executeQuery();
            if(!rs.next()){
                return null;
            }
            return new User(rs.getLong(1), rs.getString(2), rs.getString(3), rs.getString(4));
        } catch(
                SQLException throwables) {
            throw new RuntimeException("could not enter user into database", throwables);
        }
    }

    @Override
    public Long insert(User user) {
        try {
            String sqlQuery = "INSERT INTO users(username, email, password) VALUES (?,?,?)";
            PreparedStatement stmt = connection.prepareStatement(sqlQuery, Statement.RETURN_GENERATED_KEYS);
            stmt.setString(1, user.getUsername());
            stmt.setString(2, user.getEmail());
            stmt.setString(3, user.getPassword());
            stmt.executeUpdate();
            ResultSet rs = stmt.getGeneratedKeys();
            rs.next();
            return rs.getLong(1);
        } catch (
                SQLException throwables) {
            throw new RuntimeException("could not enter user into database", throwables);
        }
    }
}

