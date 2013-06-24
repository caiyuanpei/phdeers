<%@ page language="java" contentType="text/html; charset=utf-8"	pageEncoding="utf-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>Index</title>
	<spring:url value="/dwr/interface/majorSer.js" var="majorSer_url" />
	<spring:url value="/dwr/engine.js" var="engine_url" />
	<spring:url value="/dwr/util.js" var="util_url" />
	<spring:url value="/js/jquery-1.10.1.min.js" var="jquery_url" />
	<script type="text/javascript" src="${majorSer_url }"></script>
	<script type="text/javascript" src="${engine_url }"></script>
	<script type="text/javascript" src="${util_url }"></script>
	<script type="text/javascript" src="${jquery_url }"></script>
</head>
<body>
	<h1>Remote Fetch Test</h1>
	<button id="btn">Click</button>
	<table id="cate" border="1">
	
	</table>
	<script type="text/javascript">
	$(function(){
		$("#btn").click(function(){
			majorSer.fetchCategories({
				callback:function(categories) {
					dwr.util.addRows("cate", categories, 
							[
							 function(c) {return c.zydm;},
							 function(c) {return c.zymc;}
							 ], 
							{ escapeHtml:false });
				}
			});
		});
	});
	</script>
	<hr />
	<h1>Cascade Select Change Test</h1>
	Major:<select id="category"></select><select id="major"></select>
	
	<script type="text/javascript">
	$(function(){
		majorSer.fetchCategories({
			callback:function(categories) {
				dwr.util.addOptions("category", categories, "zydm", function(c){return c.zydm+" - "+c.zymc;});
			}
		});
		$("#category").change(function(){
			majorSer.fetchMajorsByCategoryCode($("#category").val(), {
				callback:function(majors) {
					dwr.util.removeAllOptions("major");
					dwr.util.addOptions("major", majors, "zydm", function(c){return c.zydm+" - "+c.zymc;});
				}
			});
		});
	});
	</script>
</body>
</html>