package imau.edc.canteenevaluationbackend.mapper;



import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import imau.edc.canteenevaluationbackend.entity.Dish;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.math.BigDecimal;

@Mapper
public interface DishMapper extends BaseMapper<Dish> {
    // 查询菜品平均评分
    @Select("SELECT AVG(score) FROM evaluation WHERE dish_id = #{dishId}")
    BigDecimal getAvgScore(@Param("dishId") Long dishId);
}