<%@page import="edu.internet2.middleware.shibboleth.idp.slo.SingleLogoutContext" %>
<%@page import="edu.internet2.middleware.shibboleth.idp.slo.SingleLogoutContextStorageHelper" %>
<%@page import="java.util.Locale" %>
<%@page import="java.net.URLEncoder" %>
<%@page import="java.io.UnsupportedEncodingException" %>
<%
SingleLogoutContext sloContext = SingleLogoutContextStorageHelper.getSingleLogoutContext(request);
String contextPath = request.getContextPath();
Locale defaultLocale = Locale.ENGLISH;
Locale locale = request.getLocale();
Boolean logoutString = false;
Boolean sloFailed = false;
Boolean sloAttempted = false;
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<!-- Design by Free CSS Templates http://www.freecsstemplates.org Released for free under a Creative Commons Attribution 2.5 License Title : 
	Concrete Version : 1.0 Released : 20080825 Description: A Web 2.0 design with fluid width suitable for blogs and small websites. -->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
        <script language="javascript" type="text/javascript">
            <!--
            var timer = 0;
            var timeout;
            
            var xhr = new XMLHttpRequest();

            function checkStatus() {
                xhr.onreadystatechange = updateStatus;
                xhr.open("GET", "<%= contextPath %>/SLOServlet?status", true);
                xhr.send(null);
            }

            function updateStatus() {
                if (xhr.readyState != 4 || xhr.status != 200) {
                    return;
                }

                var sloFailed = false;
                var resp = eval("(" + xhr.responseText + ")");
                var ready = true;

                for (var service in resp) {
                    var entity = resp[service].entityID;
                    var status = resp[service].logoutStatus;
                    var src = "indicator.gif";
                    
                    switch(status) {
                        case "LOGOUT_SUCCEEDED" : 
                            src = "success.png";
                            break;
                        case "LOGOUT_FAILED" : 
                        case "LOGOUT_UNSUPPORTED" :
                        case "LOGOUT_TIMED_OUT" :
                            src = "failed.png";
                            sloFailed = true;
                            break;
                        case "LOGOUT_ATTEMPTED" : 
                        case "LOGGED_IN" :
                            if (timer >= 8) {
                                src = "failed.png";
                                sloFailed = true;
                                ready = true;
                            } else {
                                src = "indicator.gif";
                                ready = false;
                            }
                            break;
                    }
                    
                    document.getElementById(entity).src = "<%= contextPath %>/images/" + src;
                }

                if (ready) {
                    finish(sloFailed);
                }
            }

            function finish(sloFailed) {
                var str = "You have successfully logged out";
                var className = "success";
                if (sloFailed){
                    str = "Logout failed. Please exit from your browser to complete the logout process." ;
                    className = "fail";
                }
                document.getElementById("result").className = className;
                document.getElementById("result").innerHTML = str;
                document.getElementById("result").innerHTML += '<iframe src="<%= contextPath %>/SLOServlet?finish"></iframe><div class="clear"></div>';
                clearTimeout(timeout);
            }

            function tick() {
                timer += 1;
                if (timer  == 1 || timer  == 2 || timer  == 4 || timer  == 8) {
                    checkStatus();
                }
                if (timer > 8) {
                    finish(true);
                } else {
                    timeout = setTimeout("tick()", 1000);
                }
            }

            timeout = setTimeout("tick()", 1000);
            //-->
        </script>

<link type="text/css" rel="stylesheet"
	href="/euu/assets/1.0-SNAPSHOT/core/default.css"></link>
<meta content="text/html; charset=UTF-8" http-equiv="Content-Type"></meta>
<link href="http://www-test-eurofel.psi.ch/favicon.ico"
	rel="shortcut icon"></link>
<title>Umbrella: Login</title>
<link href="/euu/layout/css/ef.css" rel="Stylesheet" type="text/css"></link>
<link href="/euu/layout/css/ef_calmonth_small.css" rel="Stylesheet"
	type="text/css"></link>
<link href="/euu/layout/css/print.css" rel="Stylesheet" media="print"
	type="text/css"></link>
<link href="/euu/layout/css/ef_topnav.css" rel="Stylesheet"
	type="text/css"></link>
<style media="all" type="text/css">
.foswikiMakeVisible {
	display: inline;
}

.foswikiMakeVisibleInline {
	display: inline;
}

.foswikiMakeVisibleBlock {
	display: block;
}

.foswikiMakeHidden {
	display: none;
}
</style>
<meta content="Apache Tapestry Framework (version 5.3.0)"
	name="generator"></meta>
</head>
<body id="wrap">
<div id="header">
<h1 class="logo"><img src="./files/not-found.png"
	alt="EuroFEL logo" class="logoimg" /><a shape="rect" href="/euu/">Umbrella</a></h1>
<div id="psimetanav">
<ul style="padding-left: 350px">
	<li><a shape="rect" href="#">Logged in as:</a></li>
	<li><a shape="rect" href="#"></a></li>
</ul>
<!-- <ul style="padding-left: 350px"> <li> <a href="/imprint">Imprint</a> </li> <li> <a href="/contact">Contact</a> </li> <li> <a href="/events">Events</a> 
						</li> </ul> <ul class="pdfprint"> <li> <a href="http://www-test-eurofel.psi.ch/pdf/" title="Download this page as a PDF" class="pdfpage">PDF</a> 
						</li> <li> <a href="http://www-test-eurofel.psi.ch/print/" title="Print version of this page" class="printpage" rel="nofollow">print</a> </li> 
						</ul> --></div>
<!-- <div class="partners"> <span class="partnertitle">Partners</span> <ul> <li> <a class="p1" href="http://www.desy.de/"> <span>DESY</span> 
					</a> </li> <li> <a class="p2" href="http://www.elettra.trieste.it/"> <span>elettra</span> </a> </li> <li> <a class="p3" href="http://www.helmholtz-berlin.de/index_en.html"> 
					<span>HZB</span> </a> </li> <li> <a class="p4" href="http://www.infn.it/indexen.php"> <span>INFN</span> </a> </li> <li> <a class="p5" href="http://www.ipj.gov.pl/en/main.htm"> 
					<span>IPJ</span> </a> </li> <li> <a class="p6" href="http://www.maxlab.lu.se/"> <span>MAX-lab</span> </a> </li> <li> <a class="p7" href="http://www.psi.ch/en/"> 
					<span>PSI</span> </a> </li> <li> <a class="p8" href="http://www.scitech.ac.uk/"> <span>Science &amp; Technology Facilities Council</span> </a> 
					</li> <li> <a class="p9" href="#"> <span>Soleil Synchrotron</span> </a> </li> </ul> </div> --></div>
<div class="TopNav">
<form enctype="application/x-www-form-urlencoded" method="post"
	action="/euu/urlmap" name="BreadCrumbForm">
<p><input value="BreadCrumbForm" name="Form" type="hidden"></input></p>
<p><input value="true" name="HiddenWiki" type="hidden"></input></p>
<ul class="BreadCrumb">
	<li>
	<button disabled="" class="BreadCrumbButton" value="0" type="submit"
		name="BreadCrumbButton">Help</button>
	</li>
</ul>
<ul class="BreadCrumbChildren">
	<li>
	<button class="BreadCrumbButton" value="1" type="submit" name="Child">
	About us <span class="BreadCrumbArrow"> ↴</span></button>
	<ul class="BreadCrumbGrandChildren">
		<li>
		<button class="BreadCrumbGrandChildrenButton" value="2" type="submit"
			name="Child">Partners <span class="BreadCrumbArrow">
		↴</span></button>
		</li>
		<li>
		<button class="BreadCrumbGrandChildrenButton" value="12" type="submit"
			name="Child">National facilities <span
			class="BreadCrumbArrow"> ↴</span></button>
		</li>
	</ul>
	</li>
	<li class="BreadCrumbSeparator">|</li>
	<li>
	<button class="BreadCrumbButton" value="22" type="submit" name="Child">
	About the Umbrella <span class="BreadCrumbArrow"> ↴</span></button>
	<ul class="BreadCrumbGrandChildren">
		<li>
		<button class="BreadCrumbGrandChildrenButton" value="21" type="submit"
			name="Child">Umbrella Friendly user phase</button>
		</li>
		<li>
		<button class="BreadCrumbGrandChildrenButton" value="23" type="submit"
			name="Child">What is the Umbrella?</button>
		</li>
		<li>
		<button class="BreadCrumbGrandChildrenButton" value="24" type="submit"
			name="Child">Application fields / benefits</button>
		</li>
	</ul>
	</li>
	<li class="BreadCrumbSeparator">|</li>
	<li>
	<button class="BreadCrumbButton" value="30" type="submit" name="Child">
	Services <span class="BreadCrumbArrow"> ↴</span></button>
	<ul class="BreadCrumbGrandChildren">
		<li>
		<button class="BreadCrumbGrandChildrenButton" value="31" type="submit"
			name="Child">What can I do?</button>
		</li>
		<li>
		<button class="BreadCrumbGrandChildrenButton" value="32" type="submit"
			name="Child">Wiki</button>
		</li>
		<li>
		<button class="BreadCrumbGrandChildrenButton" value="33" type="submit"
			name="Child">Alfresco</button>
		</li>
		<li>
		<button class="BreadCrumbGrandChildrenButton" value="35" type="submit"
			name="Child">Forum</button>
		</li>
		<li>
		<button class="BreadCrumbGrandChildrenButton" value="36" type="submit"
			name="Child">Issue Tracker</button>
		</li>
	</ul>
	</li>
	<li class="BreadCrumbSeparator">|</li>
	<li>
	<button class="BreadCrumbButton" value="40" type="submit" name="Child">
	User Offices <span class="BreadCrumbArrow"> ↴</span></button>
	<ul class="BreadCrumbGrandChildren">
		<li>
		<button class="BreadCrumbGrandChildrenButton" value="31" type="submit"
			name="Child">What can I do?</button>
		</li>
		<li>
		<button class="BreadCrumbGrandChildrenButton" value="42" type="submit"
			name="Child">DOOR</button>
		</li>
		<li>
		<button class="BreadCrumbGrandChildrenButton" value="43" type="submit"
			name="Child">DUO</button>
		</li>
		<li>
		<button class="BreadCrumbGrandChildrenButton" value="44" type="submit"
			name="Child">SMIS</button>
		</li>
		<li>
		<button class="BreadCrumbGrandChildrenButton" value="45" type="submit"
			name="Child">Propman</button>
		</li>
	</ul>
	</li>
</ul>
</form>
</div>
<div id="content">
<div class="navigation">
<div class="navbox">
<h5 class="singleline">Actions</h5>
<br />
<br />
<h5 class="singleline"></h5>
<a href="/euu/account/create">Create Account</a><br />
<br />
<h5 class="singleline"></h5>
<a href="/euu/contact">Contact</a><br />
<br />
<h5 class="singleline"></h5>
<a href="/euu/login">Login</a><br />
<br />
<h5 class="singleline"></h5>
</div>
</div>
<div class="maincontent">
<h1><a shape="rect" name="EuroFEL_Consortium_News"></a> Logging out</h1>
<div class="entry"><!-- Most of the page content, including <head>, <body>, etc. tags, comes 
		from Layout.tml -->

		
            <%
            int i = 0;
            for (SingleLogoutContext.LogoutInformation service : sloContext.getServiceInformation().values()) {
                i++;
                String entityID = null;
                try {
                    entityID = URLEncoder.encode(service.getEntityID(), "UTF-8");
                } catch (UnsupportedEncodingException ex) {
                    throw new RuntimeException(ex);
                }
				
                StringBuilder src = new StringBuilder(contextPath);
                src.append("/images/");
                switch (service.getLogoutStatus()) {
                    case LOGGED_IN:
                        logoutString = true;
                    case LOGOUT_ATTEMPTED:
                        sloAttempted = true;
                        src.append("indicator.gif");
                        break;
                    case LOGOUT_UNSUPPORTED:
                    case LOGOUT_FAILED:
                    case LOGOUT_TIMED_OUT:
                        sloFailed = true;
                        src.append("failed.png");
                        break;
                    case LOGOUT_SUCCEEDED:
                        logoutString = false;
                        src.append("success.png");
                        break;
                }
            %>
            <div class="row">
                <script type="text/javascript">
                    <!--
                    document.write('<%= service.getDisplayName(locale, defaultLocale) %><img alt="<%= service.getLogoutStatus().toString() %>" id="<%= service.getEntityID() %>" src="<%= src.toString() %>">');
                    //-->
                </script>
                <noscript><%= service.getDisplayName(locale, defaultLocale) %> <% if (logoutString) { %><a href="<%= contextPath %>/SLOServlet?action&entityID=<%= entityID %>" target="_blank">Logout from this SP</a> <% }  else { %><img alt="<%= service.getLogoutStatus().toString() %>" id="<%= service.getEntityID() %>" src="<%= src.toString() %>"><% } %></noscript>
            </div>
            <%
            if (service.isLoggedIn()) {
                //if-logged-in
            %>
            <script type="text/javascript">
                <!--
                document.write('<iframe src="<%= contextPath %>/SLOServlet?action&entityID=<%= entityID %>" width="0" height="0"></iframe>');
                //-->
            </script>
            <%
            } //end of if-logged-in
            } //end of for-each-service
            %>
            <div id="result"></div>
            <noscript>
                <p align="center">
                    <% if (logoutString || sloAttempted) { %>
                        <form action="<%= contextPath %>/SLOServlet" style="padding-top:10px;width:90%;clear:both;"><input type="hidden" name="logout" /><input type="submit" value="Refresh" /></form><div class="clear"></div>
                    <% } else { %>
                        <% if (sloFailed) { %>
                            <div id="result" class="fail">Logout failed. Please exit from your browser to complete the logout process.</div>
                        <% } else { %>
                            <div id="result" class="success">You have successfully logged out<form action="<%= contextPath %>/SLOServlet" style="padding-top:10px;width:90%;clear:both;"><input type="hidden" name="finish" /><input type="submit" value="Finish logout" /></form><div class="clear"></div></div>
                        <% }
                       } %>
                </p>
            </noscript>





</div>
<br class="clear" />
</div>
<script type="text/javascript"
	src="https://umbrella.psi.ch/umbrellafoot/foot.js"></script>
<div id="umbrellaFoot"></div>

</body>
</html>
