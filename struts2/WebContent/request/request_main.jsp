<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
 <body>
	<%@include file="request_top.jsp" %> 
 	<table width="800" align="center" heigth="200">
 		<c:if test="${sessionScope.memId!=null }">
 			<tr>
 				<td align="center"> ${sessionScope.memId}�� �����ϼ̽��ϴ� </td>
 			</tr>
 		</c:if> 
 		
 		<c:if test="${sessionScope.memId==null }">
 			<tr>
 				<td align="center">�α��� ��  ����ϼ���</td>
 			</tr>
 		</c:if>   		
 	</table>
 </body>
</html>