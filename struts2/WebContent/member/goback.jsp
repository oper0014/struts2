<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>
<script language="JavaScript">  
	function AlertBox(){
        alert("��û�� �Ϸ�Ǿ����ϴ�.");
        document.location.reload();
     return false;
	}
</script>
<h2>����/���� ��û</h2>

		�й� : ${dto.id} <br/>
		${dto.name} <br/>
		${dto.major} <br/>
		${dto.major2} <br/>
		${dto.address} <br/>
		${dto.phonenumber1} <br/> 
		${dto.phonenumber2} <br/>
		${dto.phonenumber3} <br/>
		${dto.grade} <br/>
		${dto.gender} <br/>
		${dto.mail1}@${dto.mail2} <br/>
		<c:if test="${dto.state=='1'}">
		������ <br/>
		</c:if>
		<c:if test="${dto.state=='0'}">
		������ <br/>
		</c:if>
		<br/>
<input type = "button" value = "��û" onclick="location.href='http://localhost:8000/struts2/gobackSubmit.action'"/>

