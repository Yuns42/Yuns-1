package imau.edc.canteenevaluationbackend.service.impl;



import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import imau.edc.canteenevaluationbackend.entity.User;
import imau.edc.canteenevaluationbackend.mapper.UserMapper;
import imau.edc.canteenevaluationbackend.service.UserService;
import org.apache.commons.codec.digest.DigestUtils;
import org.springframework.stereotype.Service;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

@Service
public class UserServiceImpl extends ServiceImpl<UserMapper, User> implements UserService {

    @Autowired
    private SqlSessionTemplate sqlSessionTemplate;

    @Override
    public User login(String username, String password) {
        String md5Pwd = DigestUtils.md5Hex(password);
        // 1. 打印前端传过来的原始密码（确认参数接收正确）
        System.out.println("前端传入的原始密码：" + password);
        // 2. 加密密码（zxy123456 → f5bb0c8de146c67b44babbf4e6584cc0）

        // 3. 打印加密后的密码（关键：必须等于f5bb0c8de146c67b44babbf4e6584cc0）
        System.out.println("MD5加密后的密码：" + md5Pwd);
        LambdaQueryWrapper<User> wrapper = new LambdaQueryWrapper<>();
        wrapper.eq(User::getUsername, username)
                .eq(User::getPassword, md5Pwd);

        // 清空MyBatis一级缓存（正确方式）
        sqlSessionTemplate.clearCache();

        User user = baseMapper.selectOne(wrapper);
        System.out.println("数据库查询结果：" + (user == null ? "无用户" : user.getName()));
        return user;
    }
}

