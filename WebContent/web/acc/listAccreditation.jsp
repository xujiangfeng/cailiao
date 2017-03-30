<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- 这个语句是用来拼装当前网页的相对路径的。 -->
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>类型列表</title>
<link href="share/images/favicon.ico" rel="shortcut icon"/>
<link rel="stylesheet" type="text/css" href="share/css/share.css"/>
<link rel="stylesheet" type="text/css" href="admin/css/default/listNewsDetail.css"/>
<link rel="stylesheet" type="text/css" href="admin/css/default/share.css"/>
<script src="share/js/jquery-1.11.0.min.js" type="application/javascript"></script>
<script type="text/javascript" src="share/js/jsUtil.js"></script>
<script src="admin/js/index.js" type="application/javascript"></script>
<style type="text/css">
	body{
		background-image: url("images/bg_accreditationList1.jpg");
		background-position:-100px -300px;
	}
	.enableStyle{
		background-color: ;
		color:black;
	}
	.disableStyle{
		background-color: red;
		color: white;
	}
</style>
<script type="text/javascript">
function checkSelected(){
	var flag=false;
	var ids=document.getElementsByName("ids");
	for(var i=0;i<ids.length;i++){
		if(ids[i].checked){
			flag=true;
			break;
		}
	}
	if(!flag){
		alert("请选择需要删除的数据！");
	}else{
		if(confirm("确定要删除选中的数据吗？")){
			document.myform.submit();
		}
	}
}
function clearForm(){
	document.getElementById("title").value="";
	document.getElementById("content").value="";
	document.getElementById("typeId").value="-1";
	document.getElementById("topper").value="-1";
	document.getElementById("bold").value="-1";
	document.getElementById("color").value="-1";
	document.searchForm.submit();
}
//定义一个变量用于存放XMLHttpRequest对象
var xmlHttp;
//定义一个按钮
var myButton;
function createXMLHttpRequest() {
	if (window.ActiveXObject) {
		xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
	} else if (window.XMLHttpRequest) {
		xmlHttp = new XMLHttpRequest();
	}
}
//处理从服务器返回的信息
function processor() {
	if (xmlHttp.readyState == 4) { //如果响应完成
		if (xmlHttp.status == 200) {//如果返回成功
			//修改按钮信息
			if(myButton.value=="通过"){
				myButton.value="未通过";
				myButton.className="enableStyle";
			}else{
				myButton.value="通过";
				myButton.className="disableStyle";
			}
		}
	}
}

function changeStatus(clickedButton,id){
	myButton=clickedButton;
	createXMLHttpRequest();
	//将状态触发器绑定到一个函数
	xmlHttp.onreadystatechange = processor;
	//通过GET方法向指定的URL建立服务器的调用
						
	xmlHttp.open("GET", "accreditationServlet?op=changeStatus&id="+id );
	//发送请求
	xmlHttp.send(null);
}
</script>
 <style type="text/css">
.div1{
float:left;
margin-left:30px;
}
.div2{
/* float:right; */
margin-right:10px;
margin-top:30px;
}
.div3{
Margin-top:;
Margin-right:;
Margin-bottom:;
Margin-left:;
}
</style> 
</head>
 <div class="position">　<a style="font-size:14px;text-decoration:none;color:#FFAA33;" >当前位置：计量认证管理　&gt;&gt;　信息列表　</a> 
<body>
<div class="div3">
<div class="div1">
<form name="searchForm" action="accreditationServlet?op=search" method="post">
	<tbody>
	<table class="right-table" width="120%"  border="0px" cellpadding="0" align="center" cellspacing="0">
		<tr>
			<th colspan="2">查询条件</th>
		</tr>
		<tr>
			<td>标题</td>
			<td><input type="text" id="title" name="title" value="${requestScope.accreditation.title }"</td>
		</tr>
		<tr>
			<td>内容关键字</td>
			<td><input type="text" id="content" name="content" value="${requestScope.accreditation.content }"</td>
		</tr>
		<tr>
			<td>信息类型</td>
			<td>
				<select name="typeId" id="typeId">
					<option value="-1">--请选择--</option>
					<c:forEach items="${requestScope.accreditationTypeList }" var="accreditationType">
						<option value="${accreditationType.id }" ${accreditationType.id==requestScope.accreditation.typeId?"selected='selected'":"" }>${accreditationType.typeName }</option>	
					</c:forEach>
				</select>
			</td>
		</tr>
		<%-- <tr>
			<td>置顶</td>
			<td>
				<select name="topper" id="topper">
					<option value="-1">--请选择--</option>
					<option value="0" ${requestScope.accreditation.topper==0?"selected='selected'":"" }>正常</option>
					<option value="1" ${requestScope.accreditation.topper==1?"selected='selected'":"" }>置顶</option>
				</select>
			</td>
		</tr>
		<tr>
			<td>加粗</td>
			<td>
				<select name="bold" id="bold">
					<option value="-1">--请选择--</option>
					<option value="0" ${requestScope.accreditation.bold==0?"selected='selected'":"" }>正常</option>
					<option value="1" ${requestScope.accreditation.bold==1?"selected='selected'":"" }>加粗</option>
				</select>
			</td>
		</tr>
		<tr>
			<td>颜色</td>
			<td>
				<select name="color" id="color">
					<option value="-1">--请选择--</option>
					<option value="0"  ${requestScope.accreditation.color==0?"selected='selected'":"" }>黑色</option>
					<option value="1"  ${requestScope.accreditation.color==1?"selected='selected'":"" }>红色</option>
					<option value="2"  ${requestScope.accreditation.color==2?"selected='selected'":"" }>蓝色</option>
					<option value="3"  ${requestScope.accreditation.color==3?"selected='selected'":"" }>黄色</option>
				</select>
			</td>
		</tr> --%>
		<tr>
			<td>发布者</td>
			<td><input type="text" name="userName"  value="${sessionScope.loginUser_testCenter.userName }"</td>
		</tr>
		<tr>
			<td colspan="2">
				<input type="submit" value="查询"/>
				<input type="button" value="清空条件" onclick="clearForm()"/>
			</td>
		</tr>
	</table>
	</tbody>
</form>
</div>
<div class="div2">
<form name="myform" method="post" action="accreditationServlet?op=batchDelete">
	<tbody>
	<table class="right-table" width="60%"  border="0px" cellpadding="0" align="center" cellspacing="0">
		<tr>
			<th>编号</th>
			<th>标题</th>
			<!-- <th>发布者</th> -->
			<th>类型</th>
			<th>发布时间</th>
			<th>编辑</th>
			<th>删除</th>
			<c:if test="${sessionScope.loginUser_testCenter.status le 2}">
			<th>审核</th>
			</c:if>
		</tr>
		<c:forEach items="${requestScope.accreditationList }"  var="accreditation" varStatus="status">
				<tr style="background-color: ${status.index%2==0?'':'#4F4F4F' } ">
				<td>
					<%-- <input type="checkbox" name="ids" value="${accreditation.id }"/> --%>
					${accreditation.id }
				</td>
				<td><%-- <a href="accreditationServlet?op=toNewsDetail&id=${accreditation.id }" target="_blank"></a> --%>${accreditation.title }</td>
			 <%--    <td nowrap>${accreditation.author }</td> --%>
				<td nowrap>${accreditation.typeName }</td> 
				<td nowrap>${accreditation.publishTime }</td>
				<td nowrap><a href="accreditationServlet?op=toEdit&id=${accreditation.id }">编辑</a></td>
				<td nowrap><a href="accreditationServlet?op=delete&id=${accreditation.id }">删除</a></td>
				<c:if test="${sessionScope.loginUser_testCenter.status le 2}">
				<td><%-- ${user.status==1?'可用':'<font color=red>禁用</font>' } --%>
					<c:if test="${accreditation.pass==1}">
						<input type="button" value="未通过" class="enableStyle" onclick="changeStatus(this,${accreditation.id })"/>
					</c:if>
					<c:if test="${accreditation.pass==0}">
						<input type="button" value="通过" class="disableStyle" onclick="changeStatus(this,${accreditation.id })"/>
					</c:if>
				</td>
				</c:if>
			</tr>
		</c:forEach>
		<tr>
			<td colspan="7" >
				<!-- <input type="button" value="批量删除" onclick="checkSelected()"/> -->
				<div id="page">
            <ul>
            <li class="first"><a href="accreditationServlet?op=list&pageNo=1">&nbsp;首页&nbsp;</a></li>
            <li class="upPage"><a href="accreditationServlet?op=list&pageNo=${sessionScope.pageBean.prePage }">&nbsp;上一页&nbsp;</a></li>
            <li class="nextPage"><a href="accreditationServlet?op=list&pageNo=${sessionScope.pageBean.nextPage }">&nbsp;下一页&nbsp;</a></li>
            <li class="lastPage"><a href="accreditationServlet?op=list&pageNo=${sessionScope.pageBean.pageCount }">&nbsp;末页&nbsp;</a></li>
            </ul>
        </div>
			</td>
		</tr>
	</table>
	</tbody>
	</form>
	</div>
	</div>
</body>
</html>