<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="java.sql.Connection"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<!-- saved from url=(0031)http://www.qyyqyj.com/index.jsp -->
<HTML xmlns="http://www.w3.org/1999/xhtml"><HEAD><TITLE>大学生求职招聘系统</TITLE>
<LINK rel=stylesheet type=text/css 
href="style/css.css">

<STYLE type=text/css>BODY {
	BACKGROUND-IMAGE: none; MARGIN: 0px
}
</STYLE>
<LINK rel=stylesheet type=text/css href="qzzp_sys_files/style.css">
<STYLE type=text/css>.STYLE3 {
	COLOR: #333333; FONT-SIZE: 12px
}
A:link {
	TEXT-DECORATION: none
}
A:visited {
	TEXT-DECORATION: none
}
A:hover {
	TEXT-DECORATION: none
}
A:active {
	TEXT-DECORATION: none
}
</STYLE>

<META content="text/html; charset=utf-8" http-equiv=Content-Type>
<META name=GENERATOR content="MSHTML 8.00.6001.19222"></HEAD>
<BODY>
<TABLE border=0 cellSpacing=0 cellPadding=0 width=1002 align=center>
  <TBODY>
  <TR>
    <TD background=qzzp_sys_files/bj.jpg align=middle>
      <TABLE border=0 cellSpacing=0 cellPadding=0 width=800>
        <TBODY>
       
       
       
       
       
       
       
       <jsp:include page="top.jsp"></jsp:include>
                  
                  
                  
                  
                  
                  
                  
                  
        <TR>
          <TD vAlign=top>
            <TABLE border=0 cellSpacing=0 cellPadding=0 width="100%">
              <TBODY>
              <TR>
                
                
                
                
                
                
                 <jsp:include page="left.jsp"></jsp:include>
                
                
                
                
                
                
                
                
                
                <TD valign="top">
                
                
                <form action="/qzzp_sys/qzzp_sys?ac=regmember" onSubmit="return check();" name="f1" enctype="multipart/form-data" >
                <TABLE 
                          width="100%" border=0 align="center" cellPadding=0 cellSpacing=0>
                  <TBODY>
                    <TR>
                      <TD><TABLE border=0 cellSpacing=0 cellPadding=0 
                              width="100%">
                          <TBODY>
                            <TR>
                              <TD height=10 colSpan=2></TD>
                            </TR>
                            <TR>
                              <TD width=228 background="qzzp_sys_files/ny_y3.jpg" height="37" align="left">
                              
                             <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 求职技巧</strong></TD>
                              <TD 
                                background=qzzp_sys_files/ny_ybj.jpg>&nbsp;</TD>
                            </TR>
                          </TBODY>
                      </TABLE></TD>
                    </TR>
                    <TR>
                      <TD height=20>&nbsp;</TD>
                    </TR>
                    <TR>
                      <TD class=css vAlign=top align=left><TABLE border=0 cellSpacing=0 cellPadding=0 
                              width="100%">
                          <TBODY>
                           
                           
                              <%
        String key=request.getParameter("key")==null?"":request.getParameter("key"); 
        PageManager pageManager = PageManager.getPage("gfcs.jsp?1=1",4, request);
	    pageManager.doList("select * from hbnews where infotype='新闻' and title like'%"+key+"%'  order by id desc");
	    PageManager bean= (PageManager)request.getAttribute("page");
	    ArrayList<HashMap> nlist=(ArrayList)bean.getCollection();
	    
	   
	    for(HashMap m :nlist)
	    {
                            %>
                            <TR>
                              <TD class=css align=left> 
                              &nbsp;&nbsp;&nbsp;&nbsp;
                              <a href="xiang.jsp?id=<%=m.get("id") %>"><%=m.get("title") %>
                              
                              
                              </a>
                              
                              
                             &nbsp;&nbsp;&nbsp;&nbsp;
                             
                             <font color=gray> <%=m.get("savetime") %></font>
                              
                              </TD>
                             
                            </TR>
                            
                              <TR>
                             <TD class=css  height="10"
                                align="center">
                                 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
                                </TD>
                            </TR>
                            
                            <%} %>
                            
                            
                          </TBODY>
                      </TABLE>
                      <TR>
                      <TD height=33 colSpan=2 align="center"><label>${page.info }</label></TD>
                      </TR>
                    <TR>
                      <TD colSpan=2 align=middle>&nbsp;</TD>
                    </TR>
                  </TBODY>
                </TABLE>
                </form>
                
                
                
                
                
                
                
                
                
                
                
                </TD>
              </TR></TBODY></TABLE>
              
              
              </TD></TR>
       
       
       
       
       
       
      <jsp:include page="foot.jsp"></jsp:include>
      
      
      
      
      
      
      
      
      
      </TABLE></TD></TR></TBODY></TABLE>
      
<SCRIPT type=text/javascript charset=utf-8 
src="qzzp_sys_files/2462870.jss"></SCRIPT>


</BODY></HTML>
<script type="text/javascript">
<!--
<%if(request.getAttribute("suc")!=null){%>
alert("操作成功");
<%}%>
//-->
</script>
 
 
