package imau.edc.canteenevaluationbackend.common;


import lombok.Data;

// 统一接口返回格式
@Data
public class Result<T> {
    private int code; // 200成功，500失败
    private String msg;
    private T data;

    // 成功返回
    public static <T> Result<T> success(T data) {
        Result<T> result = new Result<>();
        result.setCode(200);
        result.setMsg("成功");
        result.setData(data);
        return result;
    }

    // 失败返回
    public static <T> Result<T> error(String msg) {
        Result<T> result = new Result<>();
        result.setCode(500);
        result.setMsg(msg);
        result.setData(null);
        return result;
    }
}