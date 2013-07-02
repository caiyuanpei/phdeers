<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<% int currentYear = Calendar.getInstance().get(Calendar.YEAR); %>
<div id="content">
<s:url value="/information/examinee/check" var="form_action" />
<h2><s:message code="information.examinee.title" /></h2>
<div id="form_container">
<form action="${form_action }" method="post">
	<div class="field_container">
		<label for="xm"><s:message code="information.examinee.xm.title" /></label>
		<input type="text" name="xm" id="xm" style="width: 6em;" />
		<div class="for_xm description" style="display: none;">姓名之间不加空格。如“李明”</div>
		<div class="for_xm error_msg" style="display: none;"></div>
	</div>
	<div class="field_container">
		<label for="xmpy"><s:message code="information.examinee.xmpy.title" /></label>
		<input type="text" name="xmpy" id="xmpy" style="width: 10em;" />
		<div class="for_xmpy description" style="display: none;">全部使用小写字母，中间不加空格。如“liming”</div>
		<div class="for_xmpy error_msg" style="display: none;"></div>
	</div>
	<div class="field_container">
		<label for="zjlx"><s:message code="information.examinee.zjlx.title" /></label>
		<select name="zjlx" id="zjlx">
			<option value="01" selected="selected"><s:message code="information.examinee.zjlx.01" /></option>
			<option value="02"><s:message code="information.examinee.zjlx.02" /></option>
			<option value="03"><s:message code="information.examinee.zjlx.03" /></option>
			<option value="04"><s:message code="information.examinee.zjlx.04" /></option>
		</select>
	</div>
	<div class="field_container">
		<label for="zjhm"><s:message code="information.examinee.zjhm.title" /></label>
		<input type="text" name="zjhm" id="zjhm" style="width: 10em;" />
		<div class="for_zjhm description" style="display: none;">如果选择证件类型为身份证,则号码必须为18位；<br />如果选择军官证,应录入军官证全文.例如“海字第12345号”</div>
		<div class="for_zjhm error_msg" style="display: none;"></div>
	</div>
	<div class="field_container">
		<label for="csrq"><s:message code="information.examinee.csrq.title" /></label>
		<select name="csrq_year" id="csrq_year" style="display:inline;">
		<c:forEach begin="<%=currentYear-50 %>" end="<%=currentYear %>" var="y">
			<option value="${y }">${y }年</option>
		</c:forEach></select>
		<select name="csrq_month" id="csrq_month" style="display:inline;">
		<c:forEach begin="1" end="12" var="m">
			<option value="${m }">${m }月</option>
		</c:forEach></select>
		<select name="csrq_date" id="csrq_date" style="display:inline;">
		<c:forEach begin="1" end="31" var="d">
			<option value="${d }">${d }日</option>
		</c:forEach></select>
		<div class="for_zjhm description" style="display: none;"></div>
		<div class="for_zjhm error_msg" style="display: none;"></div>
	</div>
	<div class="field_container">
		<label for="xbm"><s:message code="information.examinee.xbm.title" /></label>
		<select name="xbm" id="xbm">
			<option value="1" selected="selected"><s:message code="information.examinee.xbm.1" /></option>
			<option value="2"><s:message code="information.examinee.xbm.2" /></option>
		</select>
	</div>
	<div class="field_container">
		<label for="mzm"><s:message code="information.examinee.mzm.title" /></label>
		<select name="mzm" id="mzm">
			<option value="------">-请选择-</option>
		</select>
		<div class="for_mzm description" style="display: none;"></div>
		<div class="for_mzm error_msg" style="display: none;"></div>
	</div>
	<div class="field_container">
		<label for="csdm"><s:message code="information.examinee.csdm.title" /></label>
		<select name="csdm_p" id="csdm_p" style="display:inline;">
			<option value="------">-请选择-</option>
		</select>
		<select name="csdm" id="csdm" style="display:inline;">
			<option value="------">-请选择-</option>
		</select>
		<div class="for_csdm description" style="display: none;"></div>
		<div class="for_csdm error_msg" style="display: none;"></div>
	</div>
</form>
<script type="text/javascript">
$(function(){
	openAutoShowDescript();
	ajaxInitProvinces("csdm_p");
	ajaxRegion("csdm_p", "csdm");
	ajaxInitNations("mzm")
});
</script>
</div>
</div>