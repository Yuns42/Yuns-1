package imau.edc.canteenevaluationbackend.controller;


import imau.edc.canteenevaluationbackend.entity.Evaluation;
import imau.edc.canteenevaluationbackend.service.EvaluationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import imau.edc.canteenevaluationbackend.common.Result;

import java.util.List;

@RestController
@RequestMapping("/evaluation")
public class EvaluationController {

    @Autowired
    private EvaluationService evaluationService;

    // 根据菜品ID查评价：GET /evaluation/list/{dishId}
    @GetMapping("/list/{dishId}")
    public Result<List<Evaluation>> getEvaluationList(@PathVariable Long dishId) {
        List<Evaluation> list = evaluationService.getByDishId(dishId);
        return Result.success(list);
    }

    // 新增评价：POST /evaluation/add
    @PostMapping("/add")
    public Result<Boolean> addEvaluation(@RequestBody Evaluation evaluation) {
        boolean success = evaluationService.addEvaluation(evaluation);
        if (success) {
            return Result.success(true);
        } else {
            return Result.error("你已评价过该菜品");
        }
    }
}