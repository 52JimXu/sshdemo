package top.jimxu.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import top.jimxu.entity.User;
import top.jimxu.service.UserService;

@Controller    //使用该注解标志它是一个控制器
@RequestMapping(value = "/user")
public class UserController {
	@Autowired
	private UserService userService;
	
	@RequestMapping(value = "/getalluser")
	public String getAllUser(Map<String, Object> map) {
		map.put("users", userService.getAllUsers());
		return "user";
		
	}
	@RequestMapping("/getuser")
	public String getuser(Map<String, Object> map,int id) {
		map.put("user", userService.getUser(id));
		return "update";
	}
	@RequestMapping("/update")
	public String update(Map<String, Object> map,User user,int sexid,String newpassword,HttpServletRequest request) {
		User user2 = userService.getUser(user.getId());
		if(newpassword.isEmpty() && user.getPassword().isEmpty()){
			user.setPassword(user2.getPassword());
			user.setSex(userService.getSex(sexid));
			userService.updateUser(user);
			map.put("users", userService.getAllUsers());
			return "user";
		}else{
			if(user.getPassword().equals(user2.getPassword())){
				if(newpassword == null || newpassword.isEmpty()){
					request.setAttribute("user", user);
					request.setAttribute("msg1", "新密码不能为空");
					return "update";
				}else{
					user.setPassword(newpassword);
					user.setSex(userService.getSex(sexid));
					userService.updateUser(user);
					map.put("users", userService.getAllUsers());
					return "user";
				}
				
			}else{
				request.setAttribute("user", user);
				request.setAttribute("msg", "原密码输入错误");
				return "update";
			}
			
		}
		
	}
	@RequestMapping(value = "/deleteuser")
	public String deleteUser(int id) {
		User user = userService.getUser(id);
		userService.deleteUser(user);
		return "redirect:/user/getalluser";
	}
	@RequestMapping(value = "/adduser")
	public String addUser(User user,String password1,int sexid,HttpServletRequest request) {
		user.setSex(userService.getSex(sexid));
		if(!user.getPassword().isEmpty()){
			if(user.getPassword().equals(password1)){
				userService.saveUser(user);
				request.getSession().setAttribute("msg2","注册成功，请登录");
				return "redirect:/index.jsp";
			}else{
				request.getSession().setAttribute("msg3","两次密码不一致");
				return "redirect:/register.jsp";
				}
		}else{
			request.getSession().setAttribute("msg3","密码不能为空");
			return "redirect:/register.jsp";
		}
	}
	
	@RequestMapping(value = "/login")
	public String login(String username, String password,HttpServletRequest request) {
		boolean flag = userService.login(username, password);
		if(flag){
			return "redirect:/user/getalluser";
		}else{
			request.getSession().setAttribute("msg2", "账号或密码错误");
			return "redirect:/index.jsp";
		}
	}
	
	
}
