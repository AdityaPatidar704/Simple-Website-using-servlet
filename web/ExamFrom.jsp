<%@page import="java.sql.*"%>
<%!
    Connection con;
    String  enrollement_no="";
    String examination_session="";
    String name="";
    String degree="";
    String sex="";
    String adress="";
    String state="";
    String mobile="";
    String fatherName="";
    String branch="";
    String city="";
    String pincode="";
    String addmission_year="";
%>
<%
  String id="";
    String password="";
  try{
        ServletContext sc=request.getServletContext();
        con=(Connection)sc.getAttribute("connect");
        id=(String)session.getAttribute("id");
        password=(String)session.getAttribute("password");
        String sql="select * from user where id=? and password=?";
        PreparedStatement ps=con.prepareStatement(sql);
        ps.setString(1,id);
        ps.setString(2,password);
        ResultSet rs=ps.executeQuery();
        while(rs.next())
        {
        enrollement_no=rs.getString(1);
        examination_session=rs.getString(2);
        name=rs.getString(3);
        degree=rs.getString(4);
        sex=rs.getString(5);
        adress=rs.getString(6);
        state=rs.getString(7);
        mobile=rs.getString(8);
        fatherName=rs.getString(9);
        branch=rs.getString(10);
        city=rs.getString(11);
        pincode=rs.getString(12);
        addmission_year=rs.getString(13);
    }
    }
    catch(Exception e)
    {
    
    }
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
    <link rel="stylesheet" href="style3.css">
    <style>
        .displaygrid{
    display: grid;
    grid-template-columns: 3fr 3fr;
}
.displaygrid dt{
    margin-bottom: 30px;
}
    </style>
</head>
<body class="container-fluid">
    <header class="bg-danger text-white p-2 fs-5 mt-4">* Important Notice Regarding Online Payment</header>
    <blockquote class="mt-2">1. In case your current payment transaction is showing the status as ?Transaction Pending? and the amount gets deducted from your account and Examination Form status is still showing the ?Forwarded By the Institution?. Please wait, do not re-submit your examination form or do not make another payment.
        <br>
        2. Since your Examination Fees has been deducted from your account, your examination form will be forwarded automatically to IPS Academy, Institute of Engineering and Science with an update in your account as ?Submitted? in next working day.
        <br>
        3. In case you need further support reach to your Co-ordinator.</blockquote>
        <h2 class="mt-4">Exam Form Prerequisites</h2>
        <hr>
        <div class="detail">
            <h5>Enrollment Number :<%=enrollement_no%>
                <br><br>
                Examination Session :<%=examination_session%>
                <br><br>
                Student Personal Detail</h5>
                <hr>
        </div>
        <div class="studentdetail row">
            <dl class="col displaygrid">
                <dt>Name</dt>
                <dd><%=name%></dd>
                <dt>Degree</dt>
                <dd><%=degree%></dd>
                <dt>Sex</dt>
                <dd><%=sex%></dd>
                <dt>Address</dt>
                <dd><%=adress%></dd>
                <dt>State</dt>
                <dd><%=state%></dd>
                <dt>Mobile</dt>
                <dd><%=mobile%></dd>
            </dl>
            <dl class="col displaygrid">
                <dt>Father Name</dt>
                <dd><%=fatherName%></dd>
                <dt>Branch</dt>
                <dd><%=branch%></dd>
                <dt></dt>
                <dd></dd>
                <dt>City</dt>
                <dd><%=city%></dd>
                <dt>Pin-code</dt>
                <dd><%=pincode%></dd>
                <dt>Admission Year</dt>
                <dd><%=addmission_year%></dd>
            </dl>
        </div>
        <br>
        <h5>Student Current Status</h5>
        <hr>
        <div class="Studenttable">
            <table class="table table-bordered">
                <thead class="">
                    <tr class="">
                        <th>Select</th>
                        <th>Enrollemnt Number</th>
                        <th>Status</th>
                        <th>Exam Form Status</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td></td>
                        <td><%=enrollement_no%></td>
                        <td>Regular</td>
                        <td style="color:orange;font-size:20px;text-align: center">Exam Form Not Available</td>
                    </tr>
                </tbody>
            </table>
        </div>
</body>
</html>