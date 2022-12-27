  <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 <style>
 	th{
 		text-align: center;
 	}
 </style>
<div id="add-group-modal" class="modal" tabindex="-1">
	  <div class="modal-dialog modal-lg">
	    <div class="modal-content">
	      <div class="modal-header">
	        <h5 id="log-app-id" class="modal-title">그룹 추가</h5>
	        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
	      </div>
	      <div class="modal-body">
	      	<h6>그룹 등록</h6>
	      	<table class="table table-bordered align-middle bg-white">
				<tr>
					<th>그룹명</th>
					<td style="width: 80%;">
						<input class="form-control" type="text">
					</td>
				</tr>
				<tr>
					<th>그룹설명</th>
					<td>
						<input class="form-control"  type="text">
					</td>
				</tr>
				<tr>
					<th>호스트명</th>
					<td>
						<input class="form-control"  type="text">
					</td>
				</tr>
				<tr>
					<th>IP</th>
					<td>
						<input class="form-control"  type="text">
					</td>
				</tr>
				<tr>
					<th>주기설정</th>
					<td>
						<input class="form-check-input" type="radio" name="cycle" id="cycle-date" checked>
						<label style="font-size: 14px; vertical-align: text-bottom; color: darkblue;" for="cycle-date">일자 반복</label>
						<div style="margin-bottom: 15px;">
							<select class="form-select ib width-20per" id="cron-box">
								<option value="day">매일</option>
								<option value="week">매주</option>
								<option value="month">매월</option>
							</select>
							<!-- <input id="option-week" type="text" placeholder="요일을 입력하세요 ex)월"> -->
							<select class="form-select ib width-20per" id="option-week">
								<option>월요일</option>
								<option>화요일</option>
								<option>수요일</option>
								<option>목요일</option>
								<option>금요일</option>
								<option>토요일</option>
								<option>일요일</option>
							</select>
						<input class="form-control ib width-40per" id="option-month" type="text" placeholder="일자를 입력하세요 ex)17">
						<input class="form-control ib width-30per" type="time"><br>
						</div>
								
						<input class="form-check-input" type="radio" name="cycle" id="cycle-time">
						<label style="font-size: 14px;vertical-align: text-bottom; color: darkblue;" for="cycle-time">시간 반복</label>
						<div id="add-time-box" style="margin-bottom: 15px;">			
							<input class="form-check-input align-baseline" type="radio" name="time" id="hour" disabled>
						    <label class="form-check-label" for="hour">
						     시
						    </label>
							<input class="form-check-input align-baseline" type="radio" name="time" id="min" disabled>
						    <label class="form-check-label" for="min">
						     분
						    </label>
						    <input class="form-check-input align-baseline" type="radio" name="time" id="sec" disabled>
						    <label class="form-check-label" for="sec">
						     초
						    </label>
							<input class="form-control ib width-40per" type="text" placeholder="반복할 시간을 입력해주세요" disabled>
						</div>
						
						<input class="form-check-input" type="radio" name="cycle" id="cycle-cron">
						<label style="font-size: 14px; vertical-align: text-bottom; color: darkblue;" for="cycle-cron">크론 표현식</label>
						<div id="add-time-box">	
							<input class="form-control ib width-50per" type="text" placeholder="ex) 0/5 * * * * ?" disabled>		
						</div>
					</td>
				</tr>
			</table>
			
			<h6>프로그램 등록</h6>
			<table class="table table-bordered align-middle bg-white">
				<tr>
					<th>프로그램명</th>
					<td>
						<input class="form-control" type="text">
					</td>
				</tr>
				<tr>
					<th>파일경로</th>
					<td>
						<input class="form-control" type="file">
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