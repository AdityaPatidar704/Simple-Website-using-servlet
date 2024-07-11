<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login...</title>
    <link rel="icon" href="../Images/favicon.ico">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="style1.css">
    <style>
        body{
    background:url("https://cms1.ipsacademy.net/images/iesblurr.jpg");
    background-size:cover;
    background-attachment: fixed;
    background-position:center center;
    background-repeat: no-repeat;
}
.logo{
    display: flex;
    justify-content: center;
    margin-top: 4em;
}
#login_display{
    position: relative;
    display: flex;
    justify-content: center;
    margin-top: 100px;
}
.right{
    position: absolute;
    border-radius: 50%;
    width: 40px;
    height: 40px;
    top: 40%;
    margin-left:18em;
    transform: rotate(0deg);
    transition: 2s;
}
.right:hover{
    transform: rotate(360deg);
    transition: 2s;
    background-color:green;
}
    </style>
</head>
<body class="container-fluid" onload="bodyload()">
    <div class="logo">
        <img src="	https://cms1.ipsacademy.net/images/logoies.png" alt="">
    </div>
    <form action="Login1" id="login_display">
        <dl class="main bg-light-subtle opacity-75 p-5">
            <dt class="form-text">Computer Code</dt>
            <dl><input type="text" onkeyup="load()" id="code" class="form-control" name="Ccode"></dl>
            <dt class="form-text">Password</dt>
            <dl><input type="text" id="password" disabled class="form-control" name="Password"></dl>
        </dl>
        <button id="btn1" disabled class="btn btn-primary right"><i class="fa-solid fa-chevron-right"></i></button>
    </form>
</body>
<script>
    function load(){
        var code=document.getElementById("code").value;
        if(code)
        {
            document.getElementById("password").disabled=false;
            if(document.getElementById("password"))
            {
                document.getElementById("btn1").disabled=false;
            }
        }
    }
</script>
</html>