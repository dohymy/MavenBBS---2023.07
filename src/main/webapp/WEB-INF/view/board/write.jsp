<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="../common/head.jspf" %>
	<style>
		td, th	{ text-align: center; }
	</style>
</head>
<body>
	<%@ include file="../common/top.jspf" %>
	
    <div class="container" style="margin-top: 80px;">
        <div class="row">
        	<%@ include file="../common/aside.jspf" %>
        
        	<!-- ======================== main ======================== -->
        	<div class="col-sm-9">
        		<h3><strong>게시글 작성</strong></h3>
        		<hr>
        		<div class = "row">
        			<div class = "col1"></div>
        			<div class = "col10">
        				<form action="/bbs/board/write" method="post" enctype="multipart/form-data">
        					<table class="table table-borderless">
        						<tr>
			                        <td style="width:10%"><label class="col-form-label">제목</label></td>
			                        <td style="width:90%"><input type="text" name="title" class="form-control"></td>
			                    </tr>
			                    <tr>
			                        <td><label class="col-form-label">내용</label></td>
			                        <td><textarea name="content" rows="10" class="form-control"></textarea></td>
			                    </tr>
			                    <tr>
			                        <td><label class="col-form-label">첨부파일</label></td>
			                        <td><input type="file" name="profile" class="form-control" multiple></td>
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
        			<div class = "col1"></div>
        		</div>
        	</div>
        </div>
     </div>
     
     <%@ include file="../common/bottom.jspf" %>
</body>
</html>