package top.jimxu.dao;

import java.io.Serializable;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import top.jimxu.entity.Sex;
import top.jimxu.entity.User;
@Repository
public class UserDao {
	@Resource
	private SessionFactory sessionFactory;
	
	private Session getSession() {
		return sessionFactory.getCurrentSession();
	}
	/**
	 * 查询所有
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public List<User> getAllUsers() {
		return this.getSession().createQuery("from User").list();
	}
	
	/**
	 * 通过id查询
	 * @param id
	 * @return
	 */
	public User getUser(Serializable id) {
		return (User)this.getSession().get(User.class, id);
	}
	
	/**
	 * 新增(注册)
	 * @param user
	 */
	public void saveUser(User user) {
		this.getSession().save(user);
	}

	/**
	 * 修改
	 * @param user
	 */
	public void updateUser(User user) {
		this.getSession().update(user);
	}
	
	/**
	 * 删除
	 * @param user
	 */
	public void deleteUser(User user) {
		this.getSession().delete(user);
	}
	/**
	 * 登录
	 * @param user
	 */
	public List<User> login(String username) {
		Query query = this.getSession().createQuery("from User where username=:username");
		query.setParameter("username", username);
		return query.list();
	}
	/**
	 * 通过sexid查sex
	 * @param user
	 */
	public Sex getSex(Serializable id) {
		return (Sex)this.getSession().get(Sex.class, id);
	}
	
	
}
