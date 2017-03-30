<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/functions"  prefix="fn"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><head>
<meta http-equiv="Content-Type" content="text/html; charset=gbk">
<title>材料分析与测试中心</title>
<meta name="description" content="">
<meta name="keywords" content="">
<link href="images/cailiao_yuanhui.png" rel="shortcut icon"/>
<link href="./css/dedecms.css" rel="stylesheet" media="screen" type="text/css">
<link href="./css/page.css" rel="stylesheet" media="screen" type="text/css">
<link href="./css/layout.css" rel="stylesheet" media="screen" type="text/css">
<meta http-equiv="mobile-agent" content="format=xhtml;url=/m/view.php?aid=">
<script type="text/javascript">if(window.location.toString().indexOf('pref=padindex') != -1){}else{if(/AppleWebKit.*Mobile/i.test(navigator.userAgent) || (/MIDP|SymbianOS|NOKIA|SAMSUNG|LG|NEC|TCL|Alcatel|BIRD|DBTEL|Dopod|PHILIPS|HAIER|LENOVO|MOT-|Nokia|SonyEricsson|SIE-|Amoi|ZTE/.test(navigator.userAgent))){if(window.location.href.indexOf("?mobile")<0){try{if(/Android|Windows Phone|webOS|iPhone|iPod|BlackBerry/i.test(navigator.userAgent)){window.location.href="/m/view.php?aid=";}else if(/iPad/i.test(navigator.userAgent)){}else{}}catch(e){}}}}</script>
<script language="javascript" type="text/javascript" src="./js/dedeajax2.js"></script>
<script language="javascript" type="text/javascript" src="./js/j.js"></script>
<script language="javascript" type="text/javascript" src="./js/pic_scroll.js"></script>
 <%@ include file="../base.jsp"%> 
<script language="javascript" type="text/javascript">
	$(function(){
		$("a[_for]").mouseover(function(){
			$(this).parents().children("a[_for]").removeClass("thisclass").parents().children("dd").hide();
			$(this).addClass("thisclass").blur();
			$("#"+$(this).attr("_for")).show();
		});
		$("a[_for=uc_member]").mouseover();
		$("a[_for=flink_1]").mouseover();
	});
	
	function CheckLogin(){
	  var taget_obj = document.getElementById('_userlogin');
	  myajax = new DedeAjax(taget_obj,false,false,'','','');
	  myajax.SendGet2("/member/ajax_loginsta.php");
	  DedeXHTTP = null;
	}
</script>
</head>
<body class="index">
<div class="header_top">  
    <div class="w960 center">  
     <span class="time">欢迎访问</span><span class="time">哈尔滨理工大学-材料科学与工程学院！</span>
     <div class="toplinks">
	  <span id="time">
	 <script language="javascript" type="text/javascript">
	window.onload=function (){
		setInterval("document.getElementById('time').innerHTML=new Date().toLocaleString()+' 星期'+'日一二三四五六'.charAt(new Date().getDay());",1000);
	}
</script></div>
</div> 
</div>
<div class="header">
	<div class="top w960 center">
      <div class="title">
        <a href="./toTestCenterWeb.jsp"><img src="./images/cailiao.png" alt="材料学院" height="150" width="960"></a>
      </div>
       </div><!-- //top -->
	<!-- //菜单 -->
	<div class="module blue mT10 wrapper w963">
  	<div class="top">
    	<!-- //如果不使用currentstyle，可以在channel标签加入 cacheid='channeltoplist' 属性提升性能 -->
    <div id="navMenu">
    	<ul>
    	<!-- # 跳转到主界面 -->
      	<li><a href="./toTestCenterWeb.jsp"><span>主页</span></a></li>
      	
      	<li><a href="testCenterInfoServlet?op=toCenterSurveyType&typeId=1"rel="dropmenu11"><span>中心概况</span></a></li>
      	
      	<li><a href="instrumentServlet?op=toInstrumentType&typeId=1" rel="dropmenu40"><span>仪器一览</span></a></li>
      	
      	<li><a href="serviceGuideServlet?op=toServiceGuideType&typeId=1" rel="dropmenu23"><span>服务指南</span></a></li>
      	
      	<li><a href="accreditationServlet?op=toAccreditationType&typeId=1" rel="dropmenu60"><span>计量认证</span></a></li>
      	
      	<li><a href="samplePhotoServlet?op=toSamplePhotoType&typeId=1" rel="dropmenu29"><span>示例照片</span></a></li>
      	
      	<li><a href="./toFirstWeb.jsp"  target="_blank" ><span>学院主页</span></a></li>
      	
    	</ul>
    </div>
<!--导航结束-->
		</div>
	</div>
</div><!--end header-->
 
<!-- /header -->



<!-- 

show content
-->
<div class="w960 center clear mt1">
 <div class="pright">
  <div class="flashnews">
  <!-- size: 712px * 235px -->

 <li> </li>

</div>
<!-- /flashnews -->  
	   <div class="listboxtop">
<dl class="tbox light">
	<dt><!--<div class="news_title index_news_bg">-->
	<strong><a href="testCenterInfoServlet?op=toCenterSurveyType&typeId=8">本站公告</a></strong>
	<span class="more"><a href="testCenterInfoServlet?op=toCenterSurveyType&typeId=8">更多…</a></span><!--</div> --> </dt>
		<dd>
		<ul class="d1 ico3">
<c:forEach items="${requestScope.benzhangg}" var="benzhangg">			
<li><span>${benzhangg. publishTime}</span-->
<a href="testCenterInfoServlet?op=toCenterSurveyDetail&id=${benzhangg.id}&typeId=${requestScope.benzhanggTypeId}">${benzhangg.title }</a>
</li>
</c:forEach>

	 </ul>
	</dd>
	 </dl>
	 </div>
	 <!--顶部内容结束-->

	   <div class="listboxright">
<dl class="tbox light">
	<dt><!--<div class="news_title index_news_bg">-->
	<strong><a href="testCenterInfoServlet?op=toCenterSurveyType&typeId=9">测试安排</a></strong>
	<span class="more"><a href="testCenterInfoServlet?op=toCenterSurveyType&typeId=9">更多…</a></span><!--</div> --> </dt>
		<dd>
		<ul class="d1 ico3">
<c:forEach items="${requestScope.ceshiap}" var="ceshiap">			
<li><span>${ceshiap. publishTime}</span-->
<a href="testCenterInfoServlet?op=toCenterSurveyDetail&id=${ceshiap.id}&typeId=${requestScope.ceshiapTypeId}">${ceshiap.title }</a>
</li>
</c:forEach>
	 </ul>
	</dd>
	 </dl>
	 </div>

	 
   <div class="listboxleft">
<dl class="tbox light">
	<dt><!--<div class="news_title index_news_bg">-->
	<strong><a href="testCenterInfoServlet?op=toCenterSurveyType&typeId=7">重要通知</a></strong>
	<span class="more"><a href="testCenterInfoServlet?op=toCenterSurveyType&typeId=7">更多…</a></span><!--/div --> </dt>
		<dd>
		<ul class="d1 ico3">

<c:forEach items="${requestScope.zhongyaotz}" var="zhongyaotz">		
<li>       
<table class="MsoTableClassic1" border="0" cellpadding="0" cellspacing="0" width="100%">
 <tbody><tr>
  <td style="width:80.0%;" width="80%">
  <p><a href="testCenterInfoServlet?op=toCenterSurveyDetail&id= ${zhongyaotz.id }&typeId=${requestScope.zhongyaotzTypeId}">${zhongyaotz.title}</a></p>
  </td>
  <td style="width:20.0%;" width="20%">
  <p style="text-align:right;padding:0 5.4px 0 0" align="right">${zhongyaotz.publishTime }</p>
  </td>
 </tr>
</tbody></table>
</li>
</c:forEach>

	 </ul>
	</dd>
	 </dl>
	 </div>
<!--右侧内容--> </div>
 	<!-- /listbox -->
 	
 	
 	<!-- /pleft -->
<div class="pleft">
<div class="commend mt2">
	<dl class="tbox light">
	<dt class="light"><a href="testCenterInfoServlet?op=toCenterSurveyType&typeId=5" class="pix12h1_line24"><strong>新闻快递</strong></a></dt>  <!--  重新打开一个界面 target="_blank" -->
	<dd class="light">
	<ul class="d4">
	<p style="line-height: 150%">
	<marquee behavior="scroll" align="absbottom" direction="up" scrollamount="2" scrolldelay="0" onmouseover="this.stop()" onmouseout="this.start()" height="240" width="235">
<c:forEach items="${requestScope.xinwenkuaidi }" var="xinwenkuaidi"><!-- begin="0" end="7" -->
<li><a href="testCenterInfoServlet?op=toCenterSurveyDetail&id= ${xinwenkuaidi.id }&typeId=${requestScope.xinwenkuaidiTypeId}" target="_blank" class="pix12h1_line24">${xinwenkuaidi.title }<span>${xinwenkuaidi.publishTime }</span></a>
<p style="text-indent:1.2em;"></p>
</c:forEach>
</li>

</marquee>
	</p>
	</ul>
	</dd>
	</dl>
	</div>
<!--友情链接开始-->
<dl class="smallimage"><img src="./images/yuanxun.jpg" height="80" width="240"></dl>

	   <dl class="tbox light">
<dt><strong>友情链接</strong></dt>
<!---->
<dd id="flink_9" style="text-indent:1em;"><ul class="f5">
<li><a href="http://www.hrbust.edu.cn/" target="_blank">哈尔滨理工大学</a> </li>
<li><a href="http://www.hit.edu.cn/" target="_blank">哈尔滨工业大学</a></li>
<li><a href="http://www.hlje.net"  target="_blank">黑龙江省教育厅</a></li>
<%-- <li><a href="http://t.cn/RZfqCHv" target="_blank">机械工程实验与实训中心</a> </li>
<li><a href="http://www1.hrbust.edu.cn/zuzhijigou/gongcheng/" target="_blank">工程训练中心</a> </li> --%>
</ul></dd>
<!---->
</dl>

	 <!-- /flink -->
 <!-- /pleft --></div>
 
 
 
<!-- //二级子类下拉菜单 ，考虑SEO原因放置于底部-->
<script type="text/javascript" src="./js/dropdown.js"></script>
<ul id="dropmenu11" class="dropMenu">
	<c:forEach items="${requestScope.testCenterTypeList}" var="teCTL">  
                              	
			<li>	
				<a href="testCenterInfoServlet?op=toCenterSurveyType&typeId=${teCTL.id }"> ${teCTL.typeName} </a>
        	 </li>
     </c:forEach> 

</ul>
<!-- <ul id="dropmenu40" class="dropMenu">


</ul> -->
<ul id="dropmenu23" class="dropMenu">

	<c:forEach items="${requestScope.serviceTypeList}" var="serviceType">  
                              	
<li>	
	<a href="serviceGuideServlet?op=toServiceGuideType&typeId=${serviceType.id }"> ${serviceType.typeName} </a>
  </li>
     </c:forEach> 

</ul><ul id="dropmenu60" class="dropMenu">

	<c:forEach items="${requestScope.accreditationTypeList}" var="accreditationTypeList">  
                              	
<li>	
	<a href="accreditationServlet?op=toAccreditationType&typeId=${accreditationTypeList.id }"> ${accreditationTypeList.typeName} </a>
  </li>
     </c:forEach> 

</ul><ul id="dropmenu29" class="dropMenu">

	<c:forEach items="${requestScope.photoTypeList}" var="photoTypeList">  
                              	
<li>	
	<a href="samplePhotoServlet?op=toSamplePhotoType&typeId=${photoTypeList.id }"> ${photoTypeList.typeName} </a>
  </li>
     </c:forEach>

</ul>
<script type="text/javascript">cssdropdown.startchrome("navMenu")</script>
<!-- //底部模板 -->
<div class="footer w960 center mt1 clear">
	<!-- 
		为了支持狼人开发团队的发展,请您保留狼人内容管理系统的链接信息.
		我们对支持狼人开发团队发展的朋友表示真心的感谢!狼人开发因您更精彩!
	-->
    <!--<div class="footer_left">.gotop{
	display:block;
	height:25px;
	line-height:25px;
	align;center;
	text-align:center;
	background:url(./images/top.gif) center no-repeat;
	<img src="./images/top.gif" height="25" width="65" alt="返回顶部"/></div>-->
    	<div class="gotop">
		<a href="javascript:scroll(0,0)"><span>　<br>　<br>　<br>　<br></span></a>
		</div>
	<div class="footer_body">
	
	<div class="copyright">
	<font face="Times New Roman">版权所有: 哈尔滨理工大学-材料分析测试中心</font>
<!-- /powered -->
   </div>
   <!--<div class="footer_right"></div>-->
</div>
<p><a href="./log_testCenter.jsp" target="_blank">后台入口</a></p>
<!-- /footer -->

</div></div></body></html>