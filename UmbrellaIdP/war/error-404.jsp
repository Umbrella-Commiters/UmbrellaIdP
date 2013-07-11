<%@page import="edu.internet2.middleware.shibboleth.common.profile.AbstractErrorHandler"%>
<%@ taglib uri="urn:mace:shibboleth:2.0:idp:ui" prefix="idpui" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<!-- Design by Free CSS Templates http://www.freecsstemplates.org Released for free under a Creative Commons Attribution 2.5 License Title : 
	Concrete Version : 1.0 Released : 20080825 Description: A Web 2.0 design with fluid width suitable for blogs and small websites. -->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
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
<br class="clear" />
</div>
<script type="text/javascript"
	src="https://umbrella.psi.ch/umbrellafoot/foot.js"></script>
<div id="umbrellaFoot"></div>

</body>
</html>
