<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 <h1> �л�������ȸ 1�б� </h1>
 <c:if test="${sessionScope.memId !=null }">
  <style>
      table {
        width: 190%;
        height:10%;
      }
      table, th, td {
        border: 2px solid #bcbcbc;
      }
    </style>
  </head>
  <body>
    <table>
      <caption>�л� ���� ��ȸ</caption>
      <thead>
        <tr>
        <th>�̼�����</th>
          <th>�����ڵ�</th>
          <th>����</th>
          <th>����</th>
          <th>���</th>
        </tr>
      </thead>
     
      <tbody>
        <tr>
          <th>${dto.ssection}</th>
          <td>${dto.gnumber}</td>
          <td>${dto.sname }</td>
          <td >${dto.average}  </td>
          <td>${dto.grade}</td>
        </tr>
          </tbody>
     </table>
  </body>
</html>
     </c:if>
   
   

 