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
	전공 :
	<select name="classname" onselect ="test(this.form)" >
		<option value="computer">컴퓨터공학과</option>
		<option value="english">영문학과</option>
		<option value="math">수학</option>
		<option value="social">사회</option>
	</select>
</table>

<table>
	<tr>
		<td>과목코드</td>
		<td>과목명</td>
		<td>교수코드</td>
		<td>과목해설</td>
	</tr>

	<tr>
		<c:forEach var = "ttt" items = "${list}">
		<td>${ttt.sub_code }</td> <td>${ttt.sub_name }</td> <td>${ttt.pro_code }</td>
		<td><input type="button" value="조회" OnClick="openConfirmid(this.form)"></td>
	</tr>
	</c:forEach>
		</form>
</table>































