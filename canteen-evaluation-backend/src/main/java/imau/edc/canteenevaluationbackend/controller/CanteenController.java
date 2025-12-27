package imau.edc.canteenevaluationbackend.controller;


import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import imau.edc.canteenevaluationbackend.entity.Canteen;
import imau.edc.canteenevaluationbackend.service.CanteenService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import imau.edc.canteenevaluationbackend.common.Result;

import java.util.List;

@RestController
@RequestMapping("/canteen")
public class CanteenController {

    @Autowired
    private CanteenService canteenService;

    // 获取所有食堂：GET /canteen/list
    @GetMapping("/list")
    public Result<List<Canteen>> getCanteenList() {
        List<Canteen> list = canteenService.list();
        return Result.success(list);
    }
}