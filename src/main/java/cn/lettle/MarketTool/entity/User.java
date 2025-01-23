/**
 * Created with IntelliJ IDEA.
 * Author: Lettle
 * Date: 2025/1/23
 * Time: 14:21
 * Description: User实体
 */

package cn.lettle.MarketTool.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;
import lombok.Getter;
import lombok.Setter;

@Data
@Getter
@Setter
@TableName("user")
public class User {
    @TableId(type = IdType.AUTO)
    private Integer user_id;
    private String user_name;
    private String user_email;
    private String user_passwd;
    private int user_authority; // 用户权限 0为ban 1为普通游客 2为可操作用户 3为管理员

}
