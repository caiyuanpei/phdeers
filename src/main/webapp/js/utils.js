function openAutoShowDescript() {
	$(":text,select").focus(function(){$(".for_"+$(this).attr('id')).slideDown();}).blur(function(){$(".for_"+$(this).attr('id')).slideUp();});
}

function ajaxInitProvinces(provinceId) {
	regionSer.fetchProvinces({
		callback:function(provinces) {
			dwr.util.addOptions(provinceId, provinces, "dm", /*function(c){return c.dm+" - "+c.mc;}*/"mc");
		}
	});
}

function ajaxInitNations(nationId) {
	nationSer.fetchNations({
		callback:function(nations) {
			dwr.util.addOptions(nationId, nations, "dm", /*function(c){return c.dm+" - "+c.mc;}*/"mc");
		}
	});
}

function ajaxRegion(provinceId, regionId) {
	$("#"+provinceId).change(function(){
		regionSer.fetchRegions2($(this).val(), {
			callback:function(regionsMap) {
				$("#"+regionId).html("<option value=\"------\">-请选择-</option>");
				for(var regionGrp in regionsMap) {
					var g = $("<optgroup label=\""+regionGrp+"\"></optgroup>");
					for(var i in regionsMap[regionGrp]) {
						var region = regionsMap[regionGrp][i];
						var r = $("<option value=\""+region.dm+"\">"+region.mc+"</option>");
						g.append(r);
					}
					$("#"+regionId).append(g);
					
				}
			}
		});
	});
}