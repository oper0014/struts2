<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 <h1> 학생성적조회 </h1>
   <c:if test="${sessionScope.memId !=null }"> 
   
    <font>이수구분: </font>${dto.ssection}<br>
    <font>과목코드: </font>${dto.gnumber}<br>
     <font>과목: </font>${dto.sname }<br>
     <font>학점: </font>${dto.average}<br>
     <font>등급: </font>${dto.grade}
     
     </c:if>
   
   

 