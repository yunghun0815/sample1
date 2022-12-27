<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
	.program-detail tr td:first-child {
		text-align: center;
	}
</style>
<div id="update-batch-app" class="modal" tabindex="-1">
	  <div class="modal-dialog modal-lg">
	    <div class="modal-content">
	      <div class="modal-header">
	        <h5 class="modal-title">배치프로그램 상세보기</h5>
	        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
	      </div>
	      <form action="" method="POST" class="inactive">
	      <div class="modal-body">
	            <div style="margin: 30px 0 10px;">
	      		    <h5>프로그램 상세정보</h5>
	      	    </div>
	      	    
	      		<table class="program-detail table table-bordered align-middle bg-white" style="width: 100%;">
	      		    <tr>
	      				<td style="width:20%;">
	      					<strong>그룹ID</strong>
	      				</td>
	      				<td>
	      					<input class="onlyread form-control" type="text" value="BGP0001" readonly>			
	      				</td>
	      			</tr>
	      			<tr>
	      				<td>
	      					<strong>프로그램ID</strong>
	      				</td>
	      				<td>
	      					<input class="onlyread form-control" type="text" value="BPG0001" readonly>    					
	      				</td>
	      			</tr>
	      			<tr>
	      				<td>
	      					<strong>프로그램명</strong>
	      				</td>
	      				<td>
	      					<input class="readwrite form-control" type="text" value="테스트프로그램1" readonly>    					
	      				</td>
	      			</tr>
					<tr>
	      				<td>
	      					<strong>프로그램 파일 경로</strong>
	      				</td>
	      				<td class="file form-control">
	      					C:\dev\batch-agent\test-app2.jar
	      				</td>
	      			</tr>		
	      			<tr>
	      				<td>
	      					<strong>파라미터 유무</strong>
	      				</td>
	      				<td class="readwrite">
	      					<select class="form-control">
	      					  <option disabled="disabled" value="Y" selected>Y</option>
	      					  <option disabled="disabled" value="N">N</option>
	      					</select>
	      				</td>
	      			</tr>
	      			<tr>
	      				<td>
	      					<strong>파라미터 설명</strong>
	      				</td>
	      				<td>
	      				  	<input class="readwrite form-control" type="textarea" value="'YYYY-MM-DD'형식으로 기재"  readonly>
	      				</td>
	      			</tr>
	      			
	      		</table>
	      		<br>
	      </div>
	      <div class="modal-footer">
	        <button type="button" onclick="appModify(this)" class="btn btn-secondary">수정</button>
	        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">삭제</button>
	        <button type="button" class="btn btn-primary" data-bs-dismiss="modal">목록</button>
	      </div></form>
	    </div>
	  </div>
</div>