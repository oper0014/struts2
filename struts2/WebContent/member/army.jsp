<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<h2>�������ԽŰ�</h2>
<br />
<form action="/struts2/armyform.action">
	<!-- armypro���� �Ű���� �ۼ� -->
	<c:if test="${dto2.askdate==null}">
		<input type="submit" value="�Ű��ϱ�" />
	</c:if>
</form>
<br />
<!--  
�а�: �г�: �й�:<br/>
����: �������: <br/>
<br/>
-->
<table width="1000">
	<tr>
		<td>��û����</td>
		<td>�Կ���</td>
		<td>������</td>
		<td>����</td>
		<td>ó������</td>
		<td>ó������</td>
	</tr>
	<tr>
		<td>${dto2.askdate}</td>
		<td>${dto2.join}</td>
		<td>${dto2.discharge}</td>
		<td>${dto2.armynumber}</td>

		<td>
		<c:if test="${dto2.state==null}">
    	${dto2.state}
    	</c:if> 
    	<c:if test="${dto2.state==0}">
    	��ó��
   	 	</c:if> 
   	 	<c:if test="${dto2.state==1}">
    	ó��
    	</c:if>
    	</td>

		<td>${dto2.reg_date}</td>
	</tr>
</table>
<br />

<form action="/struts2/armydel.action">
	<!-- armypro���� �Ű���� ���� -->
	<c:if test="${dto2.askdate!=null}">
		<input type="submit" value="��û���" />
	</c:if>
</form>