<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<h2>��ϱ� ����</h2>
<br />
�й� :${sessionScope.memId}
<br />
2015�� ${dto.term }
<br />
���� �ݾ�:${dto.money }
<br />
<c:if test="${dto.checkmoney==0 }">
	<!-- �̳��� -->
	�̳���
</c:if>
<c:if test="${dto.checkmoney==1 }">
	<!-- �̳��� -->
	����
</c:if>

<br />
<br />
<br />
���ΰ���:1123123123
<br />
