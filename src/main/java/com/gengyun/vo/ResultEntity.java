package com.gengyun.vo;

import java.io.Serializable;

public class ResultEntity implements Serializable{
	
	private boolean success;
	
	private Object data;

	public boolean isSuccess()
	{
		return success;
	}

	public void setSuccess(boolean success)
	{
		this.success = success;
	}

	public Object getData()
	{
		return data;
	}

	public void setData(Object data)
	{
		this.data = data;
	}

}
