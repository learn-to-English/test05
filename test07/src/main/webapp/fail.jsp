<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<body>
    <h2 style="color: red">登录失败</h2>
    <p>${msg}</p>
    <a href="${pageContext.request.contextPath}/login">返回重试</a>
</body>
</html>