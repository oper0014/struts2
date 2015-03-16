<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<h1> 학생성적조회 </h1>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
  
     
    <h1>이수구분<h1>${dto.ssection}</br>
     <font>과목코드</font>${dto.gnumber}<br>
     <font>과목</font>${dto.sname }<br>
     <font>학점</font>${dto.average}<br>
     <font>등급</font>${dto.grade}
   
   

 