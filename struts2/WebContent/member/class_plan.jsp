<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="/struts-tags" %>

<script language="JavaScript">

	
	function openConfirmid(userinput) {
		
		url = "confirmplan.action?id=java" 
	
		open(url,"confirm","toolbar=no, location=no,status=no,menubar=no,scrollbars=no,resizable=no,width=500, height=300");
	}
	function test(form){
		window.location="ClassPlan.action?classname="+form.classname.value;
		
	}
</script>

<table>
<form method="post" action="inputPro.action" name="userinput" >
	���� :
	<select name="classname" onselect ="test(this.form)" >
		<option value="computer">��ǻ�Ͱ��а�</option>
		<option value="english">�����а�</option>
		<option value="math">����</option>
		<option value="social">��ȸ</option>
	</select>
</table>

<table>
	<tr>
		<td>�����ڵ�</td>
		<td>�����</td>
		<td>�����ڵ�</td>
		<td>�����ؼ�</td>
	</tr>

	<tr>
		<c:forEach var = "ttt" items = "${list}">
		<td>${ttt.sub_code }</td> <td>${ttt.sub_name }</td> <td>${ttt.pro_code }</td>
		<td><input type="button" value="��ȸ" OnClick="openConfirmid(this.form)"></td>
	</tr>
	</c:forEach>
		</form>
</table>































