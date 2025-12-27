package imau.edc.canteenevaluationbackend.service.impl;


import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import imau.edc.canteenevaluationbackend.entity.Dish;
import imau.edc.canteenevaluationbackend.mapper.DishMapper;
import imau.edc.canteenevaluationbackend.service.DishService;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;
import java.util.List;

@Service
public class DishServiceImpl extends ServiceImpl<DishMapper, Dish> implements DishService {

    @Override
    public List<Dish> getByCanteenId(Long canteenId) {
        LambdaQueryWrapper<Dish> wrapper = new LambdaQueryWrapper<>();
        wrapper.eq(Dish::getCanteenId, canteenId);
        return baseMapper.selectList(wrapper);
    }

    @Override
    public BigDecimal getAvgScore(Long dishId) {
        return baseMapper.getAvgScore(dishId);
    }
}