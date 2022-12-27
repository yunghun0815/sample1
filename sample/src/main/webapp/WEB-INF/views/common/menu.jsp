<%@ page contentType="text/html; charset=UTF-8"%>
<script>
	$(function(){
		const thisContent = $(".content-title").html();
		
		$(".nav a").each(function(){
			const obj = $(this);
			if(obj.html() == thisContent){
				obj.removeClass("text-white");
				obj.css("color", "#f8d461");
				
				if(obj.closest("ol").length != 0){
					obj.closest("ol").closest("li").find(".triangle").removeClass("rotate180");
				}
				obj.closest('ol').toggle();
			}
		});
		
		$(".show-sub-menu").click(function(){
			$(this).find(".triangle").toggleClass("rotate180");
			$(this).next().toggle();
		});
	});
</script>
<style>
	    .header img{
    	    width: 56px;
		    position: relative;
		    /* top: -17px; */
		    left: 7px;
		}
		.header p{
		    display: inline-block;
		    margin-left: 13px;
		    font-size: 0.8em;
		    font-weight: bold;
		}
		.header p span{
		color: white;
		}
</style>
<div class="header padding-20" style="padding-top: 6px;">
 	<img src="/image/menu/logo.png">
 	<p style="display: inline-block;">
	 	<span>Batch</span>
	 	<span>Management</span>
	 	<span>Worker</span>
 	</p>
</div>
<ul class="nav flex-column">
	<li class="nav-item mb-2">
		<h6 class="text-white">
			<img class="icon" src="/image/menu/batch-group.png">
			<a class="text-white fs-5  align-bottom" href="/batch/management">배치 관리</a>
		</h6>
	</li>	
	<li class="nav-item mb-2">
		<h6 class="text-white show-sub-menu">
			<img class="icon" src="/image/menu/log.png" style="position: relative; left: 2px;">
			<span class="text-white fs-5 align-bottom" >로그 관리</span>
			<img class="triangle rotate180" src="/image/menu/triangle.png">
		</h6>
		<ol class="sub-menu">
			<li class="nav-item mb-2">
				<a class="text-white" href="/log/group">그룹 로그</a>
			</li>
			<li class="nav-item mb-2">
				<a class="text-white" href="/log/program">프로그램 로그</a>
			</li>
		</ol>
	</li>	
</ul>