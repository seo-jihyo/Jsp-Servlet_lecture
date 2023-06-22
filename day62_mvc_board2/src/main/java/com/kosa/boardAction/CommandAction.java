package com.kosa.boardAction;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface CommandAction {
public String process(HttpServletRequest request, HttpServletResponse response) 
		throws Exception;

}
