<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
hello <%=request.getSession().getAttribute("username")%>
<a href="logout.do">注销</a>
<form action="update.do" method="post">

<input type="hidden" name="username" value="<%=request.getSession().getAttribute("username")%>" >
用户名：<input type="text" name="newusername">
密码：<input type="text" name="password">
邮箱：<input type="text" name="email">
<input type="submit" value="更新">
</form>
<form action="delete.do" method="post">
<input type="hidden" name="username" value="<%=request.getSession().getAttribute("username")%>" >
<input type="submit" value="删除">

</form>

</body>
</html>