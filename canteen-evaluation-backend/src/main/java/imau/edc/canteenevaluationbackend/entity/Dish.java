package imau.edc.canteenevaluationbackend.entity;


import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.math.BigDecimal;

@Data
@TableName("dish")
public class Dish {
    @TableId(type = IdType.AUTO)
    private Long id;
    private String name; // 菜品名
    private Long canteenId; // 食堂ID
    private BigDecimal price; // 价格
    private String imgUrl; // 图片地址

    // 生成getter、setter方法
    public String getImageUrl() {
        return imgUrl;
    }
    public void setImageUrl(String imgUrl) {
        this.imgUrl = imgUrl;
    }
}
