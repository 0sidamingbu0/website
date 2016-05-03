<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<%
set conn=server.createobject("adodb.connection")
conn.open "driver={microsoft access driver (*.mdb)};dbq="&server.mappath("idol.mdb")
dim a,b
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>农民发明家吴玉禄 - 评论管理</title>
<style type="text/css">
<!--
body {
	background-color: #dae4f0;
	.serach{background-image: url(images/serach.gif);	color: #FFFBF0;
	color: #D6D6D6;
	color: #F8FAFC;
	color: #FDFDFE;
	color: #D6D6D6;
	color: #2EB689;
}
}
#serach_bg {
	height: 30px;
	width: 240px;
	background-image: url(images/serach.gif);
}
#serach {
	border-top-width: 0px;
	border-right-width: 0px;
	border-bottom-width: 0px;
	border-left-width: 0px;
	border-top-style: none;
	border-right-style: none;
	border-bottom-style: none;
	border-left-style: none;
	visibility: visible;
}
#serach_form {
	height: 30px;
	width: 240px;

}
#serach_txt {
	border-top-width: 0px;
	border-right-width: 0px;
	border-bottom-width: 0px;
	border-left-width: 0px;
	margin-left: 18%;
	margin-top: 6px;
	height: 16px;
	width: 99px;
}
#sousuo {
	color: #FFF;
	font-family: "微软雅黑";
	font-size: 13px;
	margin-left: 22px;
}
#morenews {
	font-size: 11px;
	font-family: "微软雅黑";
	color: #37566A;
	margin-left: 800px;
	position: absolute;
	margin-top: 1px;
}
#sousuo_tm {
	text-decoration: blink;
}
.bt {
	font-family: "微软雅黑";
	color: #FFFBF0;
	font-size: 13px;
}
.bt a:link{text-decoration:none;
color:#ffffff}
.bt a:visited{text-decoration:none;
color:#ffffff}
.bt a:hover{text-decoration:none;
color:#ffffff}
.bt a:active{text-decoration:none;
color:#ffffff}

.lianjie a:link{
	text-decoration:none;
	color:#37566A
}
.lianjie a:visited{
	text-decoration:none;
	color:#37566A
}
.lianjie a:hover{
	text-decoration:underline;
	color:#37566A
}
.lianjie a:active{
	text-decoration:none;
	color:#37566A
}
.lianjie {font-family:"微软雅黑"}

.daohang_lj {
	font-size: 12px;
	font-family: "微软雅黑";
	color: #37566A;
}
.daohang_lj a:link{text-decoration:none;
color:#37566A}
.daohang_lj a:visited{text-decoration:none;
color:#37566A}
.daohang_lj a:hover{text-decoration:underline;
color:#37566A}


.biankuang {
border-bottom-color:#b0ccf2;
border-top-color:#b0ccf2;
border-bottom-width:1px;
border-top-width:1px;
border-left-width:1px;
border-right-width:1px;
border-left-color:#b0ccf2;
border-right-color:#b0ccf2;
border-style: solid
}
.daohang_lj a:active{text-decoration:none;
color:#37566A}
-->
</style></head>

<body>
<table width="960" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="120" height="30" align="center"background="images/top_3.gif" class="bt"><a href="index.asp">首 页</a></td>
    <td width="150" align="center"background="images/top_1.gif" class="bt"><a href="news.asp">新闻中心</a></td>
    <td width="150" height="30" align="center"background="images/top_1.gif" class="bt"><a href="production.asp">作品展示</a></td>
    <td width="150" height="30" align="center"background="images/top_1.gif" class="bt"><a href="honor.asp">荣誉专栏</a></td>
    <td width="150" height="30" align="center" background="images/top_1.gif" class="bt"><a href="about.asp">关于吴玉禄</a></td>
    <td width="240" height="30" align="center" background="images/serach.gif" class="bt" >
    <form id="form1" name="form1" method="post" action="search.asp" style="background-color:transparent;padding:0px;margin:0px;">
    <table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="38%" height="5"></td>
        <td width="42%" height="5"></td>
        <td width="18%" height="5"></td>
        <td width="2%" height="5"></td>
      </tr>
      <tr>
        <td width="90" height="18" align="center">搜索&nbsp;&nbsp;&nbsp;</td>
        <td width="110" height="18"><input name="search_txt" type="text" class="daohang_lj" id="serach_txt" size="7" style="background-color:transparent;padding:0px;margin:0px; height:18"/></td>
        <td width="40" height="18" valign="middle"><input type="submit" name="serach" id="serach" value="&nbsp;" style="	filter:alpha(opacity=0);"/></td>
        <td height="18"></td>
      </tr>
      <tr>
        <td height="7"></td>
        <td height="7"></td>
        <td height="7"></td>
        <td height="7"></td>
      </tr>
    </table>
      </form>
    </td>
  </tr>
  
</table>
<table width="960" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="150" height="50" align="center"background="images/sb_bg.gif"><img src="images/logo.png" alt="玉禄弘扬" name="logo" width="150" height="50" id="logo" /></td>
    <td width="810" height="50" align="left"background="images/sb_bg2.gif">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="daohang_lj"><a href="index.asp">首页</a> &gt; 
   		 评论
    &gt; <%if session("islogin")="yes" then%>
    <a class="daohang_lj" href="?se=1"><%se=request("se")
	if se=1 then session.Abandon()
	%> 
    注销</a>/<a class="daohang_lj" href="idol2.asp"> 管理页面</a>
    <%end if%></span></td>
  </tr>
</table>
<table width="960" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td height="4" bgcolor="#2EB689"></td>
  </tr>
</table>
<table width="960" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="960" height="240" background="images/flash_bt.gif"><object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=9,0,28,0" width="960" height="240">
      <param name="movie" value="images/flash.swf" />
      <param name="quality" value="high" />
      <param name="wmode" value="opaque" />
      <embed src="images/flash.swf" quality="high" wmode="opaque" pluginspage="http://www.adobe.com/shockwave/download/download.cgi?P1_Prod_Version=ShockwaveFlash" type="application/x-shockwave-flash" width="960" height="240"></embed>
    </object></td>
  </tr>
</table>
<table width="960" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="960" height="12"></td>
  </tr>
</table>
<table width="960" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
  
    <td width="120" height="15" bgcolor="#e4eaf2" class="biankuang" style="border-right-width:0"><span class="daohang_lj" style="font-size:14px">&nbsp;&nbsp;&nbsp;&nbsp;最新公告：</span>
    <span id="morenews" class="lianjie" style="border-right-width:0" ><a href="bulletin.asp" >更多公告 ></a></span>
    


<% exec3="select * from config where leibie='公告' order by date2 DESC"  
set rs3=server.createobject("adodb.recordset")   
rs3.open exec3,conn,1,3 
dim a1,a2,a3,b1,b2,b3
a1=rs3("mc")
b1=rs3("date2")
id1=rs3("id")
rs3.movenext
a2=rs3("mc")
b2=rs3("date2")
id2=rs3("id")
rs3.movenext
a3=rs3("mc")
b3=rs3("date2")
id3=rs3("id")
%></td>
    <td width="763" bgcolor="#e4eaf2" class="biankuang" style="border-left-width:0; border-right-width:0">
	<input type="hidden" name="e1" value="<%=a1%>&nbsp;&nbsp;<%=b1%>">
    <input type="hidden" name="e2" value="<%=a2%>&nbsp;&nbsp;<%=b2%>">
    <input type="hidden" name="e3" value="<%=a3%>&nbsp;&nbsp;<%=b3%>">
	<script>
var marqueeContent=new Array();  
marqueeContent[0]=e1.value;
marqueeContent[1]=e2.value;
marqueeContent[2]=e3.value;
var f1
var marqueeInterval=new Array();  //定义一些常用而且要经常用到的变量
var marqueeId=0;
var marqueeDelay=3000;
var marqueeHeight=20;
//接下来的是定义一些要使用到的函数
function href() {
	
	 <%if session("islogin")="yes" then%>
            if(f1==1)location.href="idolbulletin2.asp?id=<%=id1%>";
            <%else%>
            if(f1==1)location.href="bulletin2.asp?id=<%=id1%>";
   			<%end if%>
	
	
	<%if session("islogin")="yes" then%>
           if(f1==2)location.href="idolbulletin2.asp?id=<%=id2%>";
            <%else%>
           if(f1==2)location.href="bulletin2.asp?id=<%=id2%>";
   			<%end if%>
	
	
	<%if session("islogin")="yes" then%>
           if(f1==3)location.href="idolbulletin2.asp?id=<%=id3%>";
            <%else%>
           if(f1==3)location.href="bulletin2.asp?id=<%=id3%>";
   			<%end if%>
	
	}
function initMarquee() {
    var str=marqueeContent[0];
	f1=1;
    document.write('<div onclick="href()" class="daohang_lj" id=marqueeBox style="font-size:13px; overflow:hidden;height:'+marqueeHeight+'px" onmouseover="clearInterval(marqueeInterval[0])" onmouseout="marqueeInterval[0]=setInterval(\'startMarquee()\',marqueeDelay)"><div>'+str+'</div></div>');
    marqueeId++;
    marqueeInterval[0]=setInterval("startMarquee()",marqueeDelay);
    }
	
function startMarquee() {
    var str=marqueeContent[marqueeId];
	if(marqueeId==1)f1=2;
	if(marqueeId==2)f1=3;
	if(marqueeId==0)f1=1;
        marqueeId++;
    if(marqueeId>=marqueeContent.length) marqueeId=0;
    if(marqueeBox.childNodes.length==1) {
        var nextLine=document.createElement('DIV');
        nextLine.innerHTML=str;
        marqueeBox.appendChild(nextLine);
        }
    else {
        marqueeBox.childNodes[0].innerHTML=str;
        marqueeBox.appendChild(marqueeBox.childNodes[0]);
        marqueeBox.scrollTop=0;
        }
    clearInterval(marqueeInterval[1]);
    marqueeInterval[1]=setInterval("scrollMarquee()",1);
    }
function scrollMarquee() {
    marqueeBox.scrollTop++;
    if(marqueeBox.scrollTop%marqueeHeight==(marqueeHeight-1)){
        clearInterval(marqueeInterval[1]);
        }
    }
initMarquee();
</script>



</td>
    <td width="77" bgcolor="#e4eaf2" class="biankuang" style="border-left-width:0">&nbsp;</td>
  </tr>
</table>
<table width="960"  align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="960" height="12"></td>
  </tr>
</table>
<%

id=request("id")
	if id="" then id=1
	
id3=Request("id3")            
mcc=Request.Form("mc")
ipp=Request.Form("ip")
datee=Request.Form("date")
neirongg=Request.Form("neirong")
neirongg=replace(neirongg,chr(13),"<br/>")
neirongg=replace(neirongg," ","&nbsp;")
huifuu=Request.Form("huifu")
huifuu=replace(huifuu,chr(13),"<br/>")
huifuu=replace(huifuu," ","&nbsp;")
if mcc="" or ipp="" or datee="" or neirongg="" then%>
<%else
 exec10="select * from comment where id="&id3
set rs10=server.createobject("adodb.recordset")   
rs10.open exec10,conn,1,3 
rs10("mc")=mcc
rs10("ip")=ipp
rs10("date2")=datee
rs10("neirong")=neirongg
rs10("huifu")=huifuu
rs10.update
rs10.close
set rs10=nothing
end if
%>

<%dell=request.Form("dell")
if dell="" then
else
sql="delete from comment where id="&dell      
conn.Execute sql
end if%>

<%if session("islogin")="" then %>
<div align="center"><span class="daohang_lj">非法操作！</span></div>
<%else%>
<table width="960" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="275" rowspan="3" valign="top"><table width="270" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="330" height="34" class="biankuang" style="border-bottom-width:0"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td align="right"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="200" height="30" align="left"><span class="daohang_lj" style="font-size:14px">&nbsp;&nbsp;最新公告</span></td>
            <td width="130" height="30" align="right"><span class="daohang_lj"><a href="bulletin.asp">更多</a>&nbsp;&nbsp;</span></td>
          </tr>
        </table>          <span class="daohang_lj"></span></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td width="330" height="193" bgcolor="#e4eaf2" class="biankuang" style="border-top-width:0"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td height="10" colspan="2"></td>
        </tr>
      <tr>
        <td width="6%" height="180">&nbsp;</td>
        <td width="94%"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td height="169" valign="top" class="daohang_lj">
              <p>
              
              <%
		exec2="select * from config where leibie='公告' order by date2 DESC"
		set rs2=server.createobject("adodb.recordset")  
		rs2.open exec2,conn,1,3  
%>
                <%for j=1 to 6%>
               <%if rs2.eof or rs2.bof then exit for%>
              <%
	
	neirong2=rs2("mc")
	max2=14
	If Len(neirong2)>max2 then neirong2=left(neirong2,max2-2)&"..." 
	%>
               <div style="line-height:12px">
               
               <%if session("islogin")="yes" then%>
            <a href="idolbulletin2.asp?id=<%=rs2("id")%>" class="daohang_lj"><%=neirong2%></a>
            <%else%>
            <a href="bulletin2.asp?id=<%=rs2("id")%>" class="daohang_lj"><%=neirong2%></a>
   			<%end if%> 
               
               <span class="daohang_lj" style="float:right"> <%=rs2("date2")%>&nbsp;&nbsp;&nbsp;&nbsp;</span> 
            </p></div>
              <%rs2.movenext%>
              <%next%>
              
              </td>
            </tr>
        </table></td>
      </tr>
      <tr>
        <td height="2" colspan="2"></td>
        </tr>
    </table></td>
  </tr>
</table>&nbsp;&nbsp;<table width="270" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="330" height="34" class="biankuang" style="border-bottom-width:0"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td align="right"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="200" height="30" align="left"><span class="daohang_lj" style="font-size:14px">&nbsp;&nbsp;最新新闻</span></td>
            <td width="130" height="30" align="right"><span class="daohang_lj"><a href="news.asp">更多</a>&nbsp;&nbsp;</span></td>
          </tr>
        </table>          <span class="daohang_lj"></span></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td width="330" height="193" bgcolor="#e4eaf2" class="biankuang" style="border-top-width:0"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td height="10" colspan="2"></td>
        </tr>
      <tr>
        <td width="6%" height="180">&nbsp;</td>
        <td width="94%"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td height="169" valign="top" class="daohang_lj">
              <p>
              
              <%
		exec3="select * from config where leibie='电视' or leibie='报纸' or leibie='杂志' order by date2 DESC"
		set rs3=server.createobject("adodb.recordset")  
		rs3.open exec3,conn,1,3  
%>
                <%for j=1 to 6%>
               <%if rs3.eof or rs3.bof then exit for%>
              <%
	
	neirong3=rs3("mc")
	max3=14
	If Len(neirong3)>max3 then neirong3=left(neirong3,max3-2)&"..." 
	%>
    
    <%if rs3("leibie")="电视" then%>
               <div style="line-height:12px">
               
               <%if session("islogin")="yes" then%>
            <a href="idolvideo2.asp?id=<%=rs3("id")%>" class="daohang_lj"><%=neirong3%></a>
            <%else%>
            <a href="video2.asp?id=<%=rs3("id")%>" class="daohang_lj"><%=neirong3%></a>
   			<%end if%> 
               
               <span class="daohang_lj" style="float:right"> <%=rs3("date2")%>&nbsp;&nbsp;&nbsp;&nbsp;</span> </p></div>
               <%else%>
               <div style="line-height:12px">
               
               <%if session("islogin")="yes" then%>
            <a href="idolnews2.asp?id=<%=rs3("id")%>" class="daohang_lj"><%=neirong3%></a>
            <%else%>
            <a href="news2.asp?id=<%=rs3("id")%>" class="daohang_lj"><%=neirong3%></a>
   			<%end if%> 
               
               <span class="daohang_lj" style="float:right"> <%=rs3("date2")%>&nbsp;&nbsp;&nbsp;&nbsp;</span> </p></div>
               <%end if%>
               
               
              <%rs3.movenext%>
              <%next%>
              
              </td>
            </tr>
        </table></td>
      </tr>
      <tr>
        <td height="2" colspan="2"></td>
        </tr>
    </table></td>
  </tr>
</table>&nbsp;&nbsp;<table width="270" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="330" height="34" class="biankuang" style="border-bottom-width:0"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td align="right"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="200" height="30" align="left"><span class="daohang_lj" style="font-size:14px">&nbsp;&nbsp;最新作品</span></td>
            <td width="130" height="30" align="right"><span class="daohang_lj"><a href="production.asp">更多</a>&nbsp;&nbsp;</span></td>
          </tr>
        </table>          <span class="daohang_lj"></span></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td width="330" height="193" bgcolor="#e4eaf2" class="biankuang" style="border-top-width:0"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td height="10" colspan="2"></td>
        </tr>
      <tr>
        <td width="6%" height="180">&nbsp;</td>
        <td width="94%"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td height="169" valign="top" class="daohang_lj">
              <p>
              
              <%
		exec4="select * from config where leibie='作品' order by date2 DESC"
		set rs4=server.createobject("adodb.recordset")  
		rs4.open exec4,conn,1,3  
%>
                <%for j=1 to 6%>
               <%if rs4.eof or rs4.bof then exit for%>
              <%
	
	neirong4=rs4("mc")
	max4=14
	If Len(neirong4)>max4 then neirong4=left(neirong4,max4-2)&"..." 
	%>
               <div style="line-height:12px">
               
               <%if session("islogin")="yes" then%>
            <a href="idolvideo2.asp?id=<%=rs4("id")%>" class="daohang_lj"><%=neirong4%></a>
            <%else%>
            <a href="video2.asp?id=<%=rs4("id")%>" class="daohang_lj"><%=neirong4%></a>
   			<%end if%> 
               
               <span class="daohang_lj" style="float:right"> <%=rs4("date2")%>&nbsp;&nbsp;&nbsp;&nbsp;</span> 
            </p></div>
              <%rs4.movenext%>
              <%next%>
              
              </td>
            </tr>
        </table></td>
      </tr>
      <tr>
        <td height="2" colspan="2"></td>
        </tr>
    </table></td>
  </tr>
</table></td>
    <td width="15" rowspan="3">&nbsp;</td>
    
  </tr>
  <tr>
    <td width="670" valign="top">
    <table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td><span  class="daohang_lj" style="font-size:16px"><div align="center">
		所有留言</div></span></td>
      </tr>
    </table>
    <p>  </p>
    

    
    <%a=request("a")%>
    <%if a="" then a=1%>
    
<%	
	
 exec="select * from comment order by date2 DESC"
set rs=server.createobject("adodb.recordset")   
rs.open exec,conn,1,3 
%>
<%if rs.eof and rs.bof then %>
<div align="center" class="daohang_lj">暂时没有留言！</div>
<%else%>
      <%
rs.pagesize=10
curpage=Request.QueryString("curpage")
if curpage="" then curpage=1
rs.absolutepage=curpage
%>
    <%for i=1 to rs.pagesize%>
    <%if rs.eof or rs.bof then exit for%>
    <form id="form3" name="form3" method="post" action="idolglly.asp?id=<%=request("id")%>&id3=<%=rs("id")%>">
    <table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        
        <td height="25" colspan="2" bgcolor="#E4EAF2"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>  <%
	
	mc2=rs("mc")
	max=25
	If Len(mc2)>max then mc2=left(mc2,max-2)&"..." 
	%>
    <% exec12="select * from config where id="&rs("suoshu")
set rs12=server.createobject("adodb.recordset")   
rs12.open exec12,conn,1,3   %>


    
            <td width="510" height="25" class="daohang_lj" style="font-size:14px">&nbsp;&nbsp;id=<%=rs("id")%>&nbsp;&nbsp;&nbsp;&nbsp;mc=<input name="mc" type="text" id="mc" value="<%=rs("mc")%>" size="30" maxlength="30" /><span class="daohang_lj" style="font-size:12px">&nbsp;&nbsp;&nbsp;日期：<span class="daohang_lj" style="font-size:14px"><span class="daohang_lj" style="font-size:12px">
              <input name="date" type="text" id="date" value="<%=rs("date2")%>" size="15" maxlength="30" />
            </span></span></span></td>
            <td width="160" height="25" align="right" class="daohang_lj">IP:&nbsp;
              <input name="ip" type="text" id="ip" value="<%=rs("ip")%>" size="15" maxlength="30" /> &nbsp;&nbsp;&nbsp;&nbsp;</td>
          </tr>
          
        </table></td>
        </tr>
      <tr>
        <td colspan="2"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td height="15" class="daohang_lj">所属：<%=rs12("mc")%>&nbsp;&nbsp;&nbsp;类别：<%=rs12("leibie")%><%rs12.close
			set rs12=nothing%></td>
            </tr>
          <tr>
            <td height="19"><p><span class="daohang_lj" style="font-size:12px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<textarea name="neirong" cols="50" rows="3" id="neirong"><%=rs("neirong")%></textarea></span></p>
              
              <p class="daohang_lj" style="color:#F00">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;回复：<textarea name="huifu" cols="50" rows="3" id="fhuifu"><%=rs("huifu")%></textarea>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <input type="submit" name="button" id="button" value="提交" />
                <%
mcc=Request.Form("mc")
ipp=Request.Form("ip")
datee=Request.Form("date")
neirongg=Request.Form("neirong")
huifuu=Request.Form("huifu")
if mcc="" or djss="" or datee="" or mcee="" or neirongg="" then%>
<%else
rs("mc")=mcc
rs("ip")=ipp
rs("date2")=datee
rs("neirong")=neirongg
rs("huifu")=fhuifuu
rs.update
end if
%>
                </p>
              <p class="daohang_lj" style="color:#F00">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;注意：请在一项修改完后立即提交否则信息将丢失，除了回复可为空其余为空将提交不成功</p>
              
              </td>
            </tr>
          <tr>
            <td></td>
          </tr>
        </table></td>
      </tr>
      <tr>
        
      </tr>
    </table></form>
    <form id="form5" name="form5" method="post" action="idolglly.asp">
          <div align="right"><input type="submit" name="button2" id="button2" value="删除" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input type="hidden" name="dell" id="dell" value="<%=rs("id")%>" /></div>
          </form>
          --------------------------------------------------------------------------------------------------------------
    
    
    <%rs.movenext%>
    <%next%>
    
    
    
    
    
    <div align="right"></div>
    
     <div align="center" class="daohang_lj"> 
      <%if curpage=1 then%>
首页
<%else%>
<a href="?curpage=1">首页</a>
<%end if%>
<%if curpage=1 then%>
上一页
<%else%>
<a href="?curpage=<%=curpage-1%>">上一页</a>
<%end if%>
<%if rs.pagecount<curpage+1 then%>
下一页
<%else%>
<a href="?curpage=<%=curpage+1%>">下一页</a>
<%end if%>
<%if rs.pagecount<curpage+1 then%>
尾页
<%else%>
<a href="?curpage=<%=rs.pagecount%>">尾页</a>
<%end if%>
     </div> <%end if%></td>
  </tr>
</table>
<%
rs3.close
set rs3=nothing

rs.close
set rs=nothing
rs2.close
set rs2=nothing
rs4.close
set rs4=nothing

conn.close
set conn=nothing
%>
<%end if%>
</body>
</html>
