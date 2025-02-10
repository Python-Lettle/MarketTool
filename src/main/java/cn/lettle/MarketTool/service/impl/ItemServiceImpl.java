/**
 * Created with IntelliJ IDEA.
 * Author: Lettle
 * Date: 2025/1/26
 * Time: 15:44
 * Description:
 */

package cn.lettle.MarketTool.service.impl;

import cn.lettle.MarketTool.entity.Item;
import cn.lettle.MarketTool.mapper.ItemMapper;
import cn.lettle.MarketTool.service.ItemService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ItemServiceImpl extends ServiceImpl<ItemMapper, Item> implements ItemService {
    @Autowired
    private ItemMapper itemMapper;
    public List<Item> selectAllItems() {
        return itemMapper.selectList(null);
    }

    @Override
    public void updateItem(Item item) {
        itemMapper.updateById(item);
    }
}
