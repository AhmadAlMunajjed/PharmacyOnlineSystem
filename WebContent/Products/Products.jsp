<%@ page language="java" contentType="text/html; charset=windows-1256" pageEncoding="windows-1256" %>
  <!DOCTYPE html>
  <html>

  <head>
    <meta charset="windows-1256">
    <title>Products list</title>

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
              <a class="nav-link" href="#">Products</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">Orders</a>
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
          <h1>Products</h1>
          <a href="ProductForm.jsp" class="btn btn-primary">Add New Product</a>
        </div>


        <div class="table-responsive">
          <table class="table table-sm table-striped">
            <thead>
              <tr>
                <th>#</th>
                <th>Image</th>
                <th>Name</th>
                <th>Price</th>
                <th>Quantity</th>
                <th style="width: 200px;">Actions</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td>1,001</td>
                <td>
                  <img style="width: 50px;height: 40px;"
                    src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAMIAAAEDCAMAAABQ/CumAAAAM1BMVEXq6uq7u7vs7Oy5ubno6Ojf39/BwcG+vr7j4+PIyMi2trbv7+/V1dXNzc3ExMTd3d3S0tIT1+ezAAAEHklEQVR4nO3ai5KkKBAFUEgoUfBR//+1mwmilo+Z7dqJNZ24Zya6u8ruCC6vAtQYAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAPgDaPnySMRFp5T4m7+7KF/hgsu/1zAOL3pcM+Ta56++H2101rqJHhZCSs/V/w5S/Myp7Eh0MUil/EmqfyPEvjaDosag3NdPGJqGRmrfbTK4br2uB02jO2NdLnsIdidfHNs8yjUgmtxnRa9FLf/drvT5dbS2VZKAM3Ath+angrNdUjK0qXW2OR8Mv+KdDUbLeGijDNGzK+ubhwFMFFzQ0ZG4+ttou239likqLyauGyd3PxWtQD53pG5T1vy2md6ylvBXEfg3eDBoaIVcxBJhK00u8sQz+vntnOuzxqUj2f+rmBekQIna/hiBmyDOU+jvItzbCrJqHoJzaR+B26V+lrn38r7fdXsdrZBG+Yw6tALJ+J6NtRkOA1dDBEN9/pQ9RPD0WiI0y/vzlmH9awURPHXnEXiWqhFck8y8kO3fLW17k4II0o9sOI1gTGPn0dCnMmiM7Bfa7aZTRQTuSBcRak9yjbziYiduMF5PcCPUaVZJhNaedyQu8otXpDF2ZeolGspatfHrGkNDBLaLsJn9eQHe923dnU1u3e2sf397BDlSGdwuAi0RZKzMU9BmgrKDrghcu/EYwWzWo56nIO5vYd3yuD7NM6uSCLJS244FWdWllL9vfqtbG4EztMuaQ0MELt3ncPaU2v7jrIt8GrYJ1gw6Ivjck2oEKus7F4dynmHKZ1q/31Q3tb9piMAh1gjSd+Qn6e91OPAcOsVdguBG2UaoicAf0B8dqRQyTqlczpf2rRBqM6mIQNJNlo7kTVOKG2w7Z/CHEyRuhRDzskNLBL/pSKlbjk1DWc99TkarKEfDGiLkLXBTIyyriFzTeWnBk9GxFWw+HXvN2//7Ixgud43wMfXEIVEqy8BTcoLEy9m7IxhJ8aoRXh+njiGOfXdVftGo6EgmL4iCROCOc3KsenrMWi8NiYf93eU3ub93pRXkHsK+21x2oxziPapoBVnqzR9oX7m79IV/fASZ/x8eQTw/wtM7kkEEFeg/RNgcytzpL4jAM9K3CZTca2Mky+uflz+v9e4ue7HdKfwI73zuLnslGY5iPH2oYb1u37zVU3LvXLYNX6gbbCV2z4PUG7PXTL6he1dxT3juEVX9qfWqnjj6DXrH+REXeYAn31qw3XI2/wjrzTWZZ5wLQ34AT8tQ/VeoqQF4Gy3VT9dPuykl96xyLxomX+qfHtUEgtohjHP159f3FucbvpzH01L5TxrKWT5sp+2683ERZk8t98ZfEOGJoxgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAOCP+gesrR0Xl9+EGgAAAABJRU5ErkJggg=="
                    alt="">
                </td>
                <td>Item name</td>
                <td>RM200</td>
                <td>30</td>
                <td>
                  <div class="btn-group" role="group" aria-label="...">
                    <button type="button" class="btn btn-outline-warning btn-sm">Edit</button>
                    <button type="button" class="btn btn-outline-danger btn-sm">Delete</button>
                    <!--                     
                      <div class="btn-group" role="group">
                        <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                          Dropdown
                          <span class="caret"></span>
                        </button>
                        <ul class="dropdown-menu">
                          <li><a href="#">Dropdown link</a></li>
                          <li><a href="#">Dropdown link</a></li>
                        </ul>
                      </div>
                    </div> -->
                </td>
              </tr>
              <tr>
                <td>1,001</td>
                <td>
                  <img style="width: 50px;height: 40px;"
                    src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAMIAAAEDCAMAAABQ/CumAAAAM1BMVEXq6uq7u7vs7Oy5ubno6Ojf39/BwcG+vr7j4+PIyMi2trbv7+/V1dXNzc3ExMTd3d3S0tIT1+ezAAAEHklEQVR4nO3ai5KkKBAFUEgoUfBR//+1mwmilo+Z7dqJNZ24Zya6u8ruCC6vAtQYAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAPgDaPnySMRFp5T4m7+7KF/hgsu/1zAOL3pcM+Ta56++H2101rqJHhZCSs/V/w5S/Myp7Eh0MUil/EmqfyPEvjaDosag3NdPGJqGRmrfbTK4br2uB02jO2NdLnsIdidfHNs8yjUgmtxnRa9FLf/drvT5dbS2VZKAM3Ath+angrNdUjK0qXW2OR8Mv+KdDUbLeGijDNGzK+ubhwFMFFzQ0ZG4+ttou239likqLyauGyd3PxWtQD53pG5T1vy2md6ylvBXEfg3eDBoaIVcxBJhK00u8sQz+vntnOuzxqUj2f+rmBekQIna/hiBmyDOU+jvItzbCrJqHoJzaR+B26V+lrn38r7fdXsdrZBG+Yw6tALJ+J6NtRkOA1dDBEN9/pQ9RPD0WiI0y/vzlmH9awURPHXnEXiWqhFck8y8kO3fLW17k4II0o9sOI1gTGPn0dCnMmiM7Bfa7aZTRQTuSBcRak9yjbziYiduMF5PcCPUaVZJhNaedyQu8otXpDF2ZeolGspatfHrGkNDBLaLsJn9eQHe923dnU1u3e2sf397BDlSGdwuAi0RZKzMU9BmgrKDrghcu/EYwWzWo56nIO5vYd3yuD7NM6uSCLJS244FWdWllL9vfqtbG4EztMuaQ0MELt3ncPaU2v7jrIt8GrYJ1gw6Ivjck2oEKus7F4dynmHKZ1q/31Q3tb9piMAh1gjSd+Qn6e91OPAcOsVdguBG2UaoicAf0B8dqRQyTqlczpf2rRBqM6mIQNJNlo7kTVOKG2w7Z/CHEyRuhRDzskNLBL/pSKlbjk1DWc99TkarKEfDGiLkLXBTIyyriFzTeWnBk9GxFWw+HXvN2//7Ixgud43wMfXEIVEqy8BTcoLEy9m7IxhJ8aoRXh+njiGOfXdVftGo6EgmL4iCROCOc3KsenrMWi8NiYf93eU3ub93pRXkHsK+21x2oxziPapoBVnqzR9oX7m79IV/fASZ/x8eQTw/wtM7kkEEFeg/RNgcytzpL4jAM9K3CZTca2Mky+uflz+v9e4ue7HdKfwI73zuLnslGY5iPH2oYb1u37zVU3LvXLYNX6gbbCV2z4PUG7PXTL6he1dxT3juEVX9qfWqnjj6DXrH+REXeYAn31qw3XI2/wjrzTWZZ5wLQ34AT8tQ/VeoqQF4Gy3VT9dPuykl96xyLxomX+qfHtUEgtohjHP159f3FucbvpzH01L5TxrKWT5sp+2683ERZk8t98ZfEOGJoxgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAOCP+gesrR0Xl9+EGgAAAABJRU5ErkJggg=="
                    alt="">
                </td>
                <td>Item name</td>
                <td>RM200</td>
                <td>30</td>
                <td>
                  <div class="btn-group" role="group" aria-label="...">
                    <button type="button" class="btn btn-outline-warning btn-sm">Edit</button>
                    <button type="button" class="btn btn-outline-danger btn-sm">Delete</button>
                    <!--                     
                      <div class="btn-group" role="group">
                        <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                          Dropdown
                          <span class="caret"></span>
                        </button>
                        <ul class="dropdown-menu">
                          <li><a href="#">Dropdown link</a></li>
                          <li><a href="#">Dropdown link</a></li>
                        </ul>
                      </div>
                    </div> -->
                </td>
              </tr>
              <tr>
                <td>1,001</td>
                <td>
                  <img style="width: 50px;height: 40px;"
                    src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAMIAAAEDCAMAAABQ/CumAAAAM1BMVEXq6uq7u7vs7Oy5ubno6Ojf39/BwcG+vr7j4+PIyMi2trbv7+/V1dXNzc3ExMTd3d3S0tIT1+ezAAAEHklEQVR4nO3ai5KkKBAFUEgoUfBR//+1mwmilo+Z7dqJNZ24Zya6u8ruCC6vAtQYAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAPgDaPnySMRFp5T4m7+7KF/hgsu/1zAOL3pcM+Ta56++H2101rqJHhZCSs/V/w5S/Myp7Eh0MUil/EmqfyPEvjaDosag3NdPGJqGRmrfbTK4br2uB02jO2NdLnsIdidfHNs8yjUgmtxnRa9FLf/drvT5dbS2VZKAM3Ath+angrNdUjK0qXW2OR8Mv+KdDUbLeGijDNGzK+ubhwFMFFzQ0ZG4+ttou239likqLyauGyd3PxWtQD53pG5T1vy2md6ylvBXEfg3eDBoaIVcxBJhK00u8sQz+vntnOuzxqUj2f+rmBekQIna/hiBmyDOU+jvItzbCrJqHoJzaR+B26V+lrn38r7fdXsdrZBG+Yw6tALJ+J6NtRkOA1dDBEN9/pQ9RPD0WiI0y/vzlmH9awURPHXnEXiWqhFck8y8kO3fLW17k4II0o9sOI1gTGPn0dCnMmiM7Bfa7aZTRQTuSBcRak9yjbziYiduMF5PcCPUaVZJhNaedyQu8otXpDF2ZeolGspatfHrGkNDBLaLsJn9eQHe923dnU1u3e2sf397BDlSGdwuAi0RZKzMU9BmgrKDrghcu/EYwWzWo56nIO5vYd3yuD7NM6uSCLJS244FWdWllL9vfqtbG4EztMuaQ0MELt3ncPaU2v7jrIt8GrYJ1gw6Ivjck2oEKus7F4dynmHKZ1q/31Q3tb9piMAh1gjSd+Qn6e91OPAcOsVdguBG2UaoicAf0B8dqRQyTqlczpf2rRBqM6mIQNJNlo7kTVOKG2w7Z/CHEyRuhRDzskNLBL/pSKlbjk1DWc99TkarKEfDGiLkLXBTIyyriFzTeWnBk9GxFWw+HXvN2//7Ixgud43wMfXEIVEqy8BTcoLEy9m7IxhJ8aoRXh+njiGOfXdVftGo6EgmL4iCROCOc3KsenrMWi8NiYf93eU3ub93pRXkHsK+21x2oxziPapoBVnqzR9oX7m79IV/fASZ/x8eQTw/wtM7kkEEFeg/RNgcytzpL4jAM9K3CZTca2Mky+uflz+v9e4ue7HdKfwI73zuLnslGY5iPH2oYb1u37zVU3LvXLYNX6gbbCV2z4PUG7PXTL6he1dxT3juEVX9qfWqnjj6DXrH+REXeYAn31qw3XI2/wjrzTWZZ5wLQ34AT8tQ/VeoqQF4Gy3VT9dPuykl96xyLxomX+qfHtUEgtohjHP159f3FucbvpzH01L5TxrKWT5sp+2683ERZk8t98ZfEOGJoxgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAOCP+gesrR0Xl9+EGgAAAABJRU5ErkJggg=="
                    alt="">
                </td>
                <td>Item name</td>
                <td>RM200</td>
                <td>30</td>
                <td>
                  <div class="btn-group" role="group" aria-label="...">
                    <button type="button" class="btn btn-outline-warning btn-sm">Edit</button>
                    <button type="button" class="btn btn-outline-danger btn-sm">Delete</button>
                    <!--         
                                
                      <div class="btn-group" role="group">
                        <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                          Dropdown
                          <span class="caret"></span>
                        </button>
                        <ul class="dropdown-menu">
                          <li><a href="#">Dropdown link</a></li>
                          <li><a href="#">Dropdown link</a></li>
                        </ul>
                      </div>
                    </div> -->
                </td>
              </tr>
              <tr>
                <td>1,001</td>
                <td>
                  <img style="width: 50px;height: 40px;"
                    src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAMIAAAEDCAMAAABQ/CumAAAAM1BMVEXq6uq7u7vs7Oy5ubno6Ojf39/BwcG+vr7j4+PIyMi2trbv7+/V1dXNzc3ExMTd3d3S0tIT1+ezAAAEHklEQVR4nO3ai5KkKBAFUEgoUfBR//+1mwmilo+Z7dqJNZ24Zya6u8ruCC6vAtQYAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAPgDaPnySMRFp5T4m7+7KF/hgsu/1zAOL3pcM+Ta56++H2101rqJHhZCSs/V/w5S/Myp7Eh0MUil/EmqfyPEvjaDosag3NdPGJqGRmrfbTK4br2uB02jO2NdLnsIdidfHNs8yjUgmtxnRa9FLf/drvT5dbS2VZKAM3Ath+angrNdUjK0qXW2OR8Mv+KdDUbLeGijDNGzK+ubhwFMFFzQ0ZG4+ttou239likqLyauGyd3PxWtQD53pG5T1vy2md6ylvBXEfg3eDBoaIVcxBJhK00u8sQz+vntnOuzxqUj2f+rmBekQIna/hiBmyDOU+jvItzbCrJqHoJzaR+B26V+lrn38r7fdXsdrZBG+Yw6tALJ+J6NtRkOA1dDBEN9/pQ9RPD0WiI0y/vzlmH9awURPHXnEXiWqhFck8y8kO3fLW17k4II0o9sOI1gTGPn0dCnMmiM7Bfa7aZTRQTuSBcRak9yjbziYiduMF5PcCPUaVZJhNaedyQu8otXpDF2ZeolGspatfHrGkNDBLaLsJn9eQHe923dnU1u3e2sf397BDlSGdwuAi0RZKzMU9BmgrKDrghcu/EYwWzWo56nIO5vYd3yuD7NM6uSCLJS244FWdWllL9vfqtbG4EztMuaQ0MELt3ncPaU2v7jrIt8GrYJ1gw6Ivjck2oEKus7F4dynmHKZ1q/31Q3tb9piMAh1gjSd+Qn6e91OPAcOsVdguBG2UaoicAf0B8dqRQyTqlczpf2rRBqM6mIQNJNlo7kTVOKG2w7Z/CHEyRuhRDzskNLBL/pSKlbjk1DWc99TkarKEfDGiLkLXBTIyyriFzTeWnBk9GxFWw+HXvN2//7Ixgud43wMfXEIVEqy8BTcoLEy9m7IxhJ8aoRXh+njiGOfXdVftGo6EgmL4iCROCOc3KsenrMWi8NiYf93eU3ub93pRXkHsK+21x2oxziPapoBVnqzR9oX7m79IV/fASZ/x8eQTw/wtM7kkEEFeg/RNgcytzpL4jAM9K3CZTca2Mky+uflz+v9e4ue7HdKfwI73zuLnslGY5iPH2oYb1u37zVU3LvXLYNX6gbbCV2z4PUG7PXTL6he1dxT3juEVX9qfWqnjj6DXrH+REXeYAn31qw3XI2/wjrzTWZZ5wLQ34AT8tQ/VeoqQF4Gy3VT9dPuykl96xyLxomX+qfHtUEgtohjHP159f3FucbvpzH01L5TxrKWT5sp+2683ERZk8t98ZfEOGJoxgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAOCP+gesrR0Xl9+EGgAAAABJRU5ErkJggg=="
                    alt="">
                </td>
                <td>Item name</td>
                <td>RM200</td>
                <td>30</td>
                <td>
                  <div class="btn-group" role="group" aria-label="...">
                    <button type="button" class="btn btn-outline-warning btn-sm">Edit</button>
                    <button type="button" class="btn btn-outline-danger btn-sm">Delete</button>
                    <!--                     
                      <div class="btn-group" role="group">
                        <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                          Dropdown
                          <span class="caret"></span>
                        </button>
                        <ul class="dropdown-menu">
                          <li><a href="#">Dropdown link</a></li>
                          <li><a href="#">Dropdown link</a></li>
                        </ul>
                      </div>
                    </div> -->
                </td>
              </tr>
              <tr>
                <td>1,001</td>
                <td>
                  <img style="width: 50px;height: 40px;"
                    src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAMIAAAEDCAMAAABQ/CumAAAAM1BMVEXq6uq7u7vs7Oy5ubno6Ojf39/BwcG+vr7j4+PIyMi2trbv7+/V1dXNzc3ExMTd3d3S0tIT1+ezAAAEHklEQVR4nO3ai5KkKBAFUEgoUfBR//+1mwmilo+Z7dqJNZ24Zya6u8ruCC6vAtQYAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAPgDaPnySMRFp5T4m7+7KF/hgsu/1zAOL3pcM+Ta56++H2101rqJHhZCSs/V/w5S/Myp7Eh0MUil/EmqfyPEvjaDosag3NdPGJqGRmrfbTK4br2uB02jO2NdLnsIdidfHNs8yjUgmtxnRa9FLf/drvT5dbS2VZKAM3Ath+angrNdUjK0qXW2OR8Mv+KdDUbLeGijDNGzK+ubhwFMFFzQ0ZG4+ttou239likqLyauGyd3PxWtQD53pG5T1vy2md6ylvBXEfg3eDBoaIVcxBJhK00u8sQz+vntnOuzxqUj2f+rmBekQIna/hiBmyDOU+jvItzbCrJqHoJzaR+B26V+lrn38r7fdXsdrZBG+Yw6tALJ+J6NtRkOA1dDBEN9/pQ9RPD0WiI0y/vzlmH9awURPHXnEXiWqhFck8y8kO3fLW17k4II0o9sOI1gTGPn0dCnMmiM7Bfa7aZTRQTuSBcRak9yjbziYiduMF5PcCPUaVZJhNaedyQu8otXpDF2ZeolGspatfHrGkNDBLaLsJn9eQHe923dnU1u3e2sf397BDlSGdwuAi0RZKzMU9BmgrKDrghcu/EYwWzWo56nIO5vYd3yuD7NM6uSCLJS244FWdWllL9vfqtbG4EztMuaQ0MELt3ncPaU2v7jrIt8GrYJ1gw6Ivjck2oEKus7F4dynmHKZ1q/31Q3tb9piMAh1gjSd+Qn6e91OPAcOsVdguBG2UaoicAf0B8dqRQyTqlczpf2rRBqM6mIQNJNlo7kTVOKG2w7Z/CHEyRuhRDzskNLBL/pSKlbjk1DWc99TkarKEfDGiLkLXBTIyyriFzTeWnBk9GxFWw+HXvN2//7Ixgud43wMfXEIVEqy8BTcoLEy9m7IxhJ8aoRXh+njiGOfXdVftGo6EgmL4iCROCOc3KsenrMWi8NiYf93eU3ub93pRXkHsK+21x2oxziPapoBVnqzR9oX7m79IV/fASZ/x8eQTw/wtM7kkEEFeg/RNgcytzpL4jAM9K3CZTca2Mky+uflz+v9e4ue7HdKfwI73zuLnslGY5iPH2oYb1u37zVU3LvXLYNX6gbbCV2z4PUG7PXTL6he1dxT3juEVX9qfWqnjj6DXrH+REXeYAn31qw3XI2/wjrzTWZZ5wLQ34AT8tQ/VeoqQF4Gy3VT9dPuykl96xyLxomX+qfHtUEgtohjHP159f3FucbvpzH01L5TxrKWT5sp+2683ERZk8t98ZfEOGJoxgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAOCP+gesrR0Xl9+EGgAAAABJRU5ErkJggg=="
                    alt="">
                </td>
                <td>Item name</td>
                <td>RM200</td>
                <td>30</td>
                <td>
                  <div class="btn-group" role="group" aria-label="...">
                    <button type="button" class="btn btn-outline-warning btn-sm">Edit</button>
                    <button type="button" class="btn btn-outline-danger btn-sm">Delete</button>
                    <!--                     
                      <div class="btn-group" role="group">
                        <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                          Dropdown
                          <span class="caret"></span>
                        </button>
                        <ul class="dropdown-menu">
                          <li><a href="#">Dropdown link</a></li>
                          <li><a href="#">Dropdown link</a></li>
                        </ul>
                      </div>
                    </div> -->
                </td>
              </tr>
              <tr>
                <td>1,001</td>
                <td>
                  <img style="width: 50px;height: 40px;"
                    src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAMIAAAEDCAMAAABQ/CumAAAAM1BMVEXq6uq7u7vs7Oy5ubno6Ojf39/BwcG+vr7j4+PIyMi2trbv7+/V1dXNzc3ExMTd3d3S0tIT1+ezAAAEHklEQVR4nO3ai5KkKBAFUEgoUfBR//+1mwmilo+Z7dqJNZ24Zya6u8ruCC6vAtQYAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAPgDaPnySMRFp5T4m7+7KF/hgsu/1zAOL3pcM+Ta56++H2101rqJHhZCSs/V/w5S/Myp7Eh0MUil/EmqfyPEvjaDosag3NdPGJqGRmrfbTK4br2uB02jO2NdLnsIdidfHNs8yjUgmtxnRa9FLf/drvT5dbS2VZKAM3Ath+angrNdUjK0qXW2OR8Mv+KdDUbLeGijDNGzK+ubhwFMFFzQ0ZG4+ttou239likqLyauGyd3PxWtQD53pG5T1vy2md6ylvBXEfg3eDBoaIVcxBJhK00u8sQz+vntnOuzxqUj2f+rmBekQIna/hiBmyDOU+jvItzbCrJqHoJzaR+B26V+lrn38r7fdXsdrZBG+Yw6tALJ+J6NtRkOA1dDBEN9/pQ9RPD0WiI0y/vzlmH9awURPHXnEXiWqhFck8y8kO3fLW17k4II0o9sOI1gTGPn0dCnMmiM7Bfa7aZTRQTuSBcRak9yjbziYiduMF5PcCPUaVZJhNaedyQu8otXpDF2ZeolGspatfHrGkNDBLaLsJn9eQHe923dnU1u3e2sf397BDlSGdwuAi0RZKzMU9BmgrKDrghcu/EYwWzWo56nIO5vYd3yuD7NM6uSCLJS244FWdWllL9vfqtbG4EztMuaQ0MELt3ncPaU2v7jrIt8GrYJ1gw6Ivjck2oEKus7F4dynmHKZ1q/31Q3tb9piMAh1gjSd+Qn6e91OPAcOsVdguBG2UaoicAf0B8dqRQyTqlczpf2rRBqM6mIQNJNlo7kTVOKG2w7Z/CHEyRuhRDzskNLBL/pSKlbjk1DWc99TkarKEfDGiLkLXBTIyyriFzTeWnBk9GxFWw+HXvN2//7Ixgud43wMfXEIVEqy8BTcoLEy9m7IxhJ8aoRXh+njiGOfXdVftGo6EgmL4iCROCOc3KsenrMWi8NiYf93eU3ub93pRXkHsK+21x2oxziPapoBVnqzR9oX7m79IV/fASZ/x8eQTw/wtM7kkEEFeg/RNgcytzpL4jAM9K3CZTca2Mky+uflz+v9e4ue7HdKfwI73zuLnslGY5iPH2oYb1u37zVU3LvXLYNX6gbbCV2z4PUG7PXTL6he1dxT3juEVX9qfWqnjj6DXrH+REXeYAn31qw3XI2/wjrzTWZZ5wLQ34AT8tQ/VeoqQF4Gy3VT9dPuykl96xyLxomX+qfHtUEgtohjHP159f3FucbvpzH01L5TxrKWT5sp+2683ERZk8t98ZfEOGJoxgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAOCP+gesrR0Xl9+EGgAAAABJRU5ErkJggg=="
                    alt="">
                </td>
                <td>Item name</td>
                <td>RM200</td>
                <td>30</td>
                <td>
                  <div class="btn-group" role="group" aria-label="...">
                    <button type="button" class="btn btn-outline-warning btn-sm">Edit</button>
                    <button type="button" class="btn btn-outline-danger btn-sm">Delete</button>
                    <!--                     
                      <div class="btn-group" role="group">
                        <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                          Dropdown
                          <span class="caret"></span>
                        </button>
                        <ul class="dropdown-menu">
                          <li><a href="#">Dropdown link</a></li>
                          <li><a href="#">Dropdown link</a></li>
                        </ul>
                      </div>
                    </div> -->
                </td>
              </tr>
            </tbody>
          </table>
        </div>
      </div>
    </div>



  </body>

  </html>