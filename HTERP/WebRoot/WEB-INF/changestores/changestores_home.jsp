<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://www.ecside.org" prefix="ec"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="../top.jsp"></jsp:include>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<title></title>
<script type="text/javascript">
		function ajax(obj){
	  		var url = "${pageContext.request.contextPath }/admin/changestores/changestores_getSupplierInfoById.html?supid="+obj.value;
	  		new Ajax.Request(url,
	  	  	{
	  	  		method:'get',
	  	  		onSuccess: function(data){
	  	  			var jsonData = eval("("+data.responseText+")");
	  	  			document.getElementById("labSuppCode").innerHTML = jsonData.name;
	  	  		}
	  	  	});
	  	}
</script>
</head>
<body>
	<div id="container" class="container">


		<div class="hr10"></div>

		<div class="hr10"></div>
		<h2>转库</h2>

		<table class="m-table-form">
			<tbody>
				<tr>
					<th width="50%" height="40" class="tr">供&nbsp;应&nbsp;商：</th>
					<td height="40">
						<s:select name="material.supplyId"
						   onchange="ajax(this)"
						   cssClass="u-ipt required validate-selection"
					       list="#request.supplierList"
					       listKey="uuid" listValue="code" headerKey="-1"
					       headerValue="--请选择--" />
					</td>
				</tr>

				<tr>
					<th height="40" class="tr">供应商代码：</th>
					<td height="40">
						<label id="labSuppCode"></label>
					</td>
				</tr>
				<tr>
					<th height="40" class="tr">华天材料号：</th>
					<td height="40"><label id="labSuppHtId"></label></td>
				</tr>
				<tr>
					<th height="40" class="tr">密&nbsp;&nbsp;&nbsp;度：</th>
					<td height="40"><label id="labSuppMd"></label></td>
				</tr>
				<tr>
					<th height="40" class="tr">厚&nbsp;&nbsp;&nbsp;度：</th>
					<td height="40"><label id="labSuppHd"></label></td>
				</tr>
				<tr>
					<th height="40" class="tr">入库时间：</th>
					<td height="40"><label id="labSuppCode"></label></td>
				</tr>
				<tr>
					<th height="40" class="tr">描&nbsp;&nbsp;&nbsp;述：</th>
					<td height="40">请问请问请问请问</td>
				</tr>
				<tr>
					<th height="40" class="tr">现在所在库：</th>
					<td height="40">E</td>
				</tr>
				<tr>
					<th height="40" class="tr">要&nbsp;转&nbsp;到：</th>
					<td height="40">
						<s:select name="product.area"
						   cssClass="u-ipt required validate-selection"
					       list="#request.warehouseList"
					       listKey="warehouseId" listValue="sign1" headerKey="-1"
					       headerValue="--请选择--" />
					</td>
				</tr>
			</tbody>
		</table>
		<p>
			<label></label>
		</p>
		<br>
		<p align="center">
			<input name="button" type="submit" class="u-btn" id="button"
				value="提交"> <input name="button" type="submit" class="u-btn"
				id="button" value="取消">
		</p>
		<div class="hr10">
			<!--javascript end-->
		</div>
	</div>

	<!-- /#container -->
	<!--javascript start-->
	<!--javascript end-->
</body>
</html>