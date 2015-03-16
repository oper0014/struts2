<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
     
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 

 <html>
 <body>
	<%@include file="request_top.jsp" %> 
    
 	<table width="600" border="1" cellspacing="0" cellpadding="3" align="center" bgcolor= "#FFFF99" >
 		 		<tr> <td>과목코드</td> <td>과목이름</td> </tr>
 	 		<c:forEach var="ss" items="${list}" >
 	 			<tr>
 	 				<td>${ss.subject_num}</td>  <td> ${ss.subject_name}</td> 
 	 				<td><input type="button" value="신청" 
 	 				onClick="javascript:window.location='subject_num=${ss.subject_num}&'subject_name=${ss.subject_name}'"></td>
 	 			</tr> </br>
 	 		</c:forEach>
 	</table>
   	
 </body>
</html>

