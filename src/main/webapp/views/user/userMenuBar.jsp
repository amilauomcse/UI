<nav class="navbar navbar-default navbar-fixed-top"
     style="background: #d0112b;border-bottom: solid red 2px;padding-bottom: 0px;">
    <div class="navbar-header">
        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar"
                aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </button>
        <img class="col-sm-2" style="width: 150px;" src="../../assets/img/logo.png">
        <%--<a class="navbar-brand" href="#">BlimpIT</a>--%>
    </div>
    <%--<div class="col-sm-4">--%>
        <%--<div class="right-inner-addon">--%>
            <%--<i class="fa fa-search"></i>--%>
            <%--<input type="search"--%>
                   <%--class="form-control"--%>
                   <%--placeholder="Search"/>--%>

        <%--</div>--%>
    <%--</div>--%>
    <div id="navbar" class="navbar-collapse collapse">
        <ul class="nav navbar-nav list-unstyled components">


        </ul>
        <ul class="nav navbar-nav list-unstyled components navbar-right">
            <li><a href="#about" class="dropdown-toggle" data-toggle="dropdown"><i style="color:white" class="fa fa-th"
                                                                                   aria-hidden="true"></i></a>
                <ul class="dropdown-menu dropdown-user"
                    style="left: 0 !important;">
                    <li><a href="#" data-toggle="modal"
                           ng-click="editComment(page,commentTheme,$index)"><i
                            class="fa fa-pencil"></i>
                        Edit </a>
                    </li>
                    <li><a href="#" data-toggle="modal"
                           ng-click="addComment(page,$index)"><i
                            class="fa fa-plus"></i>
                        Add Below</a>
                    </li>
                    <li><a href="#"
                           ng-click="deleteComment(page,$index)">
                        <i class="fa fa-trash"></i> Delete </a>
                    </li>
                </ul>
            </li>
            <li><a href="#contact"><i style="color:white" class="fa fa-comments" aria-hidden="true"></i></a></li>
            <li><a href="#profile"><i style="color:white" class="fa fa-user" aria-hidden="true"></i></a></li>
        </ul>
    </div><!--/.nav-collapse -->
</nav>
<nav id="sidebar" class="navbar navbar-default navbar-fixed-left active"
     style="margin-left: 1px;background: #e9ebee;z-index: 1000; position: fixed;min-height: 100%">
    <a style="    position: absolute;    top: 10px;    right: 4px;    z-index: 1011;    color: #a7b1c2;"
       ng-click="menuIconClicked()" class="close-canvas-menu" ng-if="sideMenuCollapsed==false"><i
            class="fa fa-times"></i></a>
    <ul class="list-unstyled components">

        <li>
            <a href="newsFeed.jsp">
                <i class="fa fa-newspaper-o" aria-hidden="true"></i>
                News Feed
            </a>
        </li>
        <li>
            <a href="myStores.jsp">
                <i class="fa fa-handshake-o" aria-hidden="true"></i>
                My Stores
            </a>
        </li>
        <li>
            <a href="followingStores.jsp">
                <i class="fa fa-handshake-o" aria-hidden="true"></i>
                Following Stores
            </a>
        </li>
        <li>
            <a href="userProducts.jsp">
                <i class="fa fa-product-hunt" aria-hidden="true"></i>
                Products
            </a>
        </li>

    </ul>
</nav>
<div ng-click="menuIconClicked()" ng-if="sideMenuCollapsed==true" class="menu-icon"
     style="left: 0px; transition-property: all; transition-duration: 0s; transition-timing-function: ease;">
    <%--<a ng-if="sideMenuCollapsed==false" href="#sidebar" class="nav-slide"><i class="fa fa-times fa-2x"></i></a>--%>
    <a href="#sidebar" class="nav-slide"><i class="fa fa-bars fa-2x"></i></a>
</div>
