/**
 * Created with IntelliJ IDEA.
 * Author: Lettle
 * Date: 2025/1/23
 * Time: 15:47
 * Description:
 */

package cn.lettle.MarketTool.controller;

import cn.lettle.MarketTool.entity.User;
import cn.lettle.MarketTool.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/user")
public class UserController {
    @Autowired
    private UserService userService;

    @GetMapping("login")
    public String login() {
        List<User> users = userService.selectByUsername("Lettle2");
        System.out.println(users);
        for (User u : users) {
            if (u.getUserEmail().equals("666@qq.com")) {
                return "success";
            }
        }
        return "false";
    }
}
