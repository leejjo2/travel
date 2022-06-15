<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<script type="text/javascript">
function ajaxFun(url, method, query, dataType, fn) {
	$.ajax({
		type:method,
		url:url,
		data:query,
		dataType:dataType,
		success:function(data){
			console.log(data);
			fn(data);
		},
		error:function(e) {
			console.log(e.responseText);
		}
	});
}

$(function(){
	foodView()
});	
	
function foodView() {
	var contentid = "${contentid}";
	if(! contentid ) {
		return;
	}
	
	var url= "http://api.visitkorea.or.kr/openapi/service/rest/KorService/detailIntro";
	var query = "ServiceKey=InzkX%2FX%2BXNAD%2FtYGagIlsUrwmw%2BbVRjVDbYwVBfCzqGEFY3sVVGr7tI4jjKoHTUATqBPgV4Afi1kHqo5nzeBiA%3D%3D";
	query += "&MobileApp=AppTest&MobileOS=WIN&contentTypeId=39";
	
	var fn = function(data) {
		printXML(data);
	};
	
	ajaxFun(url, "get", query, "xml", fn);
}
	
function printXML(data) {
	var out="";
	
	console.log(data);
}

</script>


<div>
	<p>1</p>
</div>
		
		
