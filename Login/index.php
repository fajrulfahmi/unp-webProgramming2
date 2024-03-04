<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/style.css">
    <title>Login</title>
</head>
<body>
    <div class="login-box">
        <div class="login-header">
            <header>LOGIN</header>
        </div>
        <form method = "post" action="php/aksi.php">
            <div class="input-box">
                <input type="text" class="input-field" name="username" placeholder="Username" autocomplete="off" required>
            </div>
            <div class="input-box">
                <input type="password" class="input-field" name="password" placeholder="Password" autocomplete="off" required>
            </div>
            <div class="input-submit">
                <button class="submit-btn" id="submit"></button>
                <label for="submit">Submit</label>
            </div>
        </form>
    </div>
</body>
</html>