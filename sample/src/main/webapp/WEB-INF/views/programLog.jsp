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
	textarea{
	    -ms-overflow-style: none; /* IE and Edge */
   	 	scrollbar-width: none; /* Firefox */
	}
	textarea::-webkit-scrollbar {
    	display: none; /* Chrome, Safari, Opera*/
	}
</style>
<body>
<%@ include file="/WEB-INF/views/common/header.jsp" %>

<script>
	$(function(){
		$(".restart-btn").click(function(){
			let param = prompt("추가하실 파라미터를 입력해주세요.");
			
		});
		
		const dummy = `Whitelabel Error Page
			This application has no explicit mapping for /error, so you are seeing this as a fallback.

			Tue Dec 27 14:06:29 KST 2022
			There was an unexpected error (type=Not Found, status=404).
			No message available`;
		
		$("textarea").html(dummy);
	});
</script>
	<div class="header d-flex align-items-center bg-white" style="padding-left: 40px;">
		<span class="content-title" style="font-size: 25px;">프로그램 로그</span>
	</div>
	<section class="main">
		<div style="width: 80%; margin: 100px auto;">
			<nav class="navbar navbar-light bg-light">
			  <div class="container-fluid">
			  	<a class="navbar-brand fw-bold">프로그램 로그</a>
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
						<option>대기</option>
						<option>재실행</option>
					</select>
					<select class="form-select form-select-sm" style="width: 100px;">
						<option selected>-구분-</option>
						<option>로그ID</option>
						<option>그룹ID</option>
						<option>프로그램ID</option>
						<option>프로그램명</option>
					</select>
				    <input class="form-control me-2" type="search" placeholder="검색어를 입력하세요."style="width: 200px; margin-left: 5px">
				    <button class="btn btn-outline-primary" type="submit">Search</button>
				</form>
			  </div>
			</nav>
			<table class="table table-borderless align-middle bg-white">
				<tr>
					<th style="width: 10%">로그ID</th>
					<th style="width: 10%">프로그램ID</th>
					<th style="width: 10%">프로그램명</th>
					<th style="width: 10%">결과</th>
					<th style="width: 10%">파라미터</th>
 					<th style="width: 20%">배치시작시간</th>
					<th style="width: 20%">배치종료시간</th>
					<th style="width: 10%">재실행</th>
				</tr>
				<tr>
					<td data-bs-toggle="modal" data-bs-target="#program-log-detail-modal">PGL00010</td>
					<td data-bs-toggle="modal" data-bs-target="#program-log-detail-modal">BPG00001</td>
					<td data-bs-toggle="modal" data-bs-target="#program-log-detail-modal">정산1</td>
					<td>성공</td>
					<td></td>
					<td>2022-12-29 00:00:00</td>
					<td>2022-12-29 00:10:00</td>
					<td></td>
				</tr>
				<tr>
					<td>PGL00009</td>
					<td>BPG00001</td>
					<td>정산1</td>
					<td>성공</td>
					<td></td>
					<td>2022-12-28 00:00:00</td>
					<td>2022-12-28 00:10:00</td>
					<td></td>
				</tr>
				<tr>
					<td>PGL00008</td>
					<td>BPG00001</td>
					<td>정산1</td>
					<td>성공</td>
					<td></td>
					<td>2022-12-27 00:00:00</td>
					<td>2022-12-27 00:10:00</td>
					<td></td>
				</tr>
				<tr>
					<td>PGL00007</td>
					<td>BPG00001</td>
					<td>정산1</td>
					<td>성공</td>
					<td></td>
					<td>2022-12-26 00:00:00</td>
					<td>2022-12-26 00:10:00</td>
					<td></td>
				</tr>
				<tr>
					<td>PGL00006</td>
					<td>BPG00001</td>
					<td>정산1</td>
					<td>성공</td>
					<td></td>
					<td>2022-12-25 00:00:00</td>
					<td>2022-12-25 00:10:00</td>
					<td></td>
				</tr>
				<tr>
					<td>PGL00005</td>
					<td>BPG00002</td>
					<td>정산2</td>
					<td>성공</td>
					<td></td>
					<td>2022-12-24 00:00:00</td>
					<td>2022-12-24 00:10:00</td>
					<td></td>
				</tr>
				<tr>
					<td>PGL00004</td>
					<td>BPG00004</td>
					<td>테스트파일2</td>
					<td>성공</td>
					<td>2022-12-22</td>
					<td>2022-12-23 09:15:00</td>
					<td>2022-12-23 09:25:00</td>
					<td></td>
				</tr>
				<tr>
					<td>PGL00003</td>
					<td>BPG00003</td>
					<td>테스트파일1</td>
					<td>실패</td>
					<td></td>
					<td>2022-12-23 00:00:00</td>
					<td>2022-12-23 00:10:00</td>
					<td><button class="btn btn-outline-danger btn-sm restart-btn" type="submit">Restart</button></td>
				</tr>
				<tr>
					<td>PGL00002</td>
					<td>BPG00004</td>
					<td>테스트파일2</td>
					<td>재실행</td>
					<td></td>
					<td>2022-12-22 00:00:00</td>
					<td>2022-12-22 00:10:00</td>
					<td></td>
				</tr>
				<tr>
					<td>PGL00001</td>
					<td>BPG00005</td>
					<td>테스트파일3</td>
					<td>성공</td>
					<td></td>
					<td>2022-12-21 00:00:00</td>
					<td>2022-12-21 00:10:00</td>
					<td></td>
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
<%@ include file="/WEB-INF/views/modal/programLogDetailModal.jsp" %>
<%@ include file="/WEB-INF/views/common/footer.jsp" %>
</body>
</html>