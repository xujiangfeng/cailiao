<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	pageContext.setAttribute("path",path);
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>My JSP 'en_bs_EDUCATION.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<script src="${pageContext.request.contextPath}/ckeditor/ckeditor.js"></script>
<script src="${pageContext.request.contextPath}/ckfinder/ckfinder.js"></script>
<script type="text/javascript">

function formCheck33()
   {   
     
     if(document.form1.dmName.value==''){   
   		alert("请填写名称");   
   		document.form1.dmName.focus();   
   		return false;
   	}  
 	else if(document.form1.dmIntroduce.value==null){   
   		alert("内容不允许为空！");   
   		document.form1.dmIntroduce.focus();   
   		return false;
   	}  
 }
    
</script>
  </head>
  
  <body>
    <div>
	<div> 
	<form action="${pageContext.request.contextPath}/servlet/modifEducation?id=001" method="post" name="form1" onsubmit="return formCheck33();" id="form1">
	<table class="right-table" width="70%" height="90%" border="0px" cellpadding="0" align="center" cellspacing="0" >
		<tr >
			<td colspan="2" align="center" ><a>modif Education</a></td>
		</tr>
		<tr>
		 <td colspan="2">
				<textarea   rows="8" cols="15" name="Education">${Education}</textarea>
				<script type="text/javascript">
			    	var editor =CKEDITOR.replace('Education', {
						uiColor: '#FFFFFF',
						filebrowserUploadUrl : '${path}/ckeditor/uploader?Type=File',
						filebrowserImageUploadUrl : '${path}/ckeditor/uploader?Type=Image',
						filebrowserFlashUploadUrl : '${path}/ckeditor/uploader?Type=Flash'
					});
			    	CKFinder.setupCKEditor( editor, 'ckfinder/' );
			    </script>
			    
			</td> 
		</tr>
		<tr>
			<td >
				<input type="submit" value="修改" />
			</td>
		</tr>
	</table>
</form>
 </div></div>
  </body>
</html>
