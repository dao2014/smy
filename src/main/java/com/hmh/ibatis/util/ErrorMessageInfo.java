package com.hmh.ibatis.util;

import java.util.List;

import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;

public class ErrorMessageInfo {
	private static List<FieldError> err;
	private static FieldError fe;
	private static String field;
	private static String errorMessage;
	
	public static String printErrorMessage(BindingResult br) {
		StringBuffer errorMessageInfo = new StringBuffer("ERROR：");
		err = br.getFieldErrors();
		for (int i = 0; i < err.size(); i++) {
			fe = err.get(i);
			field = fe.getField();// 得到那个字段验证出错
			errorMessage = fe.getDefaultMessage();// 得到错误消息
			errorMessageInfo.append("["+field +","+ errorMessage+"]");
		}
		return errorMessageInfo.toString();
	}
}
