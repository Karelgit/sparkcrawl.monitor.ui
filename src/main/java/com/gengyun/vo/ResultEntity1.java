package com.gengyun.vo;

import java.io.Serializable;

/**
 * Created by root on 16-2-26.
 */
public class ResultEntity1 implements Serializable {
    private boolean result;
    private Object data;

    public boolean isResult() {
        return result;
    }

    public void setResult(boolean result) {
        this.result = result;
    }

    public Object getData() {
        return data;
    }

    public void setData(Object data) {
        this.data = data;
    }
}
