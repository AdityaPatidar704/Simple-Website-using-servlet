<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard....</title>
    <link rel="icon" href="../Images/favicon.ico">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"
        integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <script>
       
//        function bodyload() {
//            var dt = new Date();
//            var hour = dt.getHours();
//            var min = dt.getMinutes();
//            var sec = dt.getSeconds();
//            if (hour > 12) {
//                
//                var a = "PM"
//            }
//            else {
//                var a = "AM"
//            }
//            document.getElementById("date_time").innerHTML = hour + "-" + min + "-" + sec + " " + a;
//            setInterval(bodyload, 1000);
//        }
    function call(){
        var x=document.getElementById("get");
        x.classList.toggle('active');
    }
        function tar(name)
        {   var col=document.getElementById("menu");
            col.className="collapse";
//            col.className="navbar-collapse collapse";
            var iframe=document.querySelector("iframe");
            iframe.src=name+".jsp";
            window.scrollTo(0,0);
        }
    </script>
    <style>
        body{
    background-color: rgba(189, 187, 187, 0.534);
}
.header{
    padding: 8px;
    background-color:white;
}
#menu{
    background-color:rgb(43, 43, 132);
    color: white;
}
.nav{
    overflow: scroll;  
}
.nav-item{
    margin: 20px;
}
.fa-solid{
    margin-right: 10px;
}
.fa-solid:hover{
    color: orange;
}
.nav-link{
    color:white;
    cursor: pointer;
}
   .navigation{
    display: flex;
    justify-content: space-between;
    flex-wrap: wrap;
    padding: 10px;
    background-color: white;
   }
   .combine-1{
    display: flex;
   }
   .combine{
    display: flex;
   }
   .combine .border-2,.t{
    margin: auto 0px;
    margin-right: 20px;
    color:rgb(43, 43, 132);
   }
   .combine div:nth-child(2){
    margin: auto 4px;
    position: relative;
    color: red;
    bottom: 10px;
    font-weight: bolder;
   }
   .combine>div:nth-child(2)::before{
    content: "Student";
    position:absolute;
    top: 70%;
    color: black;
   }
     a:hover{
    color:orange !important;
   }
   @media screen and (max-width:700px) {
    .navigation{
        display: block;
    }
    .combine{
        display: flex;
        justify-content: space-evenly;
        margin-top: 20px;
    }
    .combine .border-2{
/*        margin-left: 10px;*/
    }
    

    }
    .set{
        width:250px;
    }
    .navigation{
        position: sticky;
        top:0px;
        z-index:1;
    } 
    .connect span{
        background-color: white;
        padding: 20px;
        display: inline-block;
        position: fixed;
        bottom: 0px;
        text-decoration: none;
        cursor: pointer;
        text-align: center;
        width: 100vw;
        z-index: -1;
        /* left: 200px; */
    }
    .connect a{
       text-decoration: none;
       color: red;
    }
    .me{
        position: absolute;
        display: none;
    }
    .active{
        background-color: white;
        width:200px;
        top:96px;
        height: 50px;
        display: block;
        transition: 2s;
        transform: translateX(20px);
    }
    .active p{
        margin-top: 10px;
    }
    </style>
</head>

<body>
    <div class="navigation">
        <div class="combine-1">
        <div class="navbar">
            <button class="navbar-toggler" data-bs-toggle="collapse" data-bs-target="#menu">
                <span class="navbar-toggler-icon "></span>
            </button>
        </div>
        <div class="img">
            <img src="https://cms1.ipsacademy.net/images/calogo.png">
        </div>
    </div>
        <div class="combine">
            <!--<div class=" border-2 border-start " id="date_time"></div>-->
            <div class="t">
                <a onclick="call()" class="border-2 border-start nav-link" id="dis"><i class="fa-solid fa-calendar-days"></i>2023-2024(Jan-June)</a>
                <sub id="get" class="me"><p>Session</p>
                </sub>
            </div>
            <div class="name">
                Aditya Patidar<i class="fa-solid fa-chevron-down"></i>
            </div>
        </div>
    </div>
    <div class="">
        <div class="position-absolute">
            <div class="navbar-collapse show " id="menu">
                <ul class="nav flex-column">
                    <li class="nav-item "><i class="fa-solid fa-user"></i><a  name="Always"  onclick="tar(this.name)" class="nav-link d-inline ">Dashboard</a></li>
                    <li class="nav-item "><i class="fa-solid fa-graduation-cap"></i><a name="ExamFrom" data-bs-toggle="collapse" data-bs-target="#menu" onclick="tar(this.name)" class="nav-link d-inline">Exam
                        Form</a></li>
                    <li class="nav-item "><i class="fa-solid fa-clipboard"></i><a name="ViewReport" data-bs-toggle="collapse" data-bs-target="#menu" onclick="tar(this.name)" class="nav-link d-inline">View
                        Report</a></li>
                    <li class="nav-item "><i class="fa-solid fa-user"></i><a name="Mst" data-bs-toggle="collapse" data-bs-target="#menu" onclick="tar(this.name)" class="nav-link d-inline">MST</a></li>
                    <li class="nav-item "><i class="fa-solid fa-pencil"></i><a name="Attendance" data-bs-toggle="collapse" data-bs-target="#menu" onclick="tar(this.name)" class="nav-link d-inline">Attendance</a>
                         <div class="dropdown d-inline-block">
                            <button class="btn dropdown-toggle text-white" data-bs-target="#drop" data-bs-toggle="dropdown"></button>
                            <ul class="dropdown-menu border-0 " style="background-color: rgb(43, 43, 132);" id="drop">
                                <li class="dropdown-item" style="background-color: rgb(43, 43, 132);">
                                    <a href="" class="dropdown-item-text text-decoration-none text-white">Class Attendance</a></li>
                                    <li class="dropdown-item"  style="background-color: rgb(43, 43, 132);">
                                    <a href="" class="dropdown-item-text text-decoration-none text-white">My Attendance</a>
                                </li>
                            </ul>
                        </div>  
                    </li>
                    <li class="nav-item "><i class="fa-regular fa-solid fa-rectangle-list"></i><a name="Assignments" data-bs-toggle="collapse" data-bs-target="#menu"
                            class="nav-link d-inline" onclick="tar(this.name)" >Assignments</a></li>
                    <li class="nav-item "><i class="fa-solid fa-list-check"></i><a name="Feddback" data-bs-toggle="collapse" data-bs-target="#menu" onclick="tar(this.name)" class="nav-link d-inline">Fedback</a>
                    </li>
                    <li class="nav-item "><i class="fa-solid fa-bars-progress"></i><a name="NbaSurvey" data-bs-toggle="collapse" data-bs-target="#menu" onclick="tar(this.name)" class="nav-link d-inline">NBA
                        Survey</a></li>
                    <li class="nav-item "><i class="fa-solid fa-comment"></i><a name="FacultyFedback" data-bs-toggle="collapse" data-bs-target="#menu" onclick="tar(this.name)" class="nav-link d-inline">Faculty
                        Fedback</a></li>
                    <li class="nav-item "><i class="fa-solid fa-file"></i><a name="OnlineExam" data-bs-toggle="collapse" data-bs-target="#menu" onclick="tar(this.name)" class="nav-link d-inline">Online Exam</a>
                    </li>
                    <li class="nav-item "><i class="fa-solid fa-user-plus"></i><a name="ApplyOnline" data-bs-toggle="collapse" data-bs-target="#menu" onclick="tar(this.name)" class="nav-link d-inline">Apply
                        Online</a></li>
                </ul>
            </div>
        </div>
        <div class="col-12 content_always"><iframe src="Always.jsp" width="100%" height="668px" frameborder="0"></iframe></div>
        <div class="connect"><span><a href="https://www.ipsacademy.org/">© Clone-Cms Inspired By: IPS Academy,Institute of Engineering & Science Indore (M.P.)</a></span></div>
</body>
</html>