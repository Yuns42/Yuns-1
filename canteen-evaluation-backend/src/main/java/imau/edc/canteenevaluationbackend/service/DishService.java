package imau.edc.canteenevaluationbackend.service;


import com.baomidou.mybatisplus.extension.service.IService;
import imau.edc.canteenevaluationbackend.entity.Dish;

import java.math.BigDecimal;
import java.util.List;

public interface DishService extends IService<Dish> {
    // 根据食堂ID查菜品
    List<Dish> getByCanteenId(Long canteenId);
    // 获取菜品平均评分
    BigDecimal getAvgScore(Long dishId);
}