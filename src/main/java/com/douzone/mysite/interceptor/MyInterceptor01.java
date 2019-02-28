package com.douzone.mysite.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

public class MyInterceptor01 implements HandlerInterceptor {

	@Override
	//핸들러 가기 전
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		// Handler 호출 전
		// Handler 호출 여부를 결정(boolean 반환값에 따라)
		System.out.println("MyInterceptor01:preHandle");
		// false는 핸들러가 뒤로 가지 않음
		// true는 핸들러가 뒤로 감
		return false;
	}

	@Override
	//핸들러 간 후
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		// 핸들러 호출이 된 후(핸들러의 작업이 끝남)
		System.out.println("MyInterceptor01:postHandle");
	}

	@Override
	//응답
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		// View의 rendering 작업까지 완전히 완료
		System.out.println("MyInterceptor01:afterCompletion");

	}

}
