package com.example.lab5;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class DBManager {
    private static Connection connection;

    static {
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3307/lab5?useUnicode=true&serverTimezone=UTC",
                    "root",
                    "");
        }catch (Exception e){
            e.printStackTrace();
        }
    }

    public static boolean addUser(Users user){
        int rows = 0;

        try{
            PreparedStatement statement = connection.prepareStatement("" +
                    "INSERT INTO users (id, email, password, fullName, dateOfBirth, type ) " +
                    "VALUES (NULL, ?, ?, ?, ?, ? )" +
                    "");

            statement.setString(1, user.getEmail());
            statement.setString(2, user.getPassword());
            statement.setString(3, user.getFullName());
            statement.setString(4, user.getDateOfBirth());
            statement.setString(5, user.getType());

            rows = statement.executeUpdate();
            statement.close();

        }catch (Exception e){
            e.printStackTrace();
        }
        return rows>0;
    }


    public static boolean addStudent(Students student){
        int rows = 0;

        try{
            PreparedStatement statement = connection.prepareStatement("" +
                    "INSERT INTO students (id, email, password, fullName, dateOfBirth, points, attempts ) " +
                    "VALUES (NULL, ?, ?, ?, ?, ?, ? )" +
                    "");

            statement.setString(1, student.getEmail());
            statement.setString(2, student.getPassword());
            statement.setString(3, student.getFullName());
            statement.setString(4, student.getDateOfBirth());
            statement.setInt(5, student.getPoints());
            statement.setInt(6, student.getAttempts());

            rows = statement.executeUpdate();
            statement.close();

        }catch (Exception e){
            e.printStackTrace();
        }
        return rows>0;
    }




    public static ArrayList<Users> getUsers(){
        ArrayList<Users> users = new ArrayList<>();

        try{
            PreparedStatement statement = connection.prepareStatement("SELECT * FROM users");
            ResultSet resultSet = statement.executeQuery();

            while (resultSet.next()){
                users.add(new Users(
                        resultSet.getLong("id"),
                        resultSet.getString("email"),
                        resultSet.getString("password"),
                        resultSet.getString("fullName"),
                        resultSet.getString("dateOfBirth"),
                        resultSet.getString("type")
                ));

            }

            statement.close();
        }catch (Exception e){
            e.printStackTrace();
        }
        return users;
    }

    public static Users getUser(String email){
        Users user = null;

        try{
            PreparedStatement statement = connection.prepareStatement("SELECT * FROM users WHERE email = ?");
            statement.setString(1, email);

            ResultSet resultSet = statement.executeQuery();

            if (resultSet.next()){
                user = new Users(
                        resultSet.getLong("id"),
                        resultSet.getString("email"),
                        resultSet.getString("password"),
                        resultSet.getString("fullName"),
                        resultSet.getString("dateOfBirth"),
                        resultSet.getString("type")
                );

            }

            statement.close();
        }catch (Exception e){
            e.printStackTrace();
        }
        return user;
    }



    public static Users getUser2(Long id){
        Users user = null;

        try{
            PreparedStatement statement = connection.prepareStatement("SELECT * FROM users WHERE id = ?");
            statement.setLong(1, id);

            ResultSet resultSet = statement.executeQuery();

            if (resultSet.next()){
                user = new Users(
                        resultSet.getLong("id"),
                        resultSet.getString("email"),
                        resultSet.getString("password"),
                        resultSet.getString("fullName"),
                        resultSet.getString("dateOfBirth"),
                        resultSet.getString("type")
                );

            }

            statement.close();
        }catch (Exception e){
            e.printStackTrace();
        }
        return user;
    }


    public static boolean updateUsers(Users user){
        int rows = 0;

        try{
            PreparedStatement statement = connection.prepareStatement("" +
                    "UPDATE users SET email = ?, password = ?, fullName = ?, dateOfBirth = ? " +
                    "WHERE id = ? ");

            statement.setString(1, user.getEmail());
            statement.setString(2, user.getPassword());
            statement.setString(3, user.getFullName());
            statement.setString(4, user.getDateOfBirth());
            statement.setLong(5, user.getId());

            rows = statement.executeUpdate();
            statement.close();
        }catch (Exception e){
            e.printStackTrace();
        }
        return rows>0;

    }

    public static boolean deleteUser(String email){
        int rows = 0;

        try{
            PreparedStatement statement = connection.prepareStatement("" +
                    "DELETE FROM users WHERE email = ?");

            statement.setString(1, email);

            rows = statement.executeUpdate();
            statement.close();
        }catch (Exception e){
            e.printStackTrace();
        }
        return rows>0;
    }



    ///////////////////////////////////////////////

    public static ArrayList<Professors> getProfessors(){
        ArrayList<Professors> professors = new ArrayList<>();

        try{
            PreparedStatement statement = connection.prepareStatement("SELECT * FROM professors");
            ResultSet resultSet = statement.executeQuery();

            while (resultSet.next()){
                professors.add(new Professors(
                        resultSet.getLong("id"),
                        resultSet.getString("fullName"),
                        resultSet.getInt("years"),
                        resultSet.getString("education"),
                        resultSet.getString("experience"),
                        resultSet.getInt("salary")
                ));

            }

            statement.close();
        }catch (Exception e){
            e.printStackTrace();
        }
        return professors;
    }

    public static ArrayList<Students> getStudents(){
        ArrayList<Students> students = new ArrayList<>();

        try{
            PreparedStatement statement = connection.prepareStatement("SELECT * FROM students");
            ResultSet resultSet = statement.executeQuery();

            while (resultSet.next()){
                students.add(new Students(
                        resultSet.getLong("id"),
                        resultSet.getString("email"),
                        resultSet.getString("password"),
                        resultSet.getString("fullName"),
                        resultSet.getString("dateOfBirth"),
                        resultSet.getInt("points"),
                        resultSet.getInt("attempts"),
                        resultSet.getString("phonenumber")
                ));

            }

            statement.close();
        }catch (Exception e){
            e.printStackTrace();
        }
        return students;
    }


    public static ArrayList<Admins> getAdmins(){
        ArrayList<Admins> admins = new ArrayList<>();

        try{
            PreparedStatement statement = connection.prepareStatement("SELECT * FROM admins");
            ResultSet resultSet = statement.executeQuery();

            while (resultSet.next()){
                admins.add(new Admins(
                        resultSet.getLong("id"),
                        resultSet.getString("fullName"),
                        resultSet.getInt("years"),
                        resultSet.getString("position"),
                        resultSet.getString("experience"),
                        resultSet.getInt("salary")
                ));

            }

            statement.close();
        }catch (Exception e){
            e.printStackTrace();
        }
        return admins;
    }


    public static Test getTest(Long id){
        Test test = null;

        try{
            PreparedStatement statement = connection.prepareStatement("SELECT * FROM tests WHERE id = ?");
            statement.setLong(1, id);

            ResultSet resultSet = statement.executeQuery();

            if (resultSet.next()){
                test = new Test(
                        resultSet.getLong("id"),
                        resultSet.getString("answer1"),
                        resultSet.getString("answer2"),
                        resultSet.getString("answer3"),
                        resultSet.getString("answer4"),
                        resultSet.getString("answer5"),
                        resultSet.getString("answer6"),
                        resultSet.getString("answer7"),
                        resultSet.getString("answer8")
                );

            }

            statement.close();
        }catch (Exception e){
            e.printStackTrace();
        }
        return test;
    }


    public static Students getStudent(Long id){
        Students student = null;

        try{
            PreparedStatement statement = connection.prepareStatement("SELECT * FROM students WHERE id = ?");
            statement.setLong(1, id);

            ResultSet resultSet = statement.executeQuery();

            if (resultSet.next()){
                student = new Students(
                        resultSet.getLong("id"),
                        resultSet.getString("email"),
                        resultSet.getString("password"),
                        resultSet.getString("fullName"),
                        resultSet.getString("dateOfBirth"),
                        resultSet.getInt("points"),
                        resultSet.getInt("attempts"),
                        resultSet.getString("phonenumber")
                );

            }

            statement.close();
        }catch (Exception e){
            e.printStackTrace();
        }
        return student;
    }


    public static boolean updateStudents(Students student){
        int rows = 0;

        try{
            PreparedStatement statement = connection.prepareStatement("" +
                    "UPDATE students SET email = ?, password = ?, fullName = ?, dateOfBirth = ?, points = ?, attempts = ?, phoneNumber = ? " +
                    "WHERE id = ? ");

            statement.setString(1, student.getEmail());
            statement.setString(2, student.getPassword());
            statement.setString(3, student.getFullName());
            statement.setString(4, student.getDateOfBirth());
            statement.setInt(5, student.getPoints());
            statement.setInt(6, student.getAttempts());
            statement.setString(7, student.getPhoneNumber());
            statement.setLong(8, student.getId());

            rows = statement.executeUpdate();
            statement.close();
        }catch (Exception e){
            e.printStackTrace();
        }
        return rows>0;

    }


    public static ArrayList<Test> getTests(){
        ArrayList<Test> tests = new ArrayList<>();

        try{
            PreparedStatement statement = connection.prepareStatement("SELECT * FROM tests");
            ResultSet resultSet = statement.executeQuery();

            while (resultSet.next()){
                tests.add(new Test(
                        resultSet.getLong("id"),
                        resultSet.getString("answer1"),
                        resultSet.getString("answer2"),
                        resultSet.getString("answer3"),
                        resultSet.getString("answer4"),
                        resultSet.getString("answer5"),
                        resultSet.getString("answer6"),
                        resultSet.getString("answer7"),
                        resultSet.getString("answer8")
                ));

            }

            statement.close();
        }catch (Exception e){
            e.printStackTrace();
        }
        return tests;
    }


    public static boolean addStudentAnswers(StudentAnswers studentAnswer){
        int rows = 0;

        try{
            PreparedStatement statement = connection.prepareStatement("" +
                    "INSERT INTO studentanswers (id, email, answer1, answer2, answer3, answer4, answer5, answer6, answer7, answer8 ) " +
                    "VALUES (NULL, ?, ?, ?, ?, ?, ?, ?, ?, ? )" +
                    "");

            statement.setString(1, studentAnswer.getEmail());
            statement.setString(2, studentAnswer.getAnswer1());
            statement.setString(3, studentAnswer.getAnswer2());
            statement.setString(4, studentAnswer.getAnswer3());
            statement.setString(5, studentAnswer.getAnswer4());
            statement.setString(6, studentAnswer.getAnswer5());
            statement.setString(7, studentAnswer.getAnswer6());
            statement.setString(8, studentAnswer.getAnswer7());
            statement.setString(9, studentAnswer.getAnswer8());

            rows = statement.executeUpdate();
            statement.close();

        }catch (Exception e){
            e.printStackTrace();
        }
        return rows>0;
    }


    public static StudentAnswers getStudentAnswers(String email){
        StudentAnswers studentAnswers = null;

        try{
            PreparedStatement statement = connection.prepareStatement("SELECT * FROM studentanswers WHERE email = ?");
            statement.setString(1, email);

            ResultSet resultSet = statement.executeQuery();

            if (resultSet.next()){
                studentAnswers = new StudentAnswers(
                        resultSet.getLong("id"),
                        resultSet.getString("email"),
                        resultSet.getString("answer1"),
                        resultSet.getString("answer2"),
                        resultSet.getString("answer3"),
                        resultSet.getString("answer4"),
                        resultSet.getString("answer5"),
                        resultSet.getString("answer6"),
                        resultSet.getString("answer7"),
                        resultSet.getString("answer8")
                );

            }

            statement.close();
        }catch (Exception e){
            e.printStackTrace();
        }
        return studentAnswers;
    }


    public static ArrayList<StudentAnswers> getStudentAnswers(){
        ArrayList<StudentAnswers> studentAnswers = new ArrayList<>();

        try{
            PreparedStatement statement = connection.prepareStatement("SELECT * FROM studentanswers");
            ResultSet resultSet = statement.executeQuery();

            while (resultSet.next()){
                studentAnswers.add(new StudentAnswers(
                        resultSet.getLong("id"),
                        resultSet.getString("email"),
                        resultSet.getString("answer1"),
                        resultSet.getString("answer2"),
                        resultSet.getString("answer3"),
                        resultSet.getString("answer4"),
                        resultSet.getString("answer5"),
                        resultSet.getString("answer6"),
                        resultSet.getString("answer7"),
                        resultSet.getString("answer8")
                ));

            }

            statement.close();
        }catch (Exception e){
            e.printStackTrace();
        }
        return studentAnswers;
    }


    public static Students getStudent2(String email){
        Students student = null;

        try{
            PreparedStatement statement = connection.prepareStatement("SELECT * FROM students WHERE email = ?");
            statement.setString(1, email);

            ResultSet resultSet = statement.executeQuery();

            if (resultSet.next()){
                student = new Students(
                        resultSet.getLong("id"),
                        resultSet.getString("email"),
                        resultSet.getString("password"),
                        resultSet.getString("fullName"),
                        resultSet.getString("dateOfBirth"),
                        resultSet.getInt("points"),
                        resultSet.getInt("attempts"),
                        resultSet.getString("phonenumber")
                );

            }

            statement.close();
        }catch (Exception e){
            e.printStackTrace();
        }
        return student;
    }

    public static boolean deleteStudent(Students student){
        int rows = 0;

        try{
            PreparedStatement statement = connection.prepareStatement("" +
                    "DELETE FROM students WHERE id = ?");

            statement.setLong(1, student.getId());

            rows = statement.executeUpdate();
            statement.close();
        }catch (Exception e){
            e.printStackTrace();
        }
        return rows>0;
    }

}
