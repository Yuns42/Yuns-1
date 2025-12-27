package imau.edc.canteenevaluationbackend;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import imau.edc.canteenevaluationbackend.entity.User;
import imau.edc.canteenevaluationbackend.mapper.UserMapper;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import com.baomidou.mybatisplus.annotation.DbType;
import org.springframework.context.ConfigurableApplicationContext;


@MapperScan("imau.edc.canteenevaluationbackend.mapper")

@SpringBootApplication
public class CanteenEvaluationBackendApplication {
    public static void main(String[] args) {
        ConfigurableApplicationContext context = SpringApplication.run(CanteenEvaluationBackendApplication.class, args);

        // 测试数据库查询
        UserMapper userMapper = context.getBean(UserMapper.class);
        User user = userMapper.selectOne(
                new QueryWrapper<User>()
                        .eq("username", "2023122105992")
                        .eq("password", "f5bb0c8de146c67b44babbf4e6584cc0")
        );
        System.out.println("直接查询结果：" + (user == null ? "无" : user.getUsername()));
    }
}