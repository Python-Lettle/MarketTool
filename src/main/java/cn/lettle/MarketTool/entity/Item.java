/**
 * Created with IntelliJ IDEA.
 * Author: Lettle
 * Date: 2025/1/26
 * Time: 11:42
 * Description:
 */

package cn.lettle.MarketTool.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;
import org.springframework.stereotype.Repository;

@Data
@TableName("item")
@Repository
public class Item
{
    @TableId(type = IdType.AUTO)
    private Integer itemId;
    private String itemName;
    private Integer itemNowPrice;
    private Integer itemAmount;
    private String itemFormula;

    private Integer itemType;
    private Integer itemType2;

    public void copy(Item item) {
        this.itemId = item.itemId;
        this.itemName = item.itemName;
        this.itemNowPrice = item.itemNowPrice;
        this.itemAmount = item.itemAmount;
        this.itemFormula = item.itemFormula;
        this.itemType = item.itemType;
        this.itemType2 = item.itemType2;
    }
}
