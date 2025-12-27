package imau.edc.canteenevaluationbackend.service.impl;


import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import imau.edc.canteenevaluationbackend.entity.Evaluation;
import imau.edc.canteenevaluationbackend.mapper.EvaluationMapper;
import imau.edc.canteenevaluationbackend.service.EvaluationService;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class EvaluationServiceImpl extends ServiceImpl<EvaluationMapper, Evaluation> implements EvaluationService {

    @Override
    public List<Evaluation> getByDishId(Long dishId) {
        LambdaQueryWrapper<Evaluation> wrapper = new LambdaQueryWrapper<>();
        wrapper.eq(Evaluation::getDishId, dishId)
                .orderByDesc(Evaluation::getCreateTime);
        return baseMapper.selectList(wrapper);
    }

    @Override
    public boolean addEvaluation(Evaluation evaluation) {
        // 检查用户是否已评价该菜品
        LambdaQueryWrapper<Evaluation> wrapper = new LambdaQueryWrapper<>();
        wrapper.eq(Evaluation::getUserId, evaluation.getUserId())
                .eq(Evaluation::getDishId, evaluation.getDishId());
        if (baseMapper.selectCount(wrapper) > 0) {
            return false; // 已评价，返回失败
        }
        return save(evaluation); // 新增评价
    }
}