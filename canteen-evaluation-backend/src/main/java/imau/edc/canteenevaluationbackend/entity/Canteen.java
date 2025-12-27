package imau.edc.canteenevaluationbackend.entity;


import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

    @Data
    @TableName("canteen")
    public class Canteen {
        @TableId(type = IdType.AUTO)
        private Long id;
        private String name; // 食堂名称
        private String description; // 食堂描述
    }

