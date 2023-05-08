<%@page import="java.sql.*"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.PreparedStatement"%>
<%@ page import="java.sql.SQLException"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>서울시 공공데이터 WIFI 구하기_Delete</title>
</head>
<body>
<%

String id = request.getParameter("id");
int ID = Integer.parseInt(id);
System.out.println(id + "번 삭제완료"); //콘솔확인용

String url = "jdbc:mariadb://localhost:3306/wifi";
String dbUserId = "root";
String dbPassword = "1111";

try (Connection conn = DriverManager.getConnection(url, dbUserId, dbPassword);
PreparedStatement pstmt = conn.prepareStatement("DELETE from history where id = ?")) {
pstmt.setInt(1, ID);
pstmt.executeUpdate();

} catch (SQLException e) {
e.printStackTrace();
}

%>
	<script>
		alert("삭제가 완료되었습니다.");
		location.href='history.jsp';
		location.reroad();
	</script>
</body>
</html>
