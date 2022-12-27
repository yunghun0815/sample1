<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<body>
<%@ include file="/WEB-INF/views/common/header.jsp" %>
<script>
	$(function(){
		$("#option-week").hide();
		$("#option-month").hide();
		
		$("input[name='cycle']").change(function(){
			$(this).parent().find("input, select").attr("disabled", "disabled");
			$("input[name='cycle']").removeAttr("disabled");
			$(this).next().next().find("input, select").removeAttr("disabled");
		});
				
		$("#cron-box").change(function(){
			const option = $(this).val();
			
			if(option == 'week'){
				$("#option-week").show();
				$("#option-month").hide();		
			}else if(option == 'month'){
				$("#option-week").hide();
				$("#option-month").show();
			}else{
				$("#option-week").hide();
				$("#option-month").hide();		
			}
		});
		
		$("#delete-button").click(function(){
			window.confirm('정말 삭제하시겠습니까?');
		});
	});
</script>
<style>
	.form-switch .form-check-input{
		width: 3em;
		cursor: pointer;
	}
	.form-check-input{
		height: 1.5em;
	}
	.group-table tr td:nth-child(8) {
	    display: flex;
	    justify-content: center;
	    padding-left: 15px;
	}
	.play-icon{
		width: 27px;
	}
</style>
	<div class="header d-flex align-items-center bg-white" style="padding-left: 40px;">
		<span class="content-title" style="font-size: 25px;">배치 관리</span>
	</div>
	<section class="main">
		<div style="width: 80%; margin: 50px auto;">
			<h1 class="text-end">
				<button class="btn btn-success btn-sm" data-bs-toggle="modal" data-bs-target="#add-group-modal">Add</button>
			</h1>
			<nav class="navbar navbar-light bg-light">
			  <div class="container-fluid">
			  	<a class="navbar-brand fw-bold">배치 그룹</a>
				<form class="d-flex">
					<select class="form-select form-select-sm">
						<option selected>-선택하세요-</option>
						<option>그룹ID</option>
						<option>그룹명</option>
					</select>
				    <input class="form-control me-2" type="search" placeholder="검색어를 입력하세요."style="width: 200px; margin-left: 5px">
				    <button class="btn btn-outline-primary" type="submit">Search</button>
				</form>
			  </div>
			</nav>
			<table class="group-table table table-borderless align-middle bg-white">
				<tr>
					<th>그룹ID</th>
					<th>그룹명</th>
					<th>그룹설명</th>
					<th>호스트명</th>
					<th>IP</th>
					<th>주기</th>
					<th class="text-center">자동실행</th>
					<th class="text-center button-td">실행/중지</th>
					<th class="text-center button-td">상세보기</th>
					<th class="text-center button-td">삭제하기</th>
				</tr>
				<tr>
					<td>BGR00001</td>
					<td>테스트그룹1</td>
					<td>오늘 날짜 마감처리</td>
					<td>테스트서버</td>
					<td>localhost</td>
					<td>매일 00시00분</td>
					<td class="text-center">N</td>
					<td class="text-center">
						<div class="form-check form-switch">
						  <input class="form-check-input" type="checkbox" id="flexSwitchCheckChecked" checked="checked">
						</div>
					</td>
					<td class="text-center">
						<img class="icon" src="/image/common/detail-button.png">
					</td>
					<td class="text-center">
						<img id="delete-button" class="icon" src="/image/common/delete-button.png">
					</td>
				</tr>
				<tr>
					<td>BGR00002</td>
					<td>테스트그룹2</td>
					<td>이번 달 마감처리</td>
					<td>테스트서버2</td>
					<td>localhost</td>
					<td>매월 1일 00시00분</td>
					<td class="text-center">N</td>
					<td class="text-center">
						<div class="form-check form-switch">
						  <input class="form-check-input" type="checkbox" id="flexSwitchCheckChecked">
						</div>
					</td>
					<td class="text-center">
						<img class="icon" src="/image/common/detail-button.png">
					</td>
					<td class="text-center">
						<img id="delete-button" class="icon" src="/image/common/delete-button.png">
					</td>
				</tr>
				<tr>
					<td>BGR00003</td>
					<td>테스트그룹3</td>
					<td>테스트그룹입니다</td>
					<td>테스트서버3</td>
					<td>localhost</td>
					<td>매월 1일 00시00분</td>
					<td class="text-center">N</td>
					<td class="text-center">
						<div class="form-check form-switch">
						  <input class="form-check-input" type="checkbox" id="flexSwitchCheckChecked">
						</div>
					</td>
					<td class="text-center">
						<img class="icon" src="/image/common/detail-button.png">
					</td>
					<td class="text-center">
						<img class="icon" src="/image/common/delete-button.png">
					</td>
				</tr>
				<tr>
					<td>BGR00004</td>
					<td>테스트그룹4</td>
					<td>테스트그룹입니다</td>
					<td>테스트서버4</td>
					<td>localhost</td>
					<td>매월 1일 00시00분</td>
					<td class="text-center">N</td>
					<td class="text-center">
						<div class="form-check form-switch">
						  <input class="form-check-input" type="checkbox" id="flexSwitchCheckChecked">
						</div>
					</td>
					<td class="text-center">
						<img class="icon" src="/image/common/detail-button.png">
					</td>
					<td class="text-center">
						<img class="icon" src="/image/common/delete-button.png">
					</td>
				</tr>
				<tr>
					<td>BGR00005</td>
					<td>테스트그룹5</td>
					<td>테스트그룹입니다</td>
					<td>테스트서버5</td>
					<td>localhost</td>
					<td>매월 1일 00시00분</td>
					<td class="text-center">N</td>
					<td class="text-center">
						<div class="form-check form-switch">
						  <input class="form-check-input" type="checkbox" id="flexSwitchCheckChecked">
						</div>
					</td>
					<td class="text-center">
						<img class="icon" src="/image/common/detail-button.png">
					</td>
					<td class="text-center">
						<img class="icon" src="/image/common/delete-button.png">
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
		<div style="width: 80%; margin: 50px auto;">
			<h1 class="text-end">
				<button class="btn btn-success btn-sm"
				 data-bs-toggle="modal" data-bs-target="#add-program-modal">Add</button>
			</h1>
			<nav class="navbar navbar-light bg-light">
			  <div class="container-fluid">
			  	<a class="navbar-brand fw-bold">배치 프로그램</a>
				<form class="d-flex">
					<select class="form-select form-select-sm">
						<option selected>-선택하세요-</option>
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
					<th>그룹ID</th>
					<th>프로그램ID</th>
					<th>프로그램명</th>
					<th>파일경로</th>
					<th class="text-center">실행순서</th>
					<th class="text-center button-td">수동실행</th>
					<th class="text-center button-td">상세보기</th>
					<th class="text-center button-td">삭제하기</th>
				</tr>
				<tr>
					<td>BGR00001</td>
					<td>BPG00001</td>
					<td>정산1</td>
					<td>C:\dev\batch-agent\test-app1.bat</td>
					<td class="text-center">1</td>
					<td class="text-center">
						<img class="play-icon" src="/image/common/play-button.png">
					</td>
					<td class="text-center">
						<img class="icon" src="/image/common/detail-button.png">
					</td>
					<td class="text-center">
						<img class="icon" src="/image/common/delete-button.png">
					</td>
				</tr>
				<tr>
					<td>BGR00001</td>
					<td>BPG00002</td>
					<td>정산2</td>
					<td>C:\dev\batch-agent\test-app2.jar</td>
					<td class="text-center">2</td>
					<td class="text-center">
						<img class="play-icon" src="/image/common/play-button.png">
					</td>
					<td class="text-center">
						<img class="icon" src="/image/common/detail-button.png">
					</td>
					<td class="text-center">
						<img class="icon" src="/image/common/delete-button.png">
					</td>
				</tr>
				<tr>
					<td>BGR00002</td>
					<td>BPG00003</td>
					<td>테스트파일1</td>
					<td>C:\dev\batch-agent\batch1.jar</td>
					<td class="text-center">1</td>
					<td class="text-center">
						<img class="play-icon" src="/image/common/play-button.png">
					</td>
					<td class="text-center">
						<img class="icon" src="/image/common/detail-button.png">
					</td>
					<td class="text-center">
						<img class="icon" src="/image/common/delete-button.png">
					</td>
				</tr>
				<tr>
					<td>BGR00002</td>
					<td>BPG00004</td>
					<td>테스트파일2</td>
					<td>C:\dev\batch-agent\batch2.jar</td>
					<td class="text-center">2</td>
					<td class="text-center">
						<img class="play-icon" src="/image/common/play-button.png">
					</td>
					<td class="text-center">
						<img class="icon" src="/image/common/detail-button.png">
					</td>
					<td class="text-center">
						<img class="icon" src="/image/common/delete-button.png">
					</td>
				</tr>
				<tr>
					<td>BGR00002</td>
					<td>BPG00005</td>
					<td>테스트파일3</td>
					<td>C:\dev\batch-agent\batch3.jar</td>
					<td class="text-center">3</td>
					<td class="text-center">
						<img class="play-icon" src="/image/common/play-button.png">
					</td>
					<td class="text-center">
						<img class="icon" src="/image/common/detail-button.png">
					</td>
					<td class="text-center">
						<img class="icon" src="/image/common/delete-button.png">
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
<%@ include file="/WEB-INF/views/modal/addGroupModal.jsp" %>
<%@ include file="/WEB-INF/views/modal/addProgramModal.jsp" %>
</body>
</html>