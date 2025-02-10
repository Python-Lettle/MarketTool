/**
 * Created with IntelliJ IDEA.
 * Author: Lettle
 * Date: 2025/1/26
 * Time: 15:17
 * Description:
 */

package cn.lettle.MarketTool.controller;

import cn.lettle.MarketTool.entity.Item;
import cn.lettle.MarketTool.mapper.ItemMapper;
import cn.lettle.MarketTool.service.ItemService;
import cn.lettle.MarketTool.util.Result;
import cn.lettle.MarketTool.util.ResultCode;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Slf4j
@RestController
@RequestMapping("/api")
@CrossOrigin(origins = "*")
public class ApiItemController {
    @Autowired
    private ItemMapper itemMapper;
    @Autowired
    private ItemService itemService;

    // 物品 List
    public List<Item> itemsList;
    // 物品名-物品 Map
//    public Map<String, Item> itemsMap;

    @GetMapping("getItems")
    public String getItems() {
//        if (itemsMap == null) {
//            itemsMap = new HashMap<>();
//            itemsList = itemService.selectAllItems();
//            for (Item i : itemsList) {
//                itemsMap.put(i.getItemName(), i);
//            }
//        }
        if (itemsList == null) {
            itemsList = itemService.selectAllItems();
        }
        return new Result<>(
                ResultCode.SUCCESS.code,
                "items",
                itemsList
        ).toString();
    }

    /**
     * 目前设计为用户所有的修改都在内存上面修改
     * 只有在关闭服务器、调用 supersave
     * 这两种情况下会向数据库保存数据
     * @param item
     */
    @PostMapping("setItem")
    public void setItem(@RequestBody Item item) {
        // 保存到内存中
        Integer itemId = item.getItemId();
        Item item_memory = itemsList.get(itemId-1);
        if (item_memory != null) {
            item_memory.copy(item);
        } else {
            log.warn("发现一个未知物品: " + item.getItemName());
        }
        // 保存到数据库
//        itemService.updateItem(item);
    }

    @PostMapping("setItems")
    public void setItems(@RequestBody List<Item> items) {
        log.info("数据被刷新一次");
        for (Item i : items) {
            setItem(i);
        }
    }

    /**
     * 最高权限的保存所有内存中的数据到数据库中
     */
    @PostMapping("supersave")
    public void supersave() {
        if (itemsList == null || itemsList.size() == 0) {
            log.info("触发Supersave，但itemsList是空的");
            return ;
        }
        log.info("触发Supersave");
        for (Item i : itemsList) {
            itemService.updateItem(i);
        }
    }
}
