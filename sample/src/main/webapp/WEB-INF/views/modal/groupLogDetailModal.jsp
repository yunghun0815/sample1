  <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div id="group-log-detail-modal" class="modal" tabindex="-1">
	  <div class="modal-dialog modal-lg">
	    <div class="modal-content">
	      <div class="modal-header">
	        <h5 id="log-app-id" class="modal-title">GRL00001 로그</h5>
	        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
	      </div>
	      <div class="modal-body">
	      	<div style="margin-bottom: 10px;">
	      		<h5>그룹로그</h5>
	      	</div>
	      	<table class="table table-borderless align-middle bg-white">
				<tr>
					<th style="width: 10%">그룹ID</th>
					<th style="width: 10%">그룹명</th>
					<th style="width: 10%">결과</th>
 					<th style="width: 25%">배치시작시간</th>
					<th style="width: 25%">배치종료시간</th>
				</tr>
				<tr>
					<td>BGR00001</td>
					<td>테스트그룹1</td>
					<td>실패</td>
					<td>2022-12-26 00:00:00</td>
					<td>2022-12-26 00:00:10</td>
				</tr>
			</table>
			<div style="margin: 30px 0 10px;">
	      		<h5>하위 프로그램 결과</h5>
	      	</div>
	      	<table class="table table-borderless align-middle bg-white">
				<tr>
					<th style="width: 10%">로그ID</th>
					<th style="width: 10%">프로그램ID</th>
					<th style="width: 10%">결과</th>
					<th style="width: 15%">에러메세지</th>
					<th style="width: 10%">파라미터</th>
 					<th style="width: 22%">배치시작시간</th>
					<th style="width: 22%">배치종료시간</th>
				</tr>
				<tr>
					<td>PGL00010</td>
					<td>BPG00001</td>
					<td>성공</td>
					<td></td>
					<td></td>
					<td>2022-12-26 00:00:00</td>
					<td>2022-12-26 00:00:05</td>
				</tr>
				<tr>
					<td>PGL00009</td>
					<td>BPG00002</td>
					<td>재실행</td>
					<td onclick="errorLog()" style="cursor: pointer; text-decoration: underline;">확인하기</td>
					<td></td>
					<td>2022-12-26 00:00:05</td>
					<td>2022-12-26 00:00:10</td>
				</tr>
			</table>
			<div style="margin: 30px 0 10px;">
	      		<h5>재실행 결과</h5>
	      	</div>
	      	<table class="table table-borderless align-middle bg-white">
				<tr>
					<th style="width: 10%">로그ID</th>
					<th style="width: 10%">프로그램ID</th>
					<th style="width: 10%">결과</th>
					<th style="width: 15%">에러메세지</th>
					<th style="width: 10%">파라미터</th>
 					<th style="width: 22%">배치시작시간</th>
					<th style="width: 22%">배치종료시간</th>
				</tr>
				<tr>
					<td>PGL00009</td>
					<td>BPG00002</td>
					<td>성공</td>
					<td></td>
					<td>2022-12-26</td>
					<td>2022-12-27 00:09:05</td>
					<td>2022-12-27 00:09:10</td>
				</tr>
			</table>
	      </div>
	    </div>
	  </div>
</div>