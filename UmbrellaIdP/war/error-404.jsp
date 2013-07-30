<%@page import="edu.internet2.middleware.shibboleth.common.profile.AbstractErrorHandler"%>
<%@ taglib uri="urn:mace:shibboleth:2.0:idp:ui" prefix="idpui" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta content="Apache Tapestry Framework (version 5.3.6)"
	name="generator" />
<meta content="text/html; charset=UTF-8" http-equiv="Content-Type" />
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
<script src="/euu/layout/js/jquery-1.7.2.min.js" type="text/javascript"></script>
<script src="/euu/layout/js/lightbox.js" type="text/javascript"></script>
<link rel="stylesheet" href="/euu/layout/css/lightbox.css" />
<script type="text/javascript">
	$.noConflict();
	// Code that uses other library's $ can follow here.
</script>

<link rel="stylesheet" href="/euu/layout/css/jquery-ui.css" />
<script src="/euu/layout/js/jquery-1.9.1.js"></script>
<script src="/euu/layout/js/jquery-ui.js"></script>
<script>
	$(function() {
		$("#accordion").accordion();
	});
</script>
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
								type="submit" name="Child">
								Core Team
							</button></li>
						<li><button class="BreadCrumbGrandChildrenButton" value="3"
								type="submit" name="Child">
								Management Team
							</button></li>
						<li><button class="BreadCrumbGrandChildrenButton" value="4"
								type="submit" name="Child">
								Technical Team
							</button></li>
						<li><button class="BreadCrumbGrandChildrenButton" value="2"
								type="submit" name="Child">
								Partners
							</button></li>
						<li><button class="BreadCrumbGrandChildrenButton" value="12"
								type="submit" name="Child">
								Facilities
							</button></li>
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
<h1><a shape="rect" name="EuroFEL_Consortium_News"></a> Error</h1>
<div class="entry"><!-- Most of the page content, including <head>, <body>, etc. tags, comes 
		from Layout.tml -->

		
	<p>
	    An error occurred while processing your request.  Please contact your helpdesk or
	    user ID office for assistance.
	</p>
	<p>
	    <strong>Error Message: Invalid IdP URL (HTTP 404)</strong>
	</p>


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