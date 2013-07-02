<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<spring:url value="/dwr/engine.js" var="dwr_engine" scope="page" />
<spring:url value="/dwr/util.js" var="dwr_util" scope="page" />

<spring:url value="/dwr/interface/regionSer.js" var="regionSer_url" scope="page" />
<spring:url value="/dwr/interface/nationSer.js" var="nationSer_url" scope="page" />

<spring:url value="/js/utils.js" var="utils" scope="page" />

<script type="text/javascript" src="${dwr_engine }"></script>
<script type="text/javascript" src="${dwr_util }"></script>
<script type="text/javascript" src="${regionSer_url }"></script>
<script type="text/javascript" src="${nationSer_url }"></script>
<script type="text/javascript" src="${utils }"></script>