/**
 * Created with IntelliJ IDEA.
 * Author: Lettle
 * Date: 2025/1/26
 * Time: 15:43
 * Description:
 */

package cn.lettle.MarketTool.service;

import cn.lettle.MarketTool.entity.Item;
import com.baomidou.mybatisplus.extension.service.IService;

import java.util.List;
import java.util.Map;

public interface ItemService extends IService<Item> {

    public List<Item> selectAllItems();
    public void updateItem(Item item);
}
