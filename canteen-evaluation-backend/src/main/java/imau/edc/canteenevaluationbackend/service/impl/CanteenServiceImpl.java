package imau.edc.canteenevaluationbackend.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import imau.edc.canteenevaluationbackend.entity.Canteen;
import imau.edc.canteenevaluationbackend.mapper.CanteenMapper;
import imau.edc.canteenevaluationbackend.service.CanteenService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CanteenServiceImpl extends ServiceImpl<CanteenMapper, Canteen> implements CanteenService {
    // 显式注入CanteenMapper，覆盖ServiceImpl的默认注入逻辑
    @Autowired
    private CanteenMapper canteenMapper;
}