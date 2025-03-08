<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP List Employee Records</title>
</head>
<body>
    <sql:setDataSource
        var="myDS"
        driver="oracle.jdbc.driver.OracleDriver"
        url="jdbc:oracle:thin:@localhost:1521/FREE"
        user="C##NIROOP"
        password="niroop8305"
    />
    
<sql:query var="listEmps"   dataSource="${myDS}">
        SELECT * FROM EMP
    </sql:query>
        
      <div align="center">
        <table border="1" cellpadding="5">
            <caption><h2>List of Employees</h2></caption>
            <tr>
                <th>EmpNo</th>
                <th>EmpName</th>
                <th>EmpSalary</th>
                            </tr>
            <c:forEach var="e" items="${listEmps.rows}">
                <tr>
                    <td><c:out value="${e.empno}" /></td>
                    <td><c:out value="${e.ename}" /></td>
                    <td><c:out value="${e.sal}" /></td>
                </tr>
            </c:forEach>
        </table>
    </div>
</body>
</html>
