<%@ page language="java" contentType="application/xml; charset=UTF-8" pageEncoding="UTF-8" import="java.sql.*"%><?xml version="1.0" encoding="UTF-8"?>
<root>
	<%
		String id=request.getParameter("id");
		String pw=request.getParameter("pw");
		String sql="select count(*) as cnt from guest30 where id=? and pw=?";
		String driver="oracle.jdbc.driver.OracleDriver";
		String url="jdbc:oracle:thin:@localhost:1521:xe";
		String user="scott";
		String password="tiger";
		int result=0;
		
		Connection conn=null;
		try{
			Class.forName(driver);
			conn=DriverManager.getConnection(url, user, password);
			PreparedStatement pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, pw);
			ResultSet rs=pstmt.executeQuery();
			if(rs.next()){
				result=rs.getInt("cnt");
			}
		}finally{
			conn.close();
		}
		
	%>
	<%if(result>0){ %>
		<row><id><%=id %></id><result>true</result></row>
	<%}else{ %>
		<row><id><%=id %></id><result>false</result></row>
	<%} %>
</root>




















