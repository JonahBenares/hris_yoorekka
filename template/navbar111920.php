<style type="text/css">
    .btn-search{
        position: absolute;
        right: 0;
        top: 0;
        /*font-size: 1.3rem;*/
        height: 100%;
        width: 5rem;
        text-align: center;
        /*line-height: 2.9rem;*/
        cursor: pointer;
    }
    .searchtext {
        border: 0;
        border-radius: 2px;
        height: 2.9rem;
        padding-left: 3rem;
        width: 100%;
        transition: background-color .3s,color .3s;
        background-color: rgba(255,255,255,.08);
        color: #fff!important;
    }
    .searchtext:focus {
        background-color: rgba(0,0,0,.2);
        color: #fff;
    }
    .searchtext::placeholder {
        color: #fff
    }
</style>
<body data-sa-theme="1">
    <main class="main">
        <div class="page-loader">
            <div class="page-loader__spinner">
                <svg viewBox="25 25 50 50">
                    <circle cx="50" cy="50" r="20" fill="none" stroke-width="2" stroke-miterlimit="10" />
                </svg>
            </div>
        </div>

        <header class="header">
            <div class="navigation-trigger" data-sa-action="aside-open" data-sa-target=".sidebar">
                <i class="zmdi zmdi-menu"></i>
            </div>

            <div class="logo hidden-sm-down">
                <h1><a href="../masterfile/home.php"><b>YOOREKKA </b>- HRIS</a></h1>
            </div>

            <form method='POST' action='../reports/report_employees.php' class="search"  >
                <div class="search__inner">
                    <input type="text" name='keyword' autocomplete="off" class="searchtext" placeholder="Search Keyword">
                    <input type='submit' name='searchengine' class="btn btn-search btn-secondary" value="Search"  style="right:0!important;left:auto!important">
                </div>
            </form>

            <ul class="top-nav">
                <li class="hidden-xl-up"><a href="#" data-sa-action="search-open"><i class="zmdi zmdi-search"></i></a></li>


                <li class="dropdown hidden-xs-down">
                    <a href="#" data-toggle="dropdown"><i class="zmdi zmdi-more-vert"></i></a>

                    <div class="dropdown-menu dropdown-menu-right">
                        <div class="dropdown-item theme-switch">
                            Theme Switch

                            <div class="btn-group btn-group--colors mt-2 d-block" data-toggle="buttons">
                                <label class="btn active border-0" style="background-color: #772036"><input type="radio" value="1" autocomplete="off" checked></label>
                                <label class="btn border-0" style="background-color: #273C5B"><input type="radio" value="2" autocomplete="off"></label>
                                <label class="btn border-0" style="background-color: #174042"><input type="radio" value="3" autocomplete="off"></label>
                                <label class="btn border-0" style="background-color: #383844"><input type="radio" value="4" autocomplete="off"></label>
                                <label class="btn border-0" style="background-color: #49423F"><input type="radio" value="5" autocomplete="off"></label>

                                <br>

                                <label class="btn border-0" style="background-color: #5e3d22"><input type="radio" value="6" autocomplete="off"></label>
                                <label class="btn border-0" style="background-color: #234d6d"><input type="radio" value="7" autocomplete="off"></label>
                                <label class="btn border-0" style="background-color: #3b5e5e"><input type="radio" value="8" autocomplete="off"></label>
                                <label class="btn border-0" style="background-color: #0a4c3e"><input type="radio" value="9" autocomplete="off"></label>
                                <label class="btn border-0" style="background-color: #7b3d54"><input type="radio" value="10" autocomplete="off"></label>
                            </div>
                        </div>
                        <a href="#" class="dropdown-item" data-sa-action="fullscreen">Fullscreen</a>
                       <!--  <a href="#" class="dropdown-item">Clear Local Storage</a> -->
                    </div>
                </li>
            </ul>

            <div class="clock hidden-md-down">
                <div class="time">
                    <span class="hours"></span>
                    <span class="min"></span>
                    <span class="sec"></span>
                </div>
            </div>
        </header>

        <aside class="sidebar">
            <div class="scrollbar-inner">
                <div class="user">
                    <div class="user__info" data-toggle="dropdown">
                        <img class="user__img" src="../assets/img/users/user1.png" alt="">
                        <div>
                            <div class="user__name"><?php echo $_SESSION['username'] ?></div>
                            <div class="user__email">HR Personnel</div>
                        </div>
                    </div>

                    <div class="dropdown-menu">
                        <a class="dropdown-item" href="#">View Profile</a>
                        <a class="dropdown-item" href="#">Settings</a>
                        <a class="dropdown-item" href="../masterfile/logout.php" onclick="return confirm('Are you sure you want to logout?');" >Logout</a>
                    </div>
                </div>

                <ul class="navigation">
                    <li class=""><a href="../masterfile/home.php"><i class="zmdi zmdi-home"></i> Home</a></li>

                    <li class="navigation__sub">
                        <a href="#"><i class="zmdi zmdi-key"></i> Masterfile</a>
                        <ul>
                            <li class=""><a href="../masterfile/supervisor.php">Supervisor</a></li>
                            <li class=""><a href="../masterfile/department.php">Department</a></li>
                            <li class=""><a href="../masterfile/bus_unit.php">Business Unit</a></li>
                            <li class=""><a href="../masterfile/location.php">Location</a></li>
                            <li class=""><a href="../masterfile/thingstodo.php">Things-to-do</a></li>
                        </ul>
                    </li>
                    <li class="navigation__sub ">
                        <a href="#"><i class="zmdi zmdi-format-subject"></i> Forms</a>

                        <ul class="navigation__sub">
                            <li class=""><a href="../reports/app_emp.php">Application for Employment</a></li>
                            <li class=""><a href="../forms/amendment_form.php">Employee Amendment Form</a></li>
                        </ul>
                    </li>
                    <li class="navigation__sub ">
                        <a href="#"><i class="zmdi zmdi-copy"></i> Reports</a>

                        <ul class="navigation__sub">
                            <li class=""><a href="../reports/report_employees.php">Employee List</a></li>
                            <li class=""><a href="../reports/custom-report.php">Custom Info Display</a></li>
                            <li class=""><a href="../reports/salary-adjustment.php">Salary Adjustment</a></li>
                            <li class=""><a href="../reports/pooling-applicants.php">Pooling Applicants</a></li>
                            <li class="navigation__sub ">
                                <a href="#"></i> Statistics Report</a>
                                <ul class="navigation__sub">
                                    <li class="p-l-20"><a href="../reports/gender-statistics.php">Gender</a></li>
                                    <li class="p-l-20"><a href="../reports/age-statistics.php">Age</a></li>
                                    <li class="p-l-20"><a href="../reports/empstatus-statistics.php">Employment Status</a></li>
                                </ul>
                            </li>
                            <li class=""><a href="../reports/birthday-celebrants.php">Birthday Celebrant</a></li>
                        </ul>
                    </li>


                    
                </ul>
            </div>
        </aside>