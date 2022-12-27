<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<style>
	tr{
		height: 50px;
	}
	.log-select-box{
	   display: inline-block !important;
 	   width: 130px !important;
 	   height: 38px !important;
	}
	tr, td, th{
		text-align: center;
	}
</style>
<script>
	const dummy = `Whitelabel Error Page
		This application has no explicit mapping for /error, so you are seeing this as a fallback.

		Tue Dec 27 14:06:29 KST 2022
		There was an unexpected error (type=Not Found, status=404).
		No message available`;

	function errorLog(){
		alert(dummy);
	}
</script>
<body>
<%@ include file="/WEB-INF/views/common/header.jsp" %>
	<div class="header d-flex align-items-center bg-white" style="padding-left: 40px;">
		<span class="content-title" style="font-size: 25px;">그룹 로그</span>
	</div>
	<section class="main">
		<div style="width: 80%; margin: 100px auto;">
			<nav class="navbar navbar-light bg-light">
			  <div class="container-fluid">
			  	<a class="navbar-brand fw-bold">그룹 로그</a>
				<form class="d-flex">
					<span style="line-height: 40px; margin: 0 10px;">배치시작시간 : </span>
					<input type="date">
					<span style="line-height: 40px; margin: 0 10px;">~</span>				
					<input type="date" style="margin-right: 20px;">				
					<select class="form-select form-select-sm" style="width: 100px">
						<option selected>-결과-</option>
						<option>전체</option>
						<option>실행중</option>
						<option>성공</option>
						<option>실패</option>
					</select>
					<select class="form-select form-select-sm" style="width: 100px;">
						<option selected>-구분-</option>
						<option>그룹ID</option>
						<option>그룹명</option>
					</select>
				    <input class="form-control me-2" type="search" placeholder="검색어를 입력하세요."style="width: 200px; margin-left: 5px">
				    <button class="btn btn-outline-primary" type="submit">Search</button>
				</form>
			  </div>
			</nav>
			<table class="table table-borderless align-middle bg-white">
				<tr>
					<th style="width: 10%">로그ID</th>
					<th style="width: 10%">그룹ID</th>
					<th style="width: 10%">그룹명</th>
					<th style="width: 10%">결과</th>
 					<th style="width: 25%">배치시작시간</th>
					<th style="width: 25%">배치종료시간</th>
					<th style="width: 10%">재실행</th>
				</tr>
				<tr>
					<td data-bs-toggle="modal" data-bs-target="#group-log-detail-modal">GRL00001</td>
					<td data-bs-toggle="modal" data-bs-target="#group-log-detail-modal">BGR00001</td>
					<td data-bs-toggle="modal" data-bs-target="#group-log-detail-modal">테스트그룹1</td>
					<td>실행중</td>
					<td>2022-12-26 00:00:00</td>
					<td>-</td>
					<td></td>
				</tr>
				<tr>
					<td>GRL00002</td>
					<td>BGR00001</td>
					<td>테스트그룹1</td>
					<td>성공</td>
					<td>2022-12-25 00:00:00</td>
					<td>2022-12-25 00:00:10</td>
					<td></td>
				</tr>
				<tr>
					<td>GRL00003</td>
					<td>BGR00001</td>
					<td>테스트그룹1</td>
					<td>성공</td>
					<td>2022-12-24 00:00:00</td>
					<td>2022-12-24 00:00:10</td>
					<td></td>
				</tr>
				<tr>
					<td>GRL00004</td>
					<td>BGR00001</td>
					<td>테스트그룹1</td>
					<td>성공</td>
					<td>2022-12-23 00:00:00</td>
					<td>2022-12-23 00:00:10</td>
					<td></td>
				</tr>
				<tr>
					<td>GRL00005</td>
					<td>BGR00001</td>
					<td>테스트그룹1</td>
					<td>성공</td>
					<td>2022-12-22 00:00:00</td>
					<td>2022-12-22 00:00:10</td>
					<td></td>
				</tr>
				<tr>
					<td>GRL00006</td>
					<td>BGR00001</td>
					<td>테스트그룹1</td>
					<td>성공</td>
					<td>2022-12-21 00:00:00</td>
					<td>2022-12-21 00:00:10</td>
					<td></td>
				</tr>
				<tr>
					<td>GRL00007</td>
					<td>BGR00001</td>
					<td>테스트그룹1</td>
					<td>성공</td>
					<td>2022-12-20 00:00:00</td>
					<td>2022-12-20 00:00:10</td>
					<td></td>
				</tr>
				<tr>
					<td>GRL00008</td>
					<td>BGR00001</td>
					<td>테스트그룹1</td>
					<td>성공</td>
					<td>2022-12-19 00:00:00</td>
					<td>2022-12-19 00:00:10</td>
					<td></td>
				</tr>
				<tr>
					<td>GRL00009</td>
					<td>BGR00001</td>
					<td>테스트그룹1</td>
					<td>실패</td>
					<td>2022-12-18 00:00:00</td>
					<td>2022-12-18 00:00:10</td>
					<td>
						<button class="btn btn-outline-danger btn-sm" type="submit"  
							data-bs-toggle="modal" data-bs-target="#restart-modal">Restart</button>
					</td>
				</tr>
				<tr>
					<td>GRL00010</td>
					<td>BGR00001</td>
					<td>테스트그룹1</td>
					<td>성공</td>
					<td>2022-12-17 00:00:00</td>
					<td>2022-12-17 00:00:10</td>
					<td>
					</td>
				</tr>
			</table>
			<nav aria-label="...">
			  <ul class="pagination pagination-sm justify-content-center">
			    <li class="page-item disabled">
			      <a class="page-link" href="#" tabindex="-1" aria-disabled="true"><<</a>
			    </li>
			    <li class="page-item active"><a class="page-link" href="#">1</a></li>
			    <li class="page-item" aria-current="page">
			      <a class="page-link" href="#">2</a>
			    </li>
			    <li class="page-item"><a class="page-link" href="#">3</a></li>
			    <li class="page-item">
			      <a class="page-link" href="#">>></a>
			    </li>
			  </ul>
			</nav>
		</div>
	</section>
<%@ include file="/WEB-INF/views/common/footer.jsp" %>
<%@ include file="/WEB-INF/views/modal/groupLogRestartModal.jsp" %>
<%@ include file="/WEB-INF/views/modal/groupLogDetailModal.jsp" %>
</body>
</html>