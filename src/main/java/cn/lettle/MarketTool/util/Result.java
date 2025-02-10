/**
 * Created with IntelliJ IDEA.
 * Author: Lettle
 * Date: 2025/1/26
 * Time: 15:26
 * Description:
 */

package cn.lettle.MarketTool.util;

import com.alibaba.fastjson2.JSONObject;

public class Result<T> {
    public int code;

    private String msg;

    private T data;

    public Result(int code, String msg, T data) {
        this.code = code;
        this.msg = msg;
        this.data = data;
    }

    @Override
    public String toString() {
        return JSONObject.toJSONString(this);
    }

    public Result<T> setCode(ResultCode retCode) {
        this.code = retCode.code;
        return this;
    }

    public int getCode() {
        return code;
    }

    public Result<T> setCode(int code) {
        this.code = code;
        return this;
    }

    public String getMsg() {
        return msg;
    }

    public Result<T> setMsg(String msg) {
        this.msg = msg;
        return this;
    }

    public T getData() {
        return data;
    }

    public Result<T> setData(T data) {
        this.data = data;
        return this;
    }
}