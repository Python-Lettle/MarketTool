/**
 * Created with IntelliJ IDEA.
 * Author: Lettle
 * Date: 2025/1/26
 * Time: 12:19
 * Description:
 */

package cn.lettle.MarketTool.mapper;

import cn.lettle.MarketTool.entity.Item;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface ItemMapper extends BaseMapper<Item> {
}
