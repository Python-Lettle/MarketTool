/**
 * Created with IntelliJ IDEA.
 * Author: Lettle
 * Date: 2025/1/23
 * Time: 14:38
 * Description:
 */

package cn.lettle.MarketTool.service;

import cn.lettle.MarketTool.entity.User;
import com.baomidou.mybatisplus.extension.service.IService;

import java.util.List;

public interface UserService extends IService<User> {

    public List<User> selectByEmail(String email);
    public List<User> selectByUsername(String user_name);
}
