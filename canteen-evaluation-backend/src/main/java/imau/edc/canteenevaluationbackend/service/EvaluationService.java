package imau.edc.canteenevaluationbackend.service;



import com.baomidou.mybatisplus.extension.service.IService;
import imau.edc.canteenevaluationbackend.entity.Evaluation;

import java.util.List;

public interface EvaluationService extends IService<Evaluation> {
    // 根据菜品ID查评价
    List<Evaluation> getByDishId(Long dishId);
    // 新增评价（打分）
    boolean addEvaluation(Evaluation evaluation);
}