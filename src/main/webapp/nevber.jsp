<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>Library Management System</title>
  <link rel="stylesheet" href="homStyle.css" />
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous" />
</head>

<body>
<%
String userName = (String) session.getAttribute("userName");

%>

  <div class="container">
    <!-- <a class="navbar-brand" href="#"><h3>Books Bank!</h3></a> -->
  </div>

  <!-- Navbar -->
  <!-- navbar-expand-lg bg-body-tertiary -->
  <!-- navbar-nav-scroll -->
  
  
  <nav class="navbar navbar-expand-lg fixed-top bg-body-primary bg-dark-subtle">
    <div class="container-fluid">
      <a class="navbar-brand" href="#">
        <img src="./img/logo.png" alt="Logo" width="30" height="24" class="d-inline-block align-text-top" />
        Books Bank
      </a>

      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
        aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse text-dec" id="navbarSupportedContent">
        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
          <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="#">Home</a>
          </li>
          <li class="nav-item">
            <a class="nav-link active" href="/">About us</a>
          </li>
          <li class="nav-item dropdown active">
            <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
              books
            </a>
            <ul class="dropdown-menu">
              <li><a class="dropdown-item" href="#">Java</a></li>
              <li><a class="dropdown-item" href="#">C++</a></li>
              <li><a class="dropdown-item" href="#">C</a></li>
              <li><a class="dropdown-item" href="#">C#</a></li>
              <li><a class="dropdown-item" href="#">SQL</a></li>
              <li><a class="dropdown-item" href="#">Python</a></li>
              <li>
                <hr class="dropdown-divider" />
              </li>
              <li>
                <a class="dropdown-item" href="/target">Please search</a>
              </li>
            </ul>
          </li>
          <li class="nav-item">
            <a class="nav-link active" href="####">contact us</a>
          </li>
        </ul>
        <div class="d-flex flex-row" >
        <div >
        <form  role="search" class=" d-flex flex-row">
          <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search" />
          <button class="btn btn-outline-success" type="submit">
            Search
          </button>
        </form>
        </div>
        <div class="mx-3">

		<%
		if(userName != null){
			%>
			<div class="d-flex flex-row space justify-content-between" style="width: 200px;">
		<p> <%= userName.split("@")[0] %></p>
		<form>
		<button class="btn btn-secondary" ><a href ="Logout">Logout</a></button>
		</form>
		</div>
		<%
		}
		else {
			%>
			

        <div class="dropdown d-flex flex-row">
        <div>
            <button class="btn btn-secondary dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
              Login
            </button>
            <ul class="dropdown-menu">
             
                 <li><a href="login.jsp"> <button class="dropdown-item" type="button" >Login</button></a></li>
             
                <li><a href ="admin.jsp"><button class="dropdown-item" type="button" >Admin Login</button></a></li>
             
             
            </ul>
          </div>
        
        <button class="btn btn-danger mx-1">SignUp</button>
        <%
			}
		%>
		</div>
      </div>
      </div>
    </div>

  </nav>
  
  <style>
    nav .text-dec{
   font-size: large;
   font-weight:600;
   font-stretch: condensed;
 }
  </style>


      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN"
        crossorigin="anonymous"></script>
</body>

</html>