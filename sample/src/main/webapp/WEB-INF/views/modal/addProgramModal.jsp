  <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 <style>
 	th{
 		text-align: center;
 	}
 </style>
<div id="add-program-modal" class="modal" tabindex="-1">
	  <div class="modal-dialog modal-lg">
	    <div class="modal-content">
	      <div class="modal-header">
	        <h5 id="log-app-id" class="modal-title">프로그램 추가</h5>
	        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
	      </div>
	      <div class="modal-body">
	      	<table class="table table-bordered align-middle bg-white">
				<tr>
					<th>그룹ID</th>
					<td style="width: 80%;">
						<select class="form-select">
							<option>BGR00001</option>
							<option>BGR00002</option>
							<option>BGR00003</option>
							<option>BGR00004</option>
							<option>BGR00005</option>
							<option>BGR00006</option>
						</select>
					</td>
				</tr>
				<tr>
					<th>프로그램명</th>
					<td>
						<input class="form-control"  type="text">
					</td>
				</tr>
				<tr>
					<th>파일경로</th>
					<td>
						<input class="form-control"  type="file">
					</td>
				</tr>
			</table>
	      </div>
	      <div class="modal-footer">
	      	<button class="btn btn-primary">등록</button>
	      </div>
	    </div>
	  </div>
</div>