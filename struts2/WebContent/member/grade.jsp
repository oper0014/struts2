<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 <h1> �л�������ȸ </h1>
   <c:if test="${sessionScope.memId !=null }"> 
   
    <font>�̼�����: </font>${dto.ssection}<br>
    <font>�����ڵ�: </font>${dto.gnumber}<br>
     <font>����: </font>${dto.sname }<br>
     <font>����: </font>${dto.average}<br>
     <font>���: </font>${dto.grade}
     
     </c:if>
   
   

 