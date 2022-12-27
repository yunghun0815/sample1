<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div id="update-batch-group" class="modal" tabindex="-1">
	  <div class="modal-dialog modal-lg">
	  
	    <div class="modal-content">
	      <div class="modal-header">
	        <h5 class="modal-title">배치그룹 상세보기</h5>
	        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
	      </div>
	      <div class="modal-body">
	      		<table class="table table-bordered align-middle bg-white" style="width: 100%;" id="sortable">
	      			<tr>
	      				<td colspan="2">
	      					<h3>그룹 상세내용</h3>
	      				</td>
	      			</tr>
	      			<tr>
	      				<td>
	      					<strong>그룹ID</strong>
	      				</td>
	      				<td>
	      					BGP0001    					
	      				</td>
	      			</tr>
	      			<tr>
	      				<td>
	      					<strong>그룹명</strong>
	      				</td>
	      				<td>
	      					테스트그룹1    					
	      				</td>
	      			</tr>
					<tr>
	      				<td>
	      					<strong>그룹 설명</strong>
	      				</td>
	      				<td>
	      					오늘 날짜 마감처리			
	      				</td>
	      			</tr>		
	      			<tr>
	      				<td>
	      					<strong>호스트명</strong>
	      				</td>
	      				<td>
	      					master			
	      				</td>
	      			</tr>
	      			<tr>
	      				<td>
	      					<strong>IP</strong>
	      				</td>
	      				<td>
	      				  	localhost
	      				</td>
	      			</tr>
	      			<tr>
	      				<td>
	      					<strong>주기</strong>
	      				</td>
	      				<td>
	      				  	매일 00시 00분				
	      				</td>
	      			</tr>
	      			<tr>
	      				<td>
	      					<strong>자동실행</strong>
	      				</td>
	      				<td>
	      				  	Y				
	      				</td>
	      			</tr>
	      			<tr>
	      				<td>
	      					<strong>실행 시작날짜</strong>
	      				</td>
	      				<td>
	      				  	2022년 12월 25일 12:25:00	
	      				</td>
	      			</tr>
	      			<tr>
	      				<td>
	      					<strong>실행 종료날짜</strong>
	      				</td>
	      				<td>
	      				  	9999년 00월 00일 00:00:00		
	      				</td>
	      			</tr>
	      		</table>
	      		<br>
	      		<table style="width:100%;">
	      		    <tr>
	      				<td colspan="2">
	      					<h3>프로그램 목록</h3>
	      				</td>
	      			</tr>
	      			<tr>
	      				<td>
	      					<strong>프로그램ID</strong>
	      				</td>
	      				<td>
	      					<strong>프로그램명</strong>
	      				</td>
	      				<td>
	      					<strong>파일경로</strong>
	      				</td>
	      				<td>
	      					<strong>파라미터</strong>
	      				</td>
	      				<td>
	      					<strong>순서</strong>
	      				</td>
	      			</tr>
	      			<tr>
	      				<td>
	      					BPG0001
	      				</td>
	      				<td>
	      					정산1
	      				</td>
	      				<td>
	      					C:\dev\batch-agent\test-app1.bat
	      				</td>
	      				<td>
	      					Y
	      				</td>
	      				<td>
	      					1
	      				</td>
	      			</tr>
	      			<tr>
	      				<td>
	      					BPG0002
	      				</td>
	      				<td>
	      					정산2
	      				</td>
	      				<td>
	      					C:\dev\batch-agent\test-app1.bat
	      				</td>
	      				<td>
	      					N
	      				</td>
	      				<td>
	      					2
	      				</td>
	      			</tr>
	      			<tr>
	      				<td>
	      					BPG0003
	      				</td>
	      				<td>
	      					정산3
	      				</td>
	      				<td>
	      					C:\dev\batch-agent\test-app1.bat
	      				</td>
	      				<td>
	      					N
	      				</td>
	      				<td>
	      					3
	      				</td>
	      			</tr>
	      		</table>
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">수정</button>
	        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">삭제<button>
	        <button type="button" class="btn btn-primary">목록</button>
	      </div>
	    </div>
	  </div>
</div>