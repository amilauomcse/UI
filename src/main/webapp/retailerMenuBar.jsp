<nav class="navbar navbar-default navbar-fixed-top">
    <div class="navbar-header">
        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar"
                aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </button>
        <%--<a class="navbar-brand" href="#">BlimpIT</a>--%>
    </div>
    <div id="navbar" class="navbar-collapse collapse">
        <ul class="nav navbar-nav list-unstyled components">


        </ul>
        <ul class="nav navbar-nav list-unstyled components navbar-right">
            <li><a href="#about"><i class="fa fa-usd" aria-hidden="true"></i> Quick Buy</a></li>
            <li><a href="#contact"><i class="fa fa-comments" aria-hidden="true"></i> Chat Room</a></li>
            <li><a href="#profile"><i class="fa fa-user" aria-hidden="true"></i> Profile</a></li>
        </ul>
    </div><!--/.nav-collapse -->
</nav>
<nav id="sidebar" class="navbar navbar-default navbar-fixed-left active" style="margin-top: 80px;">

    <ul class="list-unstyled components">

        <li>
            <a href="#">
                <i class="glyphicon glyphicon-briefcase"></i>
                About
            </a>
        </li>
        <li>
            <a href="#">
                <i class="glyphicon glyphicon-link"></i>
                Portfolio
            </a>
        </li>
        <li>
            <a href="#">
                <i class="glyphicon glyphicon-send"></i>
                Contact
            </a>
        </li>
    </ul>
</nav>
<div ng-click="menuIconClicked()" class="menu-icon" style="left: 80px; transition-property: all; transition-duration: 0s; transition-timing-function: ease;">
    <a ng-if="sideMenuCollapsed==false" href="#sidebar" class="nav-slide"><i class="fa fa-times fa-2x"></i></a>
    <a ng-if="sideMenuCollapsed==true" href="#sidebar" class="nav-slide"><i class="fa fa-bars fa-2x"></i></a>
</div>
