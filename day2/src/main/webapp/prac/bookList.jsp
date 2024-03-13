<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>    
<%@ page import="java.util.ArrayList" %>
<%@ page import="day2.Book" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>

  table{
  	width:500px;
  	border:1px solid black;
  	border-collapse: collapse;
  }
  
  td{
   border:1px solid black;
   text-align: center;
  }

</style>
</head>
<body> 
 
<%
ArrayList<Book>   list = new ArrayList<>();
list.add( new Book( "고구려1", "김진명", 15000)  );
list.add( new Book( "고구려2", "김진명", 14000)  );
list.add( new Book( "고구려3", "김진명", 15000)  );
%>
<table>
   <tr>
      <td>책제목</td>
      <td>저자</td>
      <td>가격</td>
   </tr>
  <% for( int i=0; i < list.size(); i++){  
            Book b  = list.get(i);
     %>
    <tr>
      <td> <%=b.getTitle()%></td>
      <td> <%=b.getAuthor()%></td>    
      <td> <%=b.getPrice()%></td>
   </tr>
   <% 
    }
   %>  

</table>
</body>
</html>