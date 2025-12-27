package imau.edc.canteenevaluationbackend.mapper;


import com.baomidou.mybatisplus.autoconfigure.MybatisPlusProperties;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import imau.edc.canteenevaluationbackend.entity.User;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface UserMapper extends BaseMapper<User> {
    MybatisPlusProperties.CoreConfiguration getConfiguration();
    // MyBatis-Plus自动实现CRUD，无需手动写SQL
}