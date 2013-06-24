<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags" %>
<div id="content">
<s:url value="/information/examinee/check" var="form_action" />
<h3><s:message code="information.examinee.title" /></h3>
<div id="form_container">
<form action="${form_action }" method="post">
	<div class="field_container">
		<label for="xm"><s:message code="information.examinee.xm.title" /></label>
		<input type="text" name="xm" id="xm" />
		<div class="for_xm description"></div>
		<div class="for_xm error_msg"></div>
	</div>
	<div class="field_container">
		<label for="xmpy"><s:message code="information.examinee.xmpy.title" /></label>
		<input type="text" name="xmpy" id="xmpy" />
		<div class="for_xmpy description"></div>
		<div class="for_xmpy error_msg"></div>
	</div>
	<div class="field_container">
		<label for="zjlx"><s:message code="information.examinee.zjlx.title" /></label>
		<select name="zjlx" id="zjlx">
			<option value="01" selected="selected"><s:message code="information.examinee.zjlx.01" /></option>
			<option value="02"><s:message code="information.examinee.zjlx.02" /></option>
			<option value="03"><s:message code="information.examinee.zjlx.03" /></option>
			<option value="04"><s:message code="information.examinee.zjlx.04" /></option>
		</select>
		<div class="for_xmpy description"></div>
		<div class="for_xmpy error_msg"></div>
	</div>
</form>
</div>
</div>