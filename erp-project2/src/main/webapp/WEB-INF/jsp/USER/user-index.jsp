<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>인사관리 인덱스</title>
<link rel="canonical" href="https://getbootstrap.com/docs/5.0/examples/dashboard/">
<link type="text/css" rel="stylesheet" href="<c:url value='/css/bootstrap/bootstrap.min.css'/>"/>
<link type="text/css" rel="stylesheet" href="<c:url value='/css/USER/index.css'/>"/>
</head>
<body>
	<jsp:include page="../HRM/main-index.jsp" flush="true"/>
	<div class="container-fluid">
  	  <div class="row">
		<nav id="sidebarMenu" class="col-md-3 col-lg-2 d-md-block bg-light sidebar collapse">
	      <div class="position-sticky pt-3">
	      	<h6 class="sidebar-heading d-flex justify-content-between align-items-center px-3 mt-4 mb-1 text-muted">
		          <span>인사관리</span>
		    </h6>
	        <ul class="nav flex-column">
	          <li class="nav-item">
	            <a class="nav-link" href="user-inquiry.do">
	              <span data-feather="users"></span>
	              인사조회
	            </a>
	          </li>
	          <li class="nav-item">
	            <a class="nav-link" href="user-personal-record.do">
	              <span data-feather="info"></span>
	              인사카드
	            </a>
	          </li>
	          <li class="nav-item">
	            <a class="nav-link" href="user-registration.do">
	              <span data-feather="user-plus"></span>
	              사원 신규 등록
	            </a>
	          </li>
	          <li class="nav-item">
	            <a class="nav-link" href="user-PA-inquiry.do">
	              <span data-feather="search"></span>
	              인사 발령 조회
	            </a>
	          </li>
	          <li class="nav-item">
	            <a class="nav-link" href="user-PA-registration.do">
	              <span data-feather="folder-plus"></span>
	              인사 발령 등록
	            </a>
	          </li>
	        </ul>
	        <ul class="nav flex-column mb-2">
	          <li class="nav-item">
	            <a class="nav-link" href="user-department.do">
	              <span data-feather="home"></span>
	              부서관리
	            </a>
	          </li>
	          <li class="nav-item">
	            <a class="nav-link" href="user-position.do">
	              <span data-feather="award"></span>
	              직급관리
	            </a>
	          </li>
	        </ul>
	      </div>
	    </nav>
	  </div>
	 </div>
	<script src="<c:url value='/js/bootstrap/bootstrap.bundle.min.js'/>"></script>
	<script
      src="https://cdn.jsdelivr.net/npm/feather-icons@4.28.0/dist/feather.min.js"
      integrity="sha384-uO3SXW5IuS1ZpFPKugNNWqTZRRglnUJK6UAZ/gxOX80nxEkN9NcGZTftn6RzhGWE"
      crossorigin="anonymous"
    ></script>
    <script
      src="https://cdn.jsdelivr.net/npm/chart.js@2.9.4/dist/Chart.min.js"
      integrity="sha384-zNy6FEbO50N+Cg5wap8IKA4M/ZnLJgzc6w2NqACZaK0u0FXfOWRRJOnQtpZun8ha"
      crossorigin="anonymous"
    ></script>
    <script src="<c:url value='/js/dashboard.js'/>"></script>
</body>
</html>