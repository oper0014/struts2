<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>

<h2>�ð�ǥ ��ȸ</h2>
<!-- 
<form action = "timeSearch.action"  method = "POST">
	<select name = "grade">
		<option value = "0">�г� ����</option>
		<option value = "1">1�г�</option>
		<option value = "2">2�г�</option>
		<option value = "3">3�г�</option>
		<option value = "4">4�г�</option>	
		</select>
			
		<select name = "classify">
			<option value = "">����/����</option>
			<option value = "����">���� �ʼ�</option>
			<option value = "����">���� ����</option>
			<option value = "����">���� �ʼ�</option>
			<option value = "����">���� ����</option>
			<option value = "�ϼ�">�Ϲ� ����</option>	
		</select>
		<input type = "submit" value = "search"/>
</form>
 -->
<table border = "1px" width = "900px" align = "center">
	<tr>
		<td>�м���ȣ</td>
		<td>�г�</td>
		<td>����</td>
		<td>�������</td>
		<td>��米��</td>
		<td>���ǽð�</td>
		<td>���ǽ�</td>
		<td>�̼�����</td>
		<td>����</td>
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
		<td><input type = "button" value = "��û"/></td>
		
	</tr>
	</c:forEach>
</table>



