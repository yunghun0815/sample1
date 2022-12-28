<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
.program-detail tr td:first-child {
	text-align: center;
}
</style>
<div id="update-batch-group" class="modal" tabindex="-1">
	  <div class="modal-dialog modal-lg">
	  
	    <div class="modal-content">
	      <form action="" method="POST" class="inactive">
	      <div class="modal-header">
	        <h5 class="modal-title">배치그룹 상세보기</h5>
	        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
	      </div>
	      <div class="modal-body">
	            <div style="margin: 30px 0 10px;">
	      		    <h5>그룹 상세정보</h5>
	      	    </div>
	      		<table class="program-detail table table-bordered align-middle bg-white" style="width: 100%;" id="sortable">
	      			
	      			<tr>
	      				<td>
	      					<strong>그룹ID</strong>
	      				</td>
	      				<td>
	      					<input class="onlyread form-control" type="text" value="BGP0001" readonly>    					
	      				</td>
	      			</tr>
	      			<tr>
	      				<td>
	      					<strong>그룹명</strong>
	      				</td>
	      				<td>
	      					<input class="readwrite form-control" type="text" value="테스트그룹1" readonly>    					
	      				</td>
	      			</tr>
					<tr>
	      				<td>
	      					<strong>그룹 설명</strong>
	      				</td>
	      				<td>
	      					<input class="readwrite form-control" type="text" value="오늘 날짜 마감처리" readonly>			
	      				</td>
	      			</tr>		
	      			<tr>
	      				<td>
	      					<strong>호스트명</strong>
	      				</td>
	      				<td>
	      					<input class="readwrite form-control" type="text" value="master" readonly>			
	      				</td>
	      			</tr>
	      			<tr>
	      				<td>
	      					<strong>IP</strong>
	      				</td>
	      				<td>
	      				  	<input class="readwrite form-control" type="text" value="localhost" readonly>
	      				</td>
	      			</tr>
	      			<tr>
	      				<td>
	      					<strong>주기</strong>
	      				</td>
	      				<td>
	      				  	<input class="readwrite form-control" type="text" value="매일 00시 00분" readonly>				
	      				</td>
	      			</tr>
	      			<tr>
	      				<td>
	      					<strong>자동실행</strong>
	      				</td>
	      				<td style="padding-left: 21px; height: 53px; ">
	      				  	Y				
	      				</td>
	      			</tr>
	      		</table>
	      		<br>
	      		<div style="margin: 30px 0 10px;">
	      		    <h5>프로그램 목록</h5>
	      	    </div>
	      		<table class="table table-bordered align-middle bg-white" style="width:100%;">
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
	        <button type="button" class="btn btn-secondary" onclick="groupModify(this)">수정</button>
	        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">삭제</button>
	        <button type="button" class="btn btn-primary">목록</button>
	      </div></form>
	    </div>
	  </div>
</div>