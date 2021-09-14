package controller;

import dao.TicketCommentDao;
import dao.TicketDao;
import dao.UserDao;
import dao.UserSurveyQuestionDao;
import java.util.List;
import model.Ticket;
import model.User;
import model.UserRole;
import model.UserSurveyQuestion;
import utils.PasswordHash;

public class UserController {

    public static User createUser(User user, String UserRoleKeyName) {

        UserDao userDao = new UserDao();

        User foundUser = userDao.findUserByEmail(user.getEmail());

        // validate existed user if found
        if (foundUser != null) {
            return null;
        }

        String passwordHash = PasswordHash.compute(user.getPassword());
        UserRole userRole = userDao.getUserRoleByKeyName(UserRoleKeyName);

        if (userRole == null) {
            return null;
        }

        user.setPasswordHash(passwordHash);
        user.setUserRoleId(userRole.getId());

        boolean createdUser = userDao.insertUser(user);

        if (!createdUser) {
            return null;
        }

        return userDao.findUserByEmail(user.getEmail());
    }

    public static User login(String email, String password) {
        UserDao userDao = new UserDao();
        User foundUser = userDao.findUserByEmail(email);

        // when user not found
        if (foundUser == null) {
            return null;
        }

        // check if password is correct
        if (!PasswordHash.compare(password, foundUser.getPasswordHash())) {
            return null;
        }

        return foundUser;
    }

    public int getUserQuantityByGender(String gender) {
        UserDao userDao = new UserDao();
        return userDao.getUsersQuantityByGender(gender);
    }

    public boolean updateUser(User user) {
        UserDao userDao = new UserDao();
        return userDao.updateUser(user);
    }

    public User findUserById(int userId) {
        UserDao userDao = new UserDao();
        return userDao.findUserById(userId);
    }

    public static boolean deleteUserById(int userId) {
        UserDao user = new UserDao();
        User foundUser = user.findUserById(userId);

        UserRole userRole = user.getUserRoleByKeyName("USER");
        UserRole supportRole = user.getUserRoleByKeyName("SUPPORT");
        UserSurveyQuestionDao userSurveyDao = new UserSurveyQuestionDao();

        if (foundUser.getUserRoleId() == userRole.getId()) {
            userSurveyDao.deleteSurveyByUserId(userId);
        }

        TicketCommentDao ticketCommentDao = new TicketCommentDao();
        ticketCommentDao.deleteCommentByUserId(userId);

        TicketDao ticketDao = new TicketDao();
        ticketDao.deleteTicketByUserId(userId);

        return user.deleteUserById(userId);
    }

    public void insertUserSurveyQuestion(int userId, String[] userAnswers) {
        UserSurveyQuestion userSurveyQuestion = new UserSurveyQuestion();
        UserSurveyQuestionDao userSurveyQuestionDao = new UserSurveyQuestionDao();

        int index = 1;
        for (String userAnswer : userAnswers) {
            userSurveyQuestion.setUserId(userId);
            userSurveyQuestion.setQuestionId(index);
            userSurveyQuestion.setAnswer(userAnswer);
            userSurveyQuestionDao.insertUserSurvey(userSurveyQuestion);
            index++;
        }
    }

    public List<User> searchUsers(String search, String keyNameRole) {
        UserDao userDao = new UserDao();

        UserRole userRole = userDao.getUserRoleByKeyName(keyNameRole);

        return userDao.searchUsers(search, userRole.getId());
    }

    public User findUserByEmail(String email) {
        UserDao userDao = new UserDao();
        return userDao.findUserByEmail(email);
    }

    public List<User> findUsersByKeyNameRole(String keyNameRole) {
        UserDao userDao = new UserDao();
        UserRole userRole = userDao.getUserRoleByKeyName(keyNameRole);

        return userDao.listUsersByRoleId(userRole.getId());
    }
}
