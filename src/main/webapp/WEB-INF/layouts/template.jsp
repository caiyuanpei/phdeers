<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<s:url value="/styles/style.css" var="css_url" />

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title><s:message code="application_title" /></title>
<link rel="stylesheet" type="text/css" href="${css_url }" />
</head>
<body>

<div id="wrap">

<div id="header">
<h1><a href="#"><s:message code="application_title" /></a></h1>
</div>

<tiles:insertAttribute name="menu" />

<div id="contentwrap">

<tiles:insertAttribute name="content" ignore="true" />

<div id="sidebar">
<h3>Menu Navigation</h3>
<ul>
<li><a href="#">Proin at</a></li>
<li><a href="#">Class aptent taciti</a></li>
<li><a href="#">Morbi in dolor</a></li>
<li><a href="#">Praesent ultricies</a></li>
<li><a href="#">Aenean euismod</a></li>
<li><a href="#">Donec sempe</a></li>
<li><a href="#">Suspendisse potenti</a></li>
</ul>

<h3>Useful Resources</h3>
<ul>
<li><a href="http://www.oldwisdom.info">Old Wisdom</a></li>
<li><a href="http://www.supplies4pets.info">Supplies for Pets</a></li>
<li><a href="http://www.viennasights.info">Vienna Sightseeing</a></li>
<li><a href="http://www.florencesightseeing.info">Florence Sightseeing</a></li>
<li><a href="http://www.amsterdamsightseeing.info">Amsterdam</a></li>
<li><a href="http://www.francesightseeing.info">French Cities</a></li>
</ul>

</div>

<div style="clear: both;"> </div>

</div>

<div id="footer">
<p>&copy; Copyright 2013 <a href="www.hrbeu.edu.cn">HRBEU</a> | Design by <a href="http://www.blogliber.com">Blog Liber</a></p>
</div>

</div>

</body>
</html>