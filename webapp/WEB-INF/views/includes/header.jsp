<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
		<div id="header">
			<h1>${siteVo.title }</h1>
			<ul>
				<c:choose>
					<c:when test="${empty authuser }">
						<li><a href="${pageContext.servletContext.contextPath }/user/login">로그인</a><li>
						<li><a href="${pageContext.servletContext.contextPath }/user/join">회원가입</a><li>
						<c:if test="${authuser.role eq 'ADMIN' }">
							<li><a href="${pageContext.servletContext.contextPath }/admin">관리자 페이지</a><li>
						</c:if>
					</c:when>
					<c:otherwise>
						<li><a href="${pageContext.servletContext.contextPath }/user/modify">회원정보수정</a><li>
						<li><a href="${pageContext.servletContext.contextPath }/user/logout">로그아웃</a><li>
						<c:if test="${authuser.role eq 'USER' }">
							<li><a href="${pageContext.servletContext.contextPath }/user/drop">회원탈퇴</a><li>
						</c:if>
						<c:if test="${authuser.role eq 'ADMIN' }">
							<li><a href="${pageContext.servletContext.contextPath }/admin">관리자 페이지</a><li>
						</c:if>
						<li>${authuser.name }님 안녕하세요 ^^;</li>
					</c:otherwise>
				</c:choose>
			</ul>
		</div>