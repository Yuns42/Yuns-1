package imau.edc.canteenevaluationbackend.controller;

import imau.edc.canteenevaluationbackend.entity.Dish;
import imau.edc.canteenevaluationbackend.service.DishService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import imau.edc.canteenevaluationbackend.common.Result;

import java.math.BigDecimal;
import java.util.List;

@RestController
@RequestMapping("/dish")
public class DishController {

    @Autowired
    private DishService dishService;

    // 根据食堂ID查菜品：GET /dish/list/{canteenId}
    @GetMapping("/list/{canteenId}")
    public Result<List<Dish>> getDishList(@PathVariable Long canteenId) {
        List<Dish> list = dishService.getByCanteenId(canteenId);
        return Result.success(list);
    }

    // 获取菜品平均评分：GET /dish/avgScore/{dishId}
    @GetMapping("/avgScore/{dishId}")
    public Result<BigDecimal> getAvgScore(@PathVariable Long dishId) {
        BigDecimal avgScore = dishService.getAvgScore(dishId);
        return Result.success(avgScore);
    }
}