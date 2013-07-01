<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<spring:url value="/dwr/interface/regionSer.js" var="regionSer_url" scope="page" />
<spring:url value="/dwr/engine.js" var="engine_url" scope="page" />
<spring:url value="/dwr/util.js" var="util_url" scope="page" />

<script type="text/javascript" src="${regionSer_url }"></script>
<script type="text/javascript" src="${engine_url }"></script>
<script type="text/javascript" src="${util_url }"></script>