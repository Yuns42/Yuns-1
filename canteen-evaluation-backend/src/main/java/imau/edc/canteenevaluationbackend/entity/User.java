package imau.edc.canteenevaluationbackend.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.time.LocalDateTime;

    @Data // Lombok自动生成get/set/toString
    @TableName("user")
    public class User {
        @TableId(type = IdType.AUTO)
        private Long id;
        private String username; // 学号
        private String password; // 密码
        private String name;     // 姓名
        private LocalDateTime createTime;
    }
