﻿<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%
	HashMap user = Info.getUser(request);
	String uname = user.get("uname").toString();
	String utype = user.get("utype").toString();
	String userid = user.get("id").toString();
%>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<style type="text/css">
<!--
.mytab {
	font-size: 12px;
	width: 100%;
	line-height: 150%;
	text-decoration: none;
	word-wrap: break-word;
	border: #DBE6E3 solid 1px;
	border-bottom: 0;
	border-right: 0;
	border-left: #DBE6E3 solid 1px;
	line-height: 175%;
	margin: 1px 1px;
	margin-left: 0px;
}

.mytab td {
	padding: 2px 5px;
	border: #DBE6E3 solid 1px;
	border-left: 0;
	border-top: 0;
}

body {
	margin-left: 3px;
	margin-top: 0px;
	margin-right: 3px;
	margin-bottom: 0px;
}

.STYLE1 {
	color: #e1e2e3;
	font-size: 12px;
}

.STYLE6 {
	color: #000000;
	font-size: 12;
}

.STYLE10 {
	color: #000000;
	font-size: 12px;
}

.STYLE19 {
	color: #344b50;
	font-size: 12px;
}

.STYLE21 {
	font-size: 12px;
	color: #3b6375;
}

.STYLE22 {
	font-size: 12px;
	color: #295568;
}
-->
</style>
<script type="text/javascript" src="/qzzp_sys/js/popup.js"></script>
<script>
var  highlightcolor='#d5f4fe';
//此处clickcolor只能用win系统颜色代码才能成功,如果用#xxxxxx的代码就不行,还没搞清楚为什么:(
var  clickcolor='#51b2f6';
function  changeto(){
source=event.srcElement;
if  (source.tagName=="TR"||source.tagName=="TABLE")
return;
while(source.tagName!="TD")
source=source.parentElement;
source=source.parentElement;
cs  =  source.children;
//alert(cs.length);
if  (cs[0].style.backgroundColor!=highlightcolor&&source.id!="nc"&&cs[0].style.backgroundColor!=clickcolor)
for(i=0;i<cs.length;i++){
	cs[i].style.backgroundColor=highlightcolor;
}
}

function  changeback(){
if  (event.fromElement.contains(event.toElement)||source.contains(event.toElement)||source.id=="nc")
return
if  (event.toElement!=source&&cs[0].style.backgroundColor!=clickcolor)
//source.style.backgroundColor=originalcolor
for(i=0;i<cs.length;i++){
	cs[i].style.backgroundColor="";
}
}

function  clickto(){
source=event.srcElement;
if  (source.tagName=="TR"||source.tagName=="TABLE")
return;
while(source.tagName!="TD")
source=source.parentElement;
source=source.parentElement;
cs  =  source.children;
//alert(cs.length);
if  (cs[0].style.backgroundColor!=clickcolor&&source.id!="nc")
for(i=0;i<cs.length;i++){
	cs[i].style.backgroundColor=clickcolor;
}
else
for(i=0;i<cs.length;i++){
	cs[i].style.backgroundColor="";
}
}
</script>

</head>

<%
	new CommDAO().delete(request, "zpinfo");
	String id = request.getParameter("id");
	String erjitype = request.getParameter("erjitype");
	String myztree = request.getParameter("myztree");
	HashMap ext = new HashMap();
	new CommDAO().update(request, response, "zpinfo", ext, true, true);
	HashMap mmm = new CommDAO().getmap(id, "zpinfo");
%>
<body>
	<form action="zpinfoxg.jsp?f=f&id=<%=mmm.get("id")%>" name="f1"
		onSubmit="return checkform()">
		<table width="100%" border="0" align="center" cellpadding="0"
			cellspacing="0">

			<tr>
				<td height="30"><table width="100%" border="0" cellspacing="0"
						cellpadding="0">
						<tr>
							<td height="24" bgcolor="#353c44"><table width="100%"
									border="0" cellspacing="0" cellpadding="0">
									<tr>
										<td><table width="100%" border="0" cellspacing="0"
												cellpadding="0">
												<tr>
													<td width="3%" height="19" valign="bottom">&nbsp;</td>
													<td width="97%" valign="bottom"><span class="STYLE1">
															信息修改&nbsp;&nbsp;</span></td>
												</tr>
											</table></td>
										<td></td>
									</tr>
								</table></td>
						</tr>
					</table></td>
			</tr>


			<tr>
				<td><table width="100%" border="0" cellpadding="0"
						cellspacing="0" bgcolor="#a8c7ce" class="mytab"
						onMouseOver="changeto()" onmouseout="changeback()">
						<tr>
							<td width="21%" height="30" align="center" bgcolor="#FFFFFF"
								class="STYLE19">岗位名称</td>
							<td width="79%" height="30" align="left" bgcolor="#FFFFFF"
								class="STYLE19">&nbsp;<input type=text onblur='checkform()'
								class='' id='title' name='title' size=35 /><label
								id='clabeltitle' /></td>
						</tr>
						<tr>
							<td width="21%" height="30" align="center" bgcolor="#FFFFFF"
								class="STYLE19">招聘人数</td>
							<td width="79%" height="30" align="left" bgcolor="#FFFFFF"
								class="STYLE19">&nbsp;<input type=text onblur='checkform()'
								class='' id='zprs' name='zprs' size=35 /><label id='clabelzprs' /></td>
						</tr>
						<tr>
							<td width="21%" height="30" align="center" bgcolor="#FFFFFF"
								class="STYLE19">工作地点</td>
							<td width="79%" height="30" align="left" bgcolor="#FFFFFF"
								class="STYLE19">&nbsp; <select id="gzdd" name="gzdd">
									<option value="">请选择</option>
									<%
										ArrayList<HashMap> arealist = (ArrayList<HashMap>) new CommDAO()
												.select("select * from area where delstatus='0'");
										for (HashMap areamap : arealist) {
									%>
									<option value="<%=areamap.get("id")%>"><%=areamap.get("addr")%></option>
									<%
										}
									%>
							</select>
							</td>
						</tr>
						<tr>
							<td width="21%" height="30" align="center" bgcolor="#FFFFFF"
								class="STYLE19">学历要求</td>
							<td width="79%" height="30" align="left" bgcolor="#FFFFFF"
								class="STYLE19">&nbsp;<span id="xldanx"><label><input
										type=radio name='xl' value='高中' />&nbsp;高中 </label> <label><input
										type=radio name='xl' value='大专' />&nbsp;大专 </label> <label><input
										type=radio name='xl' value='本科' />&nbsp;本科 </label> <label><input
										type=radio name='xl' value='硕士' />&nbsp;硕士 </label> <label><input
										type=radio name='xl' value='博士' />&nbsp;博士 </label> </span></td>
						</tr>
						<tr>
							<td width="21%" height="30" align="center" bgcolor="#FFFFFF"
								class="STYLE19">技能要求</td>
							<td width="79%" height="30" align="left" bgcolor="#FFFFFF"
								class="STYLE19">&nbsp;<input type=text class='' id='jl'
								name='jl' size=35 /></td>
						</tr>
						<tr>
							<td width="21%" height="30" align="center" bgcolor="#FFFFFF"
								class="STYLE19">招聘类别</td>
							<td width="79%" height="30" align="left" bgcolor="#FFFFFF"
								class="STYLE19">&nbsp;<span id="infotypedanx"><label><input
										type=radio name='infotype' value='社会招聘' />&nbsp;社会招聘 </label> <label><input
										type=radio name='infotype' value='定向招聘' />&nbsp;定向招聘 </label> <label><input
										type=radio name='infotype' value='校园招聘' />&nbsp;校园招聘 </label> </span></td>
						</tr>
						<tr>
							<td width="21%" height="30" align="center" bgcolor="#FFFFFF"
								class="STYLE19">招聘要求</td>
							<td width="79%" height="30" align="left" bgcolor="#FFFFFF"
								class="STYLE19">&nbsp;<input type=text class='' id='bei'
								name='bei' size=35 /></td>
						</tr>

						<tr>
							<td width="21%" height="30" align="center" bgcolor="#FFFFFF"
								class="STYLE19">工作内容</td>
							<td width="79%" height="30" align="left" bgcolor="#FFFFFF"
								class="STYLE19">&nbsp; <input type=text class='' id='gznr'
								name='gznr' size=35 />
							</td>
						</tr>
						<tr>
							<td width="21%" height="30" align="center" bgcolor="#FFFFFF"
								class="STYLE19">工资待遇</td>
							<td width="79%" height="30" align="left" bgcolor="#FFFFFF"
								class="STYLE19">&nbsp;<input type=text onblur='checkform()'
								class='' id='dy' name='dy' size=35 /><label id='clabeldy' /></td>
						</tr>
						<tr>
							<td width="21%" height="30" align="center" bgcolor="#FFFFFF"
								class="STYLE19">福利说明</td>
							<td width="79%" height="30" align="left" bgcolor="#FFFFFF"
								class="STYLE19">&nbsp; <textarea cols='35'
									style='margin-top: 1px; margin-bottom: 1px' class='' name='fl'></textarea>
							</td>
						</tr>
						<tr>
							<td width="21%" height="30" align="center" bgcolor="#FFFFFF"
								class="STYLE19">需求专业</td>
							<td width="79%" height="30" align="left" bgcolor="#FFFFFF"
								class="STYLE19">&nbsp; <textarea cols='35'
									style='margin-top: 1px; margin-bottom: 1px' class='' name='zhuanye'></textarea>
							</td>
						</tr>

						<tr>
							<td height="30" colspan="2" align="center" bgcolor="#FFFFFF"
								class=""><label> <input type="submit" name="Submit"
									value="提交信息" /> &nbsp;&nbsp;&nbsp; <input type=button
									value='返回上页' onclick='popclose();' />
							</label></td>
						</tr>
					</table></td>
			</tr>
		</table>
	</form>
</body>
</html>
<script language=javascript
	src='/qzzp_sys/js/My97DatePicker/WdatePicker.js'></script>
<script language=javascript src='/qzzp_sys/js/ajax.js'></script>
<script language=javascript src='/qzzp_sys/js/popup.js'></script>
<%@page import="util.Info"%>
<%@page import="util.Info"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.HashMap"%>
<%@page import="util.PageManager"%>
<%@page import="dao.CommDAO"%>
<script language=javascript>  
 
</script>
<script language=javascript>  
 function checkform(){  
var titleobj = document.getElementById("title");  
if(titleobj.value==""){  
document.getElementById("clabeltitle").innerHTML="&nbsp;&nbsp;<font color=red>请输入岗位名称</font>";  
return false;  
}else{ 
document.getElementById("clabeltitle").innerHTML="  ";  
}  
var zprsobj = document.getElementById("zprs");  
if(zprsobj.value==""){  
document.getElementById("clabelzprs").innerHTML="&nbsp;&nbsp;<font color=red>请输入招聘人数</font>";  
return false;  
}else{ 
document.getElementById("clabelzprs").innerHTML="  ";  
}  
var dyobj = document.getElementById("dy");  
if(dyobj.value==""){  
document.getElementById("clabeldy").innerHTML="&nbsp;&nbsp;<font color=red>请输入工资待遇</font>";  
return false;  
}else{ 
document.getElementById("clabeldy").innerHTML="  ";  
}  
return true;   
}   
var frames = parent.document.getElementsByTagName("iframe");
for(var i=0;i<frames.length;i++){ 
var alliframe = parent.document.getElementsByTagName("iframe")[i];  
if(alliframe.name=="ifr_popup0")
alliframe.style.height=document.body.scrollHeight+4; 
} 
</script>
<%=Info.tform(mmm)%>
<script language=javascript>  
 
</script>
<%=Info.tform(mmm)%>
