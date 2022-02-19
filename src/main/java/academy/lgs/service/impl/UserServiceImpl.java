package academy.lgs.service.impl;


import java.sql.SQLException;
import java.util.List;

import org.apache.log4j.Logger;

import academy.lgs.dao.UserDao;
import academy.lgs.dao.impl.UserDaoImpl;
import academy.lgs.domain.User;
import academy.lgs.service.UserService;

public class UserServiceImpl implements UserService {
	private static UserService userServiceImpl;
	private UserDao userDao;
	private static Logger LOGGER = Logger.getLogger(UserServiceImpl.class);

	private UserServiceImpl() {
				try {
					userDao = new UserDaoImpl();
				} catch (InstantiationException | IllegalAccessException | ClassNotFoundException | SQLException e) {
					LOGGER.error(e);
				}
	}

	public static UserService getUserService() {
		if (userServiceImpl == null) {
			userServiceImpl = new UserServiceImpl();
		}

		return userServiceImpl;
	}

	@Override
	public User create(User t) {
		return userDao.create(t);
	}

	@Override
	public User read(Integer id) {
		return userDao.read(id);
	}

	@Override
	public User update(User t) {
		return userDao.update(t);
	}

	@Override
	public void delete(Integer id) {
		userDao.delete(id);

	}

	@Override
	public List<User> readAll() {
		return userDao.readAll();
	}

	@Override
	public User getUserByEmail(String email) {
		return userDao.getUserByEmail(email);
	}

	@Override
	public boolean toFindUser(String email) {
		return userDao.toFindUser(email);
	}

}
