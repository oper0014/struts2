<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
<title>������</title>
<link href="style.css" rel="stylesheet" type="text/css">
<table width="600" border="1" cellspacing="0" cellpadding="3" align="center">
    
    <tr> 
    <td colspan="2" height="39" align="center" >
       <font size="+1" ><b>�л�������ȸ</b></font></td>
   </tr>
    
    
    <tr> 
      <td width="200"> <b>�й�</b> </td>
    
      <td width="400"> <h3>${sessionScope.memId}</h3> </td> 
    </tr>  
 <tr>  
      <td width="200"> �̸�</td>
      <td width="400"> <h3>${dto.name}</h3> 
      </td>
    </tr>
   
   <tr> 
      <td width="200"><b>�а�</b></td>
      <td width="400">${dto.major}</td>
    </tr>  
    
    
    <tr> 
      <td width="200">��������</td>
      <td width="400">${dto.major2}</td>
    </tr>
    
 <tr> 
      <td width="200">������</td>
      <td width="400">${dto.minor} </td>
    </tr>
    
    <tr> 
      <td width="200">�г�</td>
      <td width="400">${dto.grade}</td>
    </tr>
   
    
    <tr> 
      <td width="200">����</td>
      <td width="400">${dto.gender }</td>
        </tr>
    
    
     <tr> 
      <td width="200">����</td>
      <td width="400">${dto.state }</td>
    </tr>
   
    
    <tr> 
      <td width="200">�޴���  </td>
      <td width="400">${dto.phonenumber1}-${dto.phonenumber2 }-${dto.phonenumber3}  </td>
    </tr> 
 
    
    <tr> 
      <td width="200">�ּ�</td>
      <td width="400">${dto.address} </td>
    </tr>
    
    
    <tr> 
      <td width="200">����</td>
      <td width="400">${dto.mail1}@${dto.mail2}</td>
    </tr>
   </table>
</body>
</html>