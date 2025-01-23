/**
 * Created with IntelliJ IDEA.
 * Author: Lettle
 * Date: 2025/1/23
 * Time: 14:39
 * Description:
 */

package cn.lettle.MarketTool.service.impl;

import cn.lettle.MarketTool.entity.User;
import cn.lettle.MarketTool.mapper.UserMapper;
import cn.lettle.MarketTool.service.UserService;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserServiceImpl extends ServiceImpl<UserMapper, User> implements UserService {

    @Autowired
    protected UserMapper baseMapper;

    public List<User> selectByEmail(String email) {
        QueryWrapper<User> userQueryWrapper = new QueryWrapper<>();
        userQueryWrapper.eq("user_email", email);
        return baseMapper.selectList(userQueryWrapper);
    }

    public List<User> selectByUsername(String user_name) {
        QueryWrapper<User> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("user_name", user_name);
        return baseMapper.selectList(queryWrapper);
    }
}
