package imau.edc.canteenevaluationbackend.entity;


import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.time.LocalDateTime;

@Data
@TableName("evaluation")
public class Evaluation {
    @TableId(type = IdType.AUTO)
    private Long id;
    private Long dishId; // 菜品ID
    private Long userId; // 用户ID
    private Integer score; // 1-5星
    private String content; // 评价内容
    private LocalDateTime createTime;
}
