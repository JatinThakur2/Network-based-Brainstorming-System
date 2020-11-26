<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no" />
  <title>Network-based Brainstorming System</title>
  <link rel="icon" href="${contextPath}/resources/images/brain.png" />
  <link href="https://fonts.googleapis.com/css?family=Nunito:400,600,700" rel="stylesheet" />
  <link href="${contextPath}/resources/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
  <link href="${contextPath}/resources/css/plugins.css" rel="stylesheet" type="text/css" />
  <link rel="stylesheet" href="${contextPath}/resources/css/start-brainstorm.css">
</head>

<body>
  <!--  BEGIN NAVBAR  -->
  <div class="header-container fixed-top">
    <header class="header navbar navbar-expand-sm expand-header">
      <a href="javascript:void(0);" class="sidebarCollapse" data-placement="bottom"><svg
          xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none"
          stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
          class="feather feather-menu">
          <line x1="3" y1="12" x2="21" y2="12"></line>
          <line x1="3" y1="6" x2="21" y2="6"></line>
          <line x1="3" y1="18" x2="21" y2="18"></line>
        </svg></a>

      <ul class="navbar-item flex-row ml-auto">

        <li class="nav-item align-self-center search-animated">
          <a href="#">
            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none"
              stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
              class="feather feather-home">
              <path d="M3 9l9-7 9 7v11a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2z"></path>
              <polyline points="9 22 9 12 15 12 15 22"></polyline>
            </svg>
          </a>
        </li>
        <li class="nav-item dropdown user-profile-dropdown  order-lg-0 order-1">
          <a href="javascript:void(0);" class="nav-link dropdown-toggle user" id="userProfileDropdown"
            data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none"
              stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
              class="feather feather-user-check">
              <path d="M16 21v-2a4 4 0 0 0-4-4H5a4 4 0 0 0-4 4v2"></path>
              <circle cx="8.5" cy="7" r="4"></circle>
              <polyline points="17 11 19 13 23 9"></polyline>
            </svg>
          </a>
          <div class="dropdown-menu position-absolute e-animated e-fadeInUp" aria-labelledby="userProfileDropdown">
            <div class="user-profile-section">
              <div class="media mx-auto">
                <img src="../images/avatar6.png" class="img-fluid mr-2" alt="avatar">
                <div class="media-body">
                  <h5>Dayanidhee Singh</h5>
                  <p>Admin</p>
                </div>
              </div>
            </div>
            <div class="dropdown-item">
              <a href="#">
                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none"
                  stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
                  class="feather feather-user">
                  <path d="M20 21v-2a4 4 0 0 0-4-4H8a4 4 0 0 0-4 4v2"></path>
                  <circle cx="12" cy="7" r="4"></circle>
                </svg> <span>My Profile</span>
              </a>
            </div>
            <div class="dropdown-item">
              <a href="#" id="logout">
                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none"
                  stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
                  class="feather feather-log-out">
                  <path d="M9 21H5a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2h4"></path>
                  <polyline points="16 17 21 12 16 7"></polyline>
                  <line x1="21" y1="12" x2="9" y2="12"></line>
                </svg> <span>Log Out</span>
              </a>
            </div>
        </li>
      </ul>
    </header>
  </div>
  <!--  END NAVBAR  -->

  <!--  BEGIN MAIN CONTAINER  -->
  <div class="main-container sidebar-closed sbar-open" id="container">

    <div class="overlay"></div>
    <div class="cs-overlay"></div>
    <div class="search-overlay"></div>

    <!--  BEGIN SIDEBAR  -->
    <div class="sidebar-wrapper sidebar-theme">

      <nav id="sidebar">

        <ul class="navbar-nav theme-brand flex-row  text-center">
          <li class="nav-item theme-logo">
            <a href="index.html">
              <img src="../images/brain.png" class="navbar-logo" alt="logo">
            </a>
          </li>
          <li class="nav-item theme-text">
            <a href="index.html" class="nav-link">BrainStorm</a>
          </li>
        </ul>

        <ul class="list-unstyled menu-categories" id="accordionExample">
          <li class="menu active">
            <a href="Admin-Dashboard.html" data-toggle="collapse" aria-expanded="true" class="dropdown-toggle">
              <div class="">
                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none"
                  stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
                  class="feather feather-home">
                  <path d="M3 9l9-7 9 7v11a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2z"></path>
                  <polyline points="9 22 9 12 15 12 15 22"></polyline>
                </svg>
                <span>Dashboard</span>
              </div>

            </a>
          </li>

          <li class="menu menu-heading">
            <div class="heading"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"
                fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
                class="feather feather-circle">
                <circle cx="12" cy="12" r="10"></circle>
              </svg><span>MANAGE</span></div>
          </li>

          <li class="menu">
            <a href="#manageclients" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">
              <div class="">
                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none"
                  stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
                  class="feather feather-layers">
                  <polygon points="12 2 2 7 12 12 22 7 12 2"></polygon>
                  <polyline points="2 17 12 22 22 17"></polyline>
                  <polyline points="2 12 12 17 22 12"></polyline>
                </svg>
                <span>Manage Clients</span>
              </div>
              <div>
                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none"
                  stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
                  class="feather feather-chevron-right">
                  <polyline points="9 18 15 12 9 6"></polyline>
                </svg>
              </div>
            </a>
            <ul class="collapse submenu list-unstyled" id="manageclients" data-parent="#accordionExample">
              <li>
                <a href=""> Client Details </a>
              </li>
              <li>
                <a href=""> Client Activities </a>
              </li>
              <li>
                <a href=""> Brainstorming Session </a>
              </li>
            </ul>
          </li>
          <li class="menu">
            <a href="#addclient" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">
              <div class="">
                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none"
                  stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
                  class="feather feather-user-check">
                  <path d="M16 21v-2a4 4 0 0 0-4-4H5a4 4 0 0 0-4 4v2"></path>
                  <circle cx="8.5" cy="7" r="4"></circle>
                </svg>
                <span>Register Client</span>
              </div>
              <div>
                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none"
                  stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
                  class="feather feather-chevron-right">
                  <polyline points="9 18 15 12 9 6"></polyline>
                </svg>
              </div>
            </a>
            <ul class="collapse submenu list-unstyled" id="addclient" data-parent="#accordionExample">
              <li>
                <a href=""> Add Client </a>
              </li>
            </ul>
          </li>
        </ul>
      </nav>
    </div>
    <!--  END SIDEBAR  -->
    <div id="content" class="main-content">
      <div class="layout-px-spacing">


        <div class="page-header">
          <div class="page-title">
            <h3>Register A Client</h3>
          </div>
        </div>

        <div class="layout-top-spacing">

          <div class="">
            <div class="row">
              <div class="col-xl-12 col-lg-12 col-md-12 layout-spacing">
                <form:form method="POST" modelAttribute="userForm" class="section general-info">
                  <div class="info">
                    <div class="row">
                      <div class="col-lg-11 mx-auto">
                        <div class="row">
                          <div class="col-xl-12 col-lg-12 col-md-12 mt-md-0 mt-4">
                            <div class="form">
                              <div class="row">
                                <div class="col-sm-6">

                                  <div class="form-group">
                                    <label>Client Name</label>
                                    <input type="text" class="form-control mb-4" placeholder="Full Name">
                                  </div>

                                </div>
                                <div class="col-sm-6">
                                  <label>Client Date of Birth</label>
                                  <input type="date" class="form-control mb-4" placeholder="Date">
                                </div>
                              </div>
                              <div class="row">
                                <div class="col-sm-6">
                                  <label>Client Address</label>
                                  <input type="text" class="form-control mb-4" placeholder="Address">
                                </div>
                                <div class="col-sm-6">
                                  <label>Client Phone Number</label>
                                  <input type="text" class="form-control mb-4" placeholder="Phone Number">
                                </div>

                              </div>
                              <div class="row">
                                <div class="col-sm-6">
                                  <label>Client Email</label>
                                  <input type="text" class="form-control mb-4" placeholder="Email">
                                </div>
                                <div class="col-sm-6">
                                  <label>Client Password</label>
                                  <input type="password" class="form-control mb-4" placeholder="Password">
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="account-settings-footer">

                    <div class="as-footer-container">
                      <button class="btn btn-info">Register</button>

                    </div>

                  </div>
                </form:form>
              </div>
            </div>
          </div>
        </div>


      </div>


    </div>
  </div>
  <script src="../js/libs/jquery-3.1.1.min.js"></script>
  <script src="../js/popper.min.js"></script>
  <script src="../js/bootstrap.min.js"></script>
  <script src="../js/app.js"></script>
  <script>
    $(document).ready(function () {
      App.init();
    });
  </script>
  <script src="../js/custom.js"></script>
</body>

</html>