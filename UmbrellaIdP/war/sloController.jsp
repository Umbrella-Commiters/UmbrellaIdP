<%@page
	import="edu.internet2.middleware.shibboleth.idp.slo.SingleLogoutContext"%>
<%@page
	import="edu.internet2.middleware.shibboleth.idp.slo.SingleLogoutContextStorageHelper"%>
<%@page import="java.util.Locale"%>
<%@page import="java.net.URLEncoder"%>
<%@page import="java.io.UnsupportedEncodingException"%>
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
                
                // redirect to target
                if(null != getParameterByName('target') && getParameterByName('target') != ""){
                	window.location=getParameterByName('target');
                }
            }
            
            function getParameterByName(name) {
                name = name.replace(/[\[]/, "\\\[").replace(/[\]]/, "\\\]");
                var regex = new RegExp("[\\?&]" + name + "=([^&#]*)"),
                    results = regex.exec(location.search);
                return results == null ? "" : decodeURIComponent(results[1].replace(/\+/g, " "));
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
<link href="https://umbrellaid.org/euu/favicon.ico" rel="shortcut icon" />
<title>Umbrella: Index</title>
<link href="/euu/layout/css/ef.css" rel="Stylesheet" type="text/css" />
<link href="/euu/layout/css/ef_calmonth_small.css" rel="Stylesheet"
	type="text/css" />
<link href="/euu/layout/css/print.css" rel="Stylesheet" media="print"
	type="text/css" />
<link href="/euu/layout/css/ef_topnav.css" rel="Stylesheet"
	type="text/css" />
<link href="/euu/layout/css/ef_misc.css" rel="Stylesheet"
	type="text/css" />
<link type="text/css" rel="stylesheet"
	href="/euu/assets/1.0-SNAPSHOT/core/default.css" />
<link type="text/css" rel="stylesheet"
	href="/euu/assets/1.0-SNAPSHOT/ctx/layout/css/ef_misc.css" />
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

</head>

<body id="wrap">
	<div id="header">
		<h1 class="logo">
			<!--  <img src="./files/not-found.png" alt="EuroFEL logo" class="logoimg" />-->
			<a href="/euu/">Umbrella</a>
		</h1>
		<div id="psimetanav">
			<ul style="padding-left: 350px">
				<li><a href="#">Logged in as:</a></li>
				<li><a href="#">&nbsp;</a></li>
			</ul>
		</div>
		<div>
			<!--  old logos -->
		</div>

	</div>
	<div class="TopNav">
		<form method="post" action="/euu/urlmap" name="BreadCrumbForm">
			<p>
				<input value="BreadCrumbForm" name="Form" type="hidden"></input>
			</p>
			<p>
				<input value="true" name="HiddenWiki" type="hidden"></input>
			</p>
			<!-- 
			<ul class="BreadCrumb">
				<li><button disabled="" class="BreadCrumbButton" value="0"
						type="submit" name="BreadCrumbButton">Help</button></li>
			</ul> -->
			<ul class="BreadCrumbChildren">
				<li><button class="BreadCrumbButton" value="1" type="submit"
						name="Child">
						About us <span class="BreadCrumbArrow"> &#8628;</span>
					</button>
					<ul class="BreadCrumbGrandChildren">
						<li><button class="BreadCrumbGrandChildrenButton" value="5"
								type="submit" name="Child">Core Team</button></li>
						<li><button class="BreadCrumbGrandChildrenButton" value="3"
								type="submit" name="Child">Management Team</button></li>
						<li><button class="BreadCrumbGrandChildrenButton" value="4"
								type="submit" name="Child">Technical Team</button></li>
						<li><button class="BreadCrumbGrandChildrenButton" value="2"
								type="submit" name="Child">Partners</button></li>
						<li><button class="BreadCrumbGrandChildrenButton" value="12"
								type="submit" name="Child">Facilities</button></li>
					</ul></li>
				<li class="BreadCrumbSeparator">|</li>
				<li><button class="BreadCrumbButton" value="22" type="submit"
						name="Child">
						About the Umbrella <span class="BreadCrumbArrow"> &#8628;</span>
					</button>
					<ul class="BreadCrumbGrandChildren">
						<li><button class="BreadCrumbGrandChildrenButton" value="19"
								type="submit" name="Child">What is Umbrella (for users)</button></li>
						<li><button class="BreadCrumbGrandChildrenButton" value="20"
								type="submit" name="Child">What is Umbrella (for IT
								experts)</button></li>
						<li><button class="BreadCrumbGrandChildrenButton" value="21"
								type="submit" name="Child">What is it good for?</button></li>
						<li><button class="BreadCrumbGrandChildrenButton" value="22"
								type="submit" name="Child">How can I use it?</button></li>
						<li><button class="BreadCrumbGrandChildrenButton" value="23"
								type="submit" name="Child">What has happened up to now?</button></li>
						<li><button class="BreadCrumbGrandChildrenButton" value="24"
								type="submit" name="Child">What is the present status?</button></li>
						<li><button class="BreadCrumbGrandChildrenButton" value="25"
								type="submit" name="Child">What will be the future?
								What is the roadmap?</button></li>
						<li><button class="BreadCrumbGrandChildrenButton" value="26"
								type="submit" name="Child">Documents</button></li>
						<li><button class="BreadCrumbGrandChildrenButton" value="27"
								type="submit" name="Child">Presentation</button></li>
						<li><button class="BreadCrumbGrandChildrenButton" value="28"
								type="submit" name="Child">Background information</button></li>
					</ul></li>
				<li class="BreadCrumbSeparator">|</li>
				<li><button class="BreadCrumbButton" value="50" type="submit"
						name="Child">
						Cookbook <span class="BreadCrumbArrow"> &#8628;</span>
					</button>
					<ul class="BreadCrumbGrandChildren"></ul></li>
			</ul>
		</form>
	</div>
	<div id="content">
		<div class="navigation">
			<div class="navbox">

				<h5 class="singleline">Actions</h5>
				<br /> <br />
				<h5 class="singleline"></h5>
				<a href="/euu/account/create">Create Account</a> <br /> <br />
				<h5 class="singleline"></h5>
				<a href="/euu/contact">Contact</a> <br /> <br />
				<h5 class="singleline"></h5>
				<a href="/euu/login">Login</a> <br /> <br />
				<h5 class="singleline"></h5>
			</div>
		</div>
		<div class="maincontent">

			<h1>
				<a shape="rect" name="EuroFEL_Consortium_News"></a> Logging out
			</h1>
			<div class="entry">
				<!-- Most of the page content, including <head>, <body>, etc. tags, comes 
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
					<noscript><%= service.getDisplayName(locale, defaultLocale) %>
						<% if (logoutString) { %><a
							href="<%= contextPath %>/SLOServlet?action&entityID=<%= entityID %>"
							target="_blank">Logout from this SP</a>
						<% }  else { %><img
							alt="<%= service.getLogoutStatus().toString() %>"
							id="<%= service.getEntityID() %>" src="<%= src.toString() %>">
						<% } %>
					</noscript>
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
						<form action="<%= contextPath %>/SLOServlet"
							style="padding-top: 10px; width: 90%; clear: both;">
							<input type="hidden" name="logout" />
							<input type="submit" value="Refresh" />
						</form>
						<div class="clear"></div>
						<% } else { %>
						<% if (sloFailed) { %>
						<div id="result" class="fail">Logout failed. Please exit
							from your browser to complete the logout process.</div>
						<% } else { %>
						<div id="result" class="success">
							You have successfully logged out
							<form action="<%= contextPath %>/SLOServlet"
								style="padding-top: 10px; width: 90%; clear: both;">
								<input type="hidden" name="finish" />
								<input type="submit" value="Finish logout" />
							</form>
							<div class="clear"></div>
						</div>
						<% }
                       } %>
					</p>
				</noscript>


			</div>
			<div>
				<img alt="e-infra" height="60"
					src="/euu/layout/img/e-infra.logo_eu.gif" /> <a target="_blank"
					href="http://www.pandata.eu"> <img alt="PaNdata ODI"
					height="35" src="/euu/layout/img/pandata-odi.png" />
				</a> <a target="_blank" href="http://www.crisp-fp7.eu/"> <img
					alt="CRISP" height="35" src="/euu/layout/img/crisp.jpg" />
				</a> <a target="_blank" href="http://www.iruvx.eu/"> <img
					alt="EuroFEL" height="35" src="/euu/layout/img/eurofel-logo.gif" />
				</a>
			</div>
			<br class="clear" />
		</div>
	</div>
</body>
</html>