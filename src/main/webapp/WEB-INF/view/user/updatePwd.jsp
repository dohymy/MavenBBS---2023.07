<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
	<%@ include file="../common/head.jspf" %>
	<style>
		td, th	{ text-align: center; }
		.disabled-link	{ pointer-events: none; }
	</style>
</head>
<body>
	<%@ include file="../common/top.jspf" %>
	
    <div class="container" style="margin-top: 80px;">
        <div class="row">
        	<%@ include file="../common/aside.jspf" %>
        
        	<!-- ======================== main ======================== -->
        	<div class="col-sm-9">
        		<h3><strong>패스워드 수정</strong></h3>
        		<hr>
				<div class="row">
        			<div class="col-3"></div>
        			<div class="col-6">
        				<form action="/bbs/user/updatePwd" method="post" enctype="multipart/form-data">
	               			<input type="hidden" name="uid" value="${user.uid}">
	               			<input type="hidden" name="pwd" value="${user.pwd}">
	               			<input type="hidden" name="pwd2" value="${user.pwd2}">
	               			<table class="table table-borderless">
	               				<tr>
			                        <td><label class="col-form-label">변경할 패스워드</label></td>
			                        <td><input type="password" name="pwd" class="form-control" value="${user.pwd}"></td>
			                    </tr>
			                    <tr>
			                        <td><label class="col-form-label">변경할 패스워드 확인</label></td>
			                        <td><input type="password" name="pwd2" class="form-control" value="${user.pwd2}"></td>
			                    </tr>
			                    
			                    <tr>
			                        <td colspan="2" style="text-align: center;">
			                            <input class="btn btn-primary" type="submit" value="제출">
			                            <input class="btn btn-secondary" type="reset" value="취소">
			                        </td>
	                    		</tr>
	               			</table>
               			</form>
        			</div>
        			<div class="col-3"></div>
        		</div>
        	</div>
        </div>
    </div>
	
	<%@ include file="../common/bottom.jspf" %>
</body>
</html>