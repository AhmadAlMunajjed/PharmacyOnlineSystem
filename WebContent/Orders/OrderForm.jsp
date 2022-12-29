<%@ page language="java" contentType="text/html; charset=windows-1256" pageEncoding="windows-1256" %>
  <!DOCTYPE html>
  <html>

  <head>
    <meta charset="windows-1256">
    <title>Order form</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
      integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
      crossorigin="anonymous"></script>

  </head>

  <body>

    <nav class="navbar navbar-expand-lg navbar-light bg-light">
      <div class="container-fluid">
        <a class="navbar-brand" href="#">Pharmacy Online System</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
          aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav me-auto mb-2 mb-lg-0">
            <li class="nav-item">
              <a class="nav-link active" aria-current="page" href="#">Home</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="/PharmacyOnlineSystem/Products/Products.jsp">Products</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="Orders/Orders.jsp">Orders</a>
            </li>
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown"
                aria-expanded="false">
                Account
              </a>
              <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                <li><a class="dropdown-item" href="#">Profile</a></li>
                <li>
                  <hr class="dropdown-divider">
                </li>
                <li><a class="dropdown-item" href="#">Logout</a></li>
              </ul>
            </li>
            <!-- <li class="nav-item">
              <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Disabled</a>
            </li> -->
          </ul>
          <form class="d-flex">
            <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
            <button class="btn btn-outline-success" type="submit">Search</button>
          </form>
        </div>
      </div>
    </nav>

    <div class="container-fluid">
      <div class="container">
        <div class="my-3 d-flex justify-content-between">
          <h1>New Order</h1>
          <a href="Orders.jsp" class="btn btn-primary">Save</a>
        </div>


        <div class="table-responsive">
          
          <form action="">
          
            <div class="input-group flex-nowrap my-1">
              <span class="input-group-text" id="addon-wrapping">Name</span>
              <input autoFocus type="text" class="form-control" placeholder="Name" aria-label="Username" aria-describedby="addon-wrapping">
            </div>
            
            <div class="mb-3">
			  <label for="formFileSm" class="form-label">Image</label>
			  <input class="form-control form-control" id="formFileSm" type="file">
			</div>
			            
			           
            <div class="input-group flex-nowrap my-3">
              <span class="input-group-text" id="addon-wrapping">$</span>
              <input type="number" class="form-control" placeholder="Price" aria-label="Username" aria-describedby="addon-wrapping">
            </div>
            
            <div class="input-group flex-nowrap my-1">
              <span class="input-group-text" id="addon-wrapping">Stock</span>
              <input type="number" class="form-control" placeholder="Stock Quantity" aria-label="Username" aria-describedby="addon-wrapping">
            </div>
          </form>

        </div>
      </div>
    </div>

  </body>

  </html>