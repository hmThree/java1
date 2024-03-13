<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
	 
	 
	 *{	 
		 padding:0px;
		 margin:0px;
	 }
	 
	 ul{
	     /*전체 크기*/
		 width: 1060px;
		 
		 /* li 옆으로 */
		 display: flex;
		 /* 다음줄에 나올 수 있도록*/
		 flex-wrap: wrap;
		 
		 /* 가운데*/
		 margin:0 auto;
		 border:1px solid red;
		 list-style: none;
	 }
	 
	 ul > li{
	 	border:1px solid black;
	 	width:500px;  /* 점정보 너비 */
	 	display: flex;
	 	font-size: 12px;
	 	box-sizing: border-box;
	 	
	 	 
	 	margin-top:30px;   /*  */
	 	margin-left: 30px;
	 }
	 
	 .info_wrap{
	 	padding:10px;
	 	margin-top:30px;
	 }
</style>
</head>
<body>

 <!--  전체 영역 ul -->
 <!--  가로 1060px, 한 줄에 li가 2개 나올 수 있도록 구성 -->

 

	<ul class="wrap">	
	<!--   -->	
	
		<li>
			<div class="img_wrap">
				 <img src="../imgs/amsa.jpeg"></div>
			<div class="info_wrap"> 
				<p>어린이대공원역점</p>
				<p>서울 광진구 광나루로 369 두산위브파크 1층</p>
				<p>02-467-2919</p>
			</div>
		</li>
		
		
		
		<li>
			<div class="img_wrap">
				 <img src="../imgs/amsa.jpeg"></div>
			<div class="info_wrap"> 
				<p>어린이대공원역점</p>
				<p>서울 광진구 광나루로 369 두산위브파크 1층</p>
				<p>02-467-2919</p>
			</div>
		</li>
		
			<li>
			<div class="img_wrap">
				 <img src="../imgs/amsa.jpeg"></div>
			<div class="info_wrap"> 
				<p>어린이대공원역점</p>
				<p>서울 광진구 광나루로 369 두산위브파크 1층</p>
				<p>02-467-2919</p>
			</div>
		</li>
		
		
			<li>
			<div class="img_wrap">
				 <img src="../imgs/amsa.jpeg"></div>
			<div class="info_wrap"> 
				<p>어린이대공원역점</p>
				<p>서울 광진구 광나루로 369 두산위브파크 1층</p>
				<p>02-467-2919</p>
			</div>
		</li>
	</ul>

 
</body>
</html>