<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<title>배치 관리 시스템</title>
		<script src="https://code.jquery.com/jquery-3.6.2.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" ></script>
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet">

		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/common.css"/>
	</head>
	<body>
		<div class="d-flex flex-column vh-100">
			<div class="flex-grow-1 container-fluid">
				<div class="row h-100">
					<div class="col-md-2 p-3 snb">
						<div class="h-100 d-flex flex-column">
							<div class="flex-grow-1" style="height: 0px; overflow-y: auto; overflow-x: hidden;">
								<%@ include file="/WEB-INF/views/common/menu.jsp" %>
							</div>
						</div>
					</div>
	
					<div class="col-md-10" style="padding: 0;">
						<div class=" h-100 d-flex flex-column">
							<div class="flex-grow-1 overflow-auto pr-3 bg-eee" style="height: 0px">