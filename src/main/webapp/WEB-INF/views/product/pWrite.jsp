<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../template/boot.jsp"></c:import>
<c:import url="../template/css.jsp"></c:import>
<c:import url="../template/summer.jsp"></c:import>
</head>
<body>
<c:import url="../template/header.jsp"></c:import>

<div class="container">
<form action="./${p}Write" method="post" enctype="multipart/form-data" id="frm">

    <div class="form-group">
      <label for="productName">productName:</label>
      <input type="text" class="form-control" id="productName" placeholder="Enter productName" name="productName" >
    </div>
   <div class="form-group">
      <label for="price">price :</label>
      <input type="text" class="form-control" id="price " placeholder="Enter price " name="price " >
      <!-- 밸류값을 줘서 로그인 하고 들어가야 함 -->
    </div>

   <div class="form-group" >
		    <label for="contents">Contents:</label>
		    <textarea rows="20" cols="" class="form-control" id="contents" name="contents"></textarea>
	</div> 
    
	<!-- 이 버튼을 클릭하면 파일 추가하는 버튼이 생기는 것 // 받을 때는 배열로 받음-->
		<input type="button" id="add" class="btn btn-info" value="AddFile">
		<div id="file">
			
	</div> 
	<!-- 		
	contents Server null이 될 때  위의 name에 콘텐츠가 있는 것을 뺀다.
	<input type="hidden" name="contents" id="con">
	 -->
	
	
    <input type="button" id="btn" class="btn btn-default">Submit</input>
  </form>

</div>


<!-- 썸머노트경로를 준다. -->
<script type="text/javascript" src="../resources/js/productForm.js"> </script>  

</body>
</html>
