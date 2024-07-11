<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="icon" href="../Images/favicon.ico">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"
        integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
        <style>
            div{
                background-color: white;
                padding: 40px;
            }
            div:nth-child(1){
                
                display: flex;
            }
            div:nth-child(1) h5{
                margin-left: 100px;
                font-weight: bolder;
            }
            div button{
                margin-left: 260px;
            }
            div:nth-child(1) select{
                width: 700px;
                margin-left: 50px;
            }
            @media screen and (max-width:1087px){
                div:nth-child(1){
                    display: block;
                }
                div:nth-child(1) h5{
                margin-left: 10px;
                font-weight: bolder;
            }
            div:nth-child(1) select{
                width: 200px;
                margin-left: 10px;
            }   
            div button{
                margin-left: 50px;
            }
            }
        </style>
</head>
<body class="container-fluid" style="background-color: rgba(189, 187, 187, 0.534);">
    <h1 class="text-danger mt-5 ms-5">Select Report</h1>
    <br><br>
    <div class="">
        <div>
        <h5 class="">Select *</h5>
        <select name="" id="">
            <option value="">Select Selection</option>
            <option value="">Admit Card</option>
            <option value="">Exam Form Reciept</option>
            <option value="">Regular Result</option>
        </select>
    </div>
    <button class="btn btn-primary">Submit</button>
</div>
</body>
</html>