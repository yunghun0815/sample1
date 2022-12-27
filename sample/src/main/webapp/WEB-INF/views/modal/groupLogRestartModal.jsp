<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div id="restart-modal" class="modal" tabindex="-1">
	  <div class="modal-dialog">
	    <div class="modal-content">
	      <div class="modal-header">
	        <h5 id="log-app-id" class="modal-title">재실행</h5>
	        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
	      </div>
	      <div class="modal-body">
	      	<div style="text-align: right; margin-bottom: 10px;">
	      		<button class="btn btn-outline-danger btn-sm">All</button>
	      		<button class="btn btn-outline-danger btn-sm">Only Fail</button>
	      	</div>
	      	<table class="table table-borderless align-middle">
	      		<tr>
	      			<th>프로그램ID</th>
	      			<th>프로그램명</th>
	      			<th>결과</th>
	      			<th>에러 메세지</th>
	      			<th>재실행</th>
	      		</tr>
	      		<tr>
					<td>BPG00001</td>
					<td>정산1</td>
					<td>성공</td>
					<td></td>
					<td></td>
	      		</tr>
	      		<tr>
					<td>BPG00002</td>
					<td>정산2</td>
					<td>실패</td>
					<td>네트워크 에러</td>
					<td><button class="btn btn-outline-danger btn-sm">Restart</button></td>
	      		</tr>
	      	</table>
	      </div>
	    </div>
	  </div>
</div>