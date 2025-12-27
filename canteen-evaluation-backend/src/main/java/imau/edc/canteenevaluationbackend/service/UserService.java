package imau.edc.canteenevaluationbackend.service;


import com.baomidou.mybatisplus.extension.service.IService;
import imau.edc.canteenevaluationbackend.entity.User;

public interface UserService extends IService<User> {
    // 用户登录
    User login(String username, String password);
}