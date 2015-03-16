<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>

<h2>시간표 조회</h2>
<!-- 
<form action = "timeSearch.action"  method = "POST">
	<select name = "grade">
		<option value = "0">학년 선택</option>
		<option value = "1">1학년</option>
		<option value = "2">2학년</option>
		<option value = "3">3학년</option>
		<option value = "4">4학년</option>	
		</select>
			
		<select name = "classify">
			<option value = "">전공/교양</option>
			<option value = "전필">전공 필수</option>
			<option value = "전선">전공 선택</option>
			<option value = "교필">교양 필수</option>
			<option value = "교선">교양 선택</option>
			<option value = "일선">일반 선택</option>	
		</select>
		<input type = "submit" value = "search"/>
</form>
 -->
<table border = "1px" width = "900px" align = "center">
	<tr>
		<td>학수번호</td>
		<td>학년</td>
		<td>전공</td>
		<td>교과목명</td>
		<td>담당교수</td>
		<td>강의시간</td>
		<td>강의실</td>
		<td>이수구분</td>
		<td>학점</td>
	</tr>
	
	<c:forEach var = "dto" items = "${list}">
	<tr>
		<td>${dto.subnum}</td>
		<td>${dto.grade}</td>
		<td>${dto.major}</td>
		<td>${dto.subject}</td>
		<td>${dto.professor}</td>
		<td>${dto.subtime}</td>
		<td>${dto.subroom}</td>
		<td>${dto.classify}</td>
		<td>${dto.scorecount}</td>
		<td><input type = "button" value = "신청"/></td>
		
	</tr>
	</c:forEach>
</table>



