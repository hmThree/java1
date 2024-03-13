<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <%@  page import="java.sql.*" %>    

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


 header{
 border:1px solid  black;
 padding:10px;
 
 }
 
 h2{
  /* margin:0 atuo;  적용불가 :  h2 블럭태그 , 한 줄 다 차지함 */
   background-color: red;
   text-align: center;
 }
 nav{
  border:1px solid  black;
  height: 100px;
  
  /* 
  부모 지정  
  반드시 크기(높이가 있어야 함 )
  */
  position:relative;
 
 }
 
 ul{
  list-style: none;
  border:1px solid black;  
  display: flex;
  border-bottom-color: blue;
  
  position: absolute;
  right: 0px;   /* left, right, top, bottom*/
  bottom:0px;

  
 }
 
 ul li {
   /*border:1px solid black;*/
   padding-right: 10px;
 
 }
 
 
 section{ 
  border:1px solid  black;
  padding: 20px;
  height: 600px;
 }
 
 
 footer{
  border:1px solid  black;
  /*  부모에 display: flex   footer의 자식 div가 옆으로 나온다*/
  display: flex;
 }
 
 
 footer > div {
  border:1px solid  black;
  width:33%;
  padding:10px;
 }
 
 
 table{ 
  width:400px;
  border:1px solid black;
  border-collapse: collapse;  
  margin: 0 auto;
  height: 200px;
 }
 
 td{
 border:1px solid black;
 text-align: center;
 } 
 
 a{
  text-decoration: none;
  color:black;
 }
 
 
 
 
</style>
</head>
<body>


<header> 
<h2>에이콘 학생관리 프로그램</h2>
</header>


<nav>
 <ul>
 <li> <a href="index.html">home</a></li>
 <li>학생등록</li>
 <li>학생조회</li>
 </ul>
</nav>

<section> 	
 
 
 <form name="frm" action="rAction.jsp"  method="post"> 
	 <table>
	 <caption> 에이콘 학생 등록</caption>
	 
	 <tr>
	 <td>아이디</td>
	 <td><input type="text"  name="id"></td>
	 </tr>
	  <tr>
	 <td>비밀번호</td>
	 <td><input type="text" name="pw"></td>
	 </tr>
	  <tr>
	 <td>이름</td>
	 <td><input type="text" name="name"></td>
	 </tr>
	  <tr>
	 <td  colspan="2">
	 <button type="submit">등록</button>
	 <button type="reset">취소</button>
	 </td> 
	 </tr>
	 </table>
</form>	
	

</section>

<footer>
	<div class="footer_item"> acorn</div>
	<div class="footer_item"></div>
	<div class="footer_item" >서울시 마포구</div>
</footer>




</body>
</html>