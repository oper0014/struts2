<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<html>
<head>
<title>�ȳ��ϼ���</title>
</head>
<body>
	<script language=javascript>
		function login_submit() {
			if (document.login.id.value == "") {
				alert('ȸ�� ID�� �Է��ϼ���')
				document.login.id.focus()
				return false
			}
			if (document.login.pw.value == "") {
				alert('��й�ȣ�� �Է��ϼ���')
				document.login.pw.focus()
				return false
			}
			document.login.submit()
		}
	</script>
	<table border=0 cellspacing=1 cellpadding=4 width=300 bgcolor=#4a4a4a>
		<tr>
			<td width=400 align=center bgcolor=white>
				<form name=login method=post action="/struts2/main.action"
					onSubmit="javascript: return login_submit()">
					<table border=0 cellspacing=1 cellpadding=3 width=280>
						<tr>
							<td colspan=2>�α���ȭ��</td>
						</tr>
						<tr>
							<td width=80 align=right>ȸ��ID</td>
							<td width=100><input type=text name=id size=16></td>
						</tr>
						<tr>
							<td width=80 align=right>��й�ȣ</td>
							<td width=100><input type=password name=pw size=16></td>
						</tr>
						<tr>
							<td colspan=2 align=center><input type=button value="�α���"
								onClick="javascript:login_submit()"></td>
						</tr>
					</table>
				</form>
			</td>
		</tr>
	</table>

</body>
</html>