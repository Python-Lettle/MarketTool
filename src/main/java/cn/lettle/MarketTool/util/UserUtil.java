package cn.lettle.MarketTool.util;

import cn.lettle.MarketTool.entity.User;
import cn.lettle.MarketTool.service.impl.UserServiceImpl;
import jakarta.annotation.Resource;

public class UserUtil {

	@Resource
	private UserServiceImpl userService;

	private final Boolean result;
	private final String msg;

	public UserUtil(Boolean result, String msg) {
		this.result = result;
		this.msg = msg;
	}

	public Boolean getResult() {
		return result;
	}
	public String getMsg() {
		return msg;
	}

	//校验用户各个字段是否合法
	public UserUtil examine(User user) {
		//邮箱格式处理
		if(!user.getUserEmail().matches("^[a-z0-9]+([._\\-]*[a-z0-9])*@([a-z0-9]+[-a-z0-9]*[a-z0-9]+.){1,63}[a-z0-9]+$")) {
			//new UserUtil(false,"邮箱格式错误")
			return new UserUtil(false,"邮箱格式错误");
		}
		//用户名长度（非空）处理
		if(user.getUserName().length() < 3 || user.getUserName().length() > 20) {
			return new UserUtil(false,"用户名长度必须为3~20");
		}
		//用户名格式处理
		if (!user.getUserName().matches("^[\\w]*$")) {
			return new UserUtil(false,"用户名格式错误");
		}
		//密码长度（非空）处理
		if (user.getUserPasswd().length() < 6 || user.getUserPasswd().length() > 20) {
			return new UserUtil(false,"密码长度必须为6~20");
		}
		//邮箱查重
		if (!userService.selectByEmail(user.getUserEmail()).isEmpty()) {
			return new UserUtil(false,"该邮箱已被注册");
		}
		if (!userService.selectByUsername(user.getUserName()).isEmpty()) {
			return new UserUtil(false, "该用户名已被注册");
		}

		return new UserUtil(true,"");
	}

}
