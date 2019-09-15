package top.jimxu.service;

import java.io.Serializable;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import top.jimxu.dao.UserDao;
import top.jimxu.entity.Sex;
import top.jimxu.entity.User;
@Transactional
@Service
public class UserService {
	@Autowired
	private UserDao userDao;
	
	/**
	 * 查询所有
	 * @return
	 */
	public List<User> getAllUsers() {
		List<User> list = userDao.getAllUsers();
		return list;
	}
	
	/**
	 * 通过id查询
	 * @param id
	 * @return
	 */
	public User getUser(Serializable id) {
		return userDao.getUser(id);
	}
	
	
	/**
	 * 新增(注册)
	 * @param user
	 */
	public void saveUser(User user) {
		userDao.saveUser(user);
	}
	
	/**
	 * 修改
	 * @param user
	 */
	public void updateUser(User user) {
		userDao.updateUser(user);
	}
	
	/**
	 * 删除
	 * @param user
	 */
	public void deleteUser(User user) {
		userDao.deleteUser(user);
	}
	/**
	 * 登录
	 * @param user
	 */
	public boolean login(String username,String password) {
		List<User> list = userDao.login(username);
		for (User user : list) {
			System.out.println(user);
			if(user.getPassword().equals(password)){
				return true;
			}
		}
		return false;
	}
	
	/**
	 * 通过sexid查sex
	 * @param user
	 */
	public Sex getSex(Serializable id) {
		return userDao.getSex(id);
	}
}
