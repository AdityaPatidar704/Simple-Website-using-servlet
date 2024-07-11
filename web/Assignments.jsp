<%@page import="java.sql.*,java.io.*" %>

<%!
    String s_no="";
    String subject="";
    int view=0;
    Connection con;
    %>


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
            body{
                background-color:rgba(189, 187, 187, 0.534);
            }
            div{
                margin:10em auto;
            }
            .coll{
                color:orange;
                margin-left: 20px;
            }
        </style>
        
</head>
<body onload="bodyload()" class="container-fluid">
    <div class="bg-white rounded-2 p-1">
        <h1 class="coll">Home Assignment View</h1>
        <table class="table table-striped  table-bordered  table-responsive ">
            <thead>
                <tr class="">
                    <th>S.no</th>
                    <th>Subject</th>
                    <th>view</th>
                </tr>
            </thead>
            <tbody>
                <%
    
    ServletContext sc=request.getServletContext();
try{
    con=(Connection)sc.getAttribute("connect");
    String sql="select * from subject";
    PreparedStatement ps=con.prepareStatement(sql);
    ResultSet rs=ps.executeQuery();
        while(rs.next())
        {s_no=rs.getString(1);
        subject=rs.getString(2);
        view++;
        %><tr>
            <td><%=s_no%></td>
            <td><%=subject%></td>
            <td><button class="btn btn-primary">View Assignments</button></td>
                </tr>
    <%}
        }
catch(Exception e)
{
    
}%>
            
                
            </tbody>
        </table>
    </div>
</body>
</html>