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
	<h1>${p} update</h1>
	<h1>UPDATE PAGE</h1>
 <form action="./${p}Update" method="post" enctype="multipart/form-data" id="frm">


 	<input type="hidden"  id="productNum" name="productNum" value="${vo.productNum}">
 	
    <div class="form-group">
     <label for="productName"> productName:</label>
      <input type="text" class="form-control" id="productName" placeholder="Enter productName" name="productName" value="${vo.productName}"  >
    </div>

   <div class="form-group">
      <label for="price">price:</label>
      <input type="text" class="form-control" id="price" placeholder="Enter price" name="price" value="${vo.price}">
    </div>

    <div class="form-group">
      <label for="contents">contents:</label>
      <input type="text" class="form-control" id="contents" placeholder="Enter contents" name="contents" value="${vo.contents}">
    </div>
    
    <input type="button" id="add" class="btn btn-info" value="AddFile">
		<div id="file">
		
		</div>
    

    <button type="submit" class="btn btn-default">write</button>
  </form>
</div>


<!-- 썸머노트경로를 준다. -->
<script type="text/javascript" src="../resources/js/productForm.js"> </script>  

</body>
</html>