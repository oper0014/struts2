<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<h1> 학생성적조회 </h1>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
   <c:if test="${sessionScope.memId !=null }"> 
       <h1>test git updae</h1>
       <h2>test update good?</h2>
       
       <h1>맥북으로 이클립스 git 업데이트 </h1>
    <font>이수구분: </font>${dto.ssection}<br>
    <font>과목코드: </font>${dto.gnumber}<br>
     <font>과목: </font>${dto.sname }<br>
     <font>학점: </font>${dto.average}<br>
     <font>등급: </font>${dto.grade}
     
     </c:if>
   
   

 