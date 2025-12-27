<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>系统登录</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        /* 自定义背景颜色 */
        body {
            background: linear-gradient(135deg, #f5f7fa 0%, #c3cfe2 100%);
            height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
        }
        .login-card {
            width: 100%;
            max-width: 400px;
            border: none;
            border-radius: 15px;
            box-shadow: 0 10px 20px rgba(0,0,0,0.1);
        }
        .card-header {
            background-color: transparent;
            border-bottom: none;
            text-align: center;
            padding-top: 30px;
        }
        .btn-primary {
            background-color: #4a90e2;
            border: none;
            padding: 10px;
            font-size: 16px;
            border-radius: 8px;
        }
        .btn-primary:hover {
            background-color: #357abd;
        }
    </style>
</head>
<body>

    <div class="card login-card p-3">
        <div class="card-header">
            <h3 class="mb-1">欢迎回来</h3>
            <p class="text-muted">请登录您的账户</p>
        </div>
        <div class="card-body">
            <form action="${pageContext.request.contextPath}/doLogin" method="post">
                
                <div class="mb-3">
                    <label for="username" class="form-label">用户名</label>
                    <input type="text" class="form-control" id="username" name="username" placeholder="请输入用户名" required>
                </div>

                <div class="mb-4">
                    <label for="password" class="form-label">密码</label>
                    <input type="password" class="form-control" id="password" name="password" placeholder="请输入密码" required>
                </div>

                <div class="d-grid">
                    <button type="submit" class="btn btn-primary">立即登录</button>
                </div>
            </form>
        </div>

    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>