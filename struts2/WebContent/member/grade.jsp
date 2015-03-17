<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 <h1> 학생성적조회 1학기 </h1>
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
      <caption>학생 성적 조회</caption>
      <thead>
        <tr>
        <th>이수구분</th>
          <th>과목코드</th>
          <th>과목</th>
          <th>학점</th>
          <th>등급</th>
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
   
   

 