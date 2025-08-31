<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Survey Result</title>
    <link rel="stylesheet" href="styles/main.css">
    <style>
        body {
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
            background: #f4f6f9;
            margin: 0;
            padding: 0;
        }
        .container {
            max-width: 600px;
            margin: 60px auto;
            background: #fff;
            padding: 30px 40px;
            border-radius: 16px;
            box-shadow: 0 6px 20px rgba(0,0,0,0.1);
        }
        h1 {
            text-align: center;
            color: #2b6cb0;
            margin-bottom: 25px;
        }
        p {
            text-align: center;
            color: #555;
            margin-bottom: 30px;
        }
        .field {
            display: flex;
            justify-content: space-between;
            padding: 10px 0;
            border-bottom: 1px solid #eee;
        }
        .field label {
            font-weight: bold;
            color: #333;
        }
        .field span {
            color: #444;
        }
        .field:last-child {
            border-bottom: none;
        }
        .footer {
            text-align: center;
            margin-top: 30px;
        }
        .btn {
            display: inline-block;
            background: #2b6cb0;
            color: #fff;
            padding: 10px 20px;
            border-radius: 8px;
            text-decoration: none;
            transition: 0.3s;
        }
        .btn:hover {
            background: #1a4f85;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>🎉 Thank You!</h1>
        <p>Here is the information that you entered:</p>

        <div class="field">
            <label>Email:</label>
            <span>${user.email}</span>
        </div>
        <div class="field">
            <label>First Name:</label>
            <span>${user.firstName}</span>
        </div>
        <div class="field">
            <label>Last Name:</label>
            <span>${user.lastName}</span>
        </div>
        <div class="field">
            <label>Heard From:</label>
            <span>${user.heardFrom}</span>
        </div>
        <div class="field">
            <label>Updates:</label>
            <span>${user.wantsUpdates}</span>
        </div>

        <c:if test="${user.wantsUpdates=='Yes'}">
            <div class="field">
                <label>Contact Via:</label>
                <span>${user.contactVia}</span>
            </div>
        </c:if>

        <div class="footer">
            <a href="survey.html" class="btn">🔙 Take Again</a>
        </div>
    </div>
</body>
</html>
