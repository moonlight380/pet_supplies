<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>    
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

    <div class="form-group" >
		    <label for="contents">Contents:</label>
		<textarea rows="5" cols="" class="form-control" id="contents" name="contents">${vo.contents}</textarea>
	</div>
    </form>
</div>  
      	
     <div class="container"> 	
      	<!-- 이미지가 여러개 이므로 반복문 -->	
      	<label for="files">Files:</label>	
	 	<c:forEach items="${vo.productFileVOs}" var="file">
			 <div>
			 <img alt="" src="../resources/upload/${file.fileName}">
			 <p>${file.oriName}<i id="${file.fileNum}" title="${file.board}" class='fas fa-paw remove fileDelete' style='font-size:24px'></i></p>
			
			</div> 
		</c:forEach>

    <input type="button" id="add" class="btn btn-info" value="AddFile">
		<div id="file">
		
		</div>

     <input type="submit" id="btn" class="btn btn-default" value="Write">
	</div>


<!-- 썸머노트경로를 준다. -->
<script type="text/javascript" src="../resources/script/productForm.js"> </script>  
	<script type="text/javascript">
		$("#contents").summernote('code', '${vo.contents}');
		/* 1. 컨트롤러에서 사이즈 받아오기 */
		var size = ${size};
		/* 2. EL로 VOs에서 직접 사이즈 가져오기 */
		size = ${vo.productFileVOs.size()};
		/* 3. fn함수 중에 length 이용 */
		/* /*fn:length(list): JSP EL 에서 list 객체의 수를 얻기 위해 size()로 부르면 was 에러*/ */
		size = ${fn:length(vo.productFileVOs)};

		count = count+size;
		
		$(".fileDelete").click(function() {
			
			var check = confirm("정말 지울 거냐??");
			
			if(check){
				var s = $(this);
				
				$.post("../boardFile/fileDelete", {fileNum:$(this).attr("id"), board:$(this).attr("title")}, function(data) {
					//키없이 값만 오면 trim 할 필요가 없다.
					//data.trim()>0
					if(data>0){
						s.parent().remove();
						count--;
					}else {
						alert("File Delete Fail");
					}
				} );
			}
		});
	</script>
</body>
</html>