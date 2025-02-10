/**
 * Created with IntelliJ IDEA.
 * Author: Lettle
 * Date: 2025/1/23
 * Time: 14:21
 * Description: User实体
 */

package cn.lettle.MarketTool.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;
import lombok.Getter;
import lombok.Setter;
import org.springframework.stereotype.Repository;

@Data
@TableName("user")
@Repository
public class User
{
    @TableId(type = IdType.AUTO)
    public Integer userId;
    public String userName;
    public String userEmail;
    public String userPasswd;
    public int userAuthority; // 用户权限 0为ban 1为普通游客 2为可操作用户 3为管理员

}
