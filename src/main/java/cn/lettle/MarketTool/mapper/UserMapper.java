/**
 * Created with IntelliJ IDEA.
 * Author: Lettle
 * Date: 2025/1/23
 * Time: 14:31
 * Description:
 */

package cn.lettle.MarketTool.mapper;

import cn.lettle.MarketTool.entity.User;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface UserMapper extends BaseMapper<User> {
}
