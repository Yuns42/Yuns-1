package imau.edc.canteenevaluationbackend.controller;


import imau.edc.canteenevaluationbackend.entity.LoginDTO;
import imau.edc.canteenevaluationbackend.entity.User;
import imau.edc.canteenevaluationbackend.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import imau.edc.canteenevaluationbackend.common.Result;

@RestController
@RequestMapping("/user")
public class UserController {
    @Autowired
    private UserService userService;

    // 用@RequestBody接收JSON参数
    @PostMapping("/login")
    public Result<User> login(@RequestBody LoginDTO loginDTO) {
        User user = userService.login(loginDTO.getUsername(), loginDTO.getPassword());
        if (user != null) {
            return Result.success(user);
        } else {
            return Result.error("学号或密码错误");
        }
    }
}