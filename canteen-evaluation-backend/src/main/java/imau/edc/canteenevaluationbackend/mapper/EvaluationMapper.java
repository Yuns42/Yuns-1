package imau.edc.canteenevaluationbackend.mapper;



import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import imau.edc.canteenevaluationbackend.entity.Evaluation;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface EvaluationMapper extends BaseMapper<Evaluation> {
}