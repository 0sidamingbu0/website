<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<%
set conn=server.createobject("adodb.connection")
conn.open "driver={microsoft access driver (*.mdb)};dbq="&server.mappath("idol.mdb")
dim a,b
%>

<% exec3="select * from config where leibie='公告' order by date2 DESC"  
set rs3=server.createobject("adodb.recordset")   
rs3.open exec3,conn,1,3 %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="google-site-verification" content="r6ADHMIg3M-umU8A_qZLq9P8X2PElTUBu8thj9aAE34" />
<meta name=”description” content=”农民发明家吴玉禄”> 
<meta name=”keyword” content=”机器人拉车，农民发明家，吴玉禄，北京市通州区漷县镇马务村，吴玉禄电话，拉车机器人“>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>农民发明家吴玉禄 - 主页</title>
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
    <td width="810" height="50" align="left"background="images/sb_bg2.gif">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="daohang_lj"><a href="index.asp">首页</a> &gt;     <%if session("islogin")="yes" then%>
    <a class="daohang_lj" href="?se=1"><%se=request("se")
	if se=1 then session.Abandon()
	%> 
    注销</a>/<a class="daohang_lj" href="idol2.asp"> 管理页面</a>
    <%end if%>
    </span></td>
  </tr>
</table>
<table width="960" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td height="4" bgcolor="#2EB689"></td>
  </tr>
</table>
<table width="960" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="960" height="240" background="images/flash_bt.gif"><object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0" width="960" height="425"><param name="movie" value="swf/xixi.swf?images=images/01.jpg|images/02.jpg|images/03.jpg&amp;titles=吴玉禄简介 <br />玉禄弘扬|机器人拉洋车 <br />玉禄弘扬|吴玉禄作品 <br />玉禄弘扬"/><param name="quality" value="high"><embed src="swf/xixi.swf?images=images/01.jpg|images/02.jpg|images/03.jpg&amp;titles=吴玉禄简介|机器人拉洋车|吴玉禄作品" width="980" height="425" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash"></embed><param name="wmode" value="Opaque"></object></td>
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
    <td width="960" height="12">
</td>
  </tr>
</table>
<table width="960" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="330" height="34" class="biankuang" style="border-bottom-width:0"><span class="daohang_lj" style="font-size:14px">&nbsp;&nbsp;新闻中心</span>
    <span  class="lianjie" style="font-size: 11px;color: #37566A;margin-left: 223px;position: absolute;
	margin-top: 5px;" ><a href="news.asp" >更多></a></span>
    </td>
    <td width="32" height="34" >&nbsp;</td>
    <td width="598" height="34" class="biankuang" style="border-bottom-width:0"><span class="daohang_lj" style="font-size:14px">&nbsp;&nbsp;视频中心</span><span  class="lianjie" style="font-size: 11px;color: #37566A;margin-left: 495px;position: absolute;
	margin-top: 5px;" ><a href="video.asp" >更多></a></span></td>
  </tr>
  <tr>
    <td width="330" height="185" bgcolor="#e4eaf2" class="biankuang" style="border-top-width:0"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="330" height="170" style="border-left-color:#b0ccf2 ;border-left-width:1px;border-right-width:0px;border-top-width:0px;border-bottom-width:0px; border-style:solid">
          
          
          
          
     <%
a=request("a")
if a="" then a=2 end if 
if a=1 then
exec="select * from config where leibie='电视' or leibie='报纸' or leibie='杂志' order by djs DESC"    'sql命令  
elseif a=2 then
exec="select * from config where leibie='电视' or leibie='报纸' or leibie='杂志' order by date2 DESC"    'sql命令
end if 
set rs=server.createobject("adodb.recordset")   '建立记录集rs
rs.open exec,conn,1,3   
%>
            <%for j=1 to 5%>
            <div class="daohang_lj" style="line-height:0px">
            <br style="line-height:16px" />  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             <%
        	mc28=rs("mc")
			max=10
			If Len(mc28)>max then mc28=left(mc28,max)&".."
			%>
            <%if rs("leibie")="电视" then%>
            <%if session("islogin")="yes" then%>
            <a href="idolvideo2.asp?id=<%=rs("id")%>" class="daohang_lj"><%=mc28%>【<%=rs("leibie")%>】</a>
            <%else%>
            <a href="video2.asp?id=<%=rs("id")%>" class="daohang_lj"><%=mc28%>【<%=rs("leibie")%>】</a>
   			<%end if%> 
            
            <span class="daohang_lj"> <%=rs("date2")%>&nbsp;&nbsp;</span> 
            <br style="line-height:6px" />  
            <%else%>
            
            
            <%if session("islogin")="yes" then%>
            <a href="idolnews2.asp?id=<%=rs("id")%>" class="daohang_lj"><%=mc28%>【<%=rs("leibie")%>】</a>
            <%else%>
            <a href="news2.asp?id=<%=rs("id")%>" class="daohang_lj"><%=mc28%>【<%=rs("leibie")%>】</a>
   			<%end if%> 
            
            <span class="daohang_lj"> <%=rs("date2")%>&nbsp;&nbsp;</span> </div>
            
            <%end if%>
            <br style="line-height:6px" />  
            
           <%rs.movenext%>
           <%if rs.eof or rs.bof then exit for%>
            <%next%>

          </td>
      </tr>
      <tr>
        <td width="330" height="15"><a href="index.asp?a=1" class="daohang_lj" style="font-size:10px; margin-left:80%">关注</a> <span style="font-size:9px">/</span><a href="index.asp?a=2" class="daohang_lj" style="font-size:10px; margin-left:1%"> 发布</a></td>
      </tr>
    </table></td>
    <td width="32" height="185">&nbsp;</td>
    <td width="598" height="185" bgcolor="#e4eaf2" class="biankuang" style="border-top-width:0"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="250" rowspan="3" align="center" valign="middle">
          <script src="js/config.js"></script>
<script src="js/fun.js"></script>
          </td>
        <td width="348" height="15"></td>
      </tr>
      <tr>
        <td width="348" height="155" valign="top" style="border-left-color:#b0ccf2 ;border-left-width:1px;border-right-width:0px;border-top-width:0px;border-bottom-width:0px; border-style:solid">
<%
b=request("b")
if b="" then b=2 end if 
if b=1 then
exec2="select * from config where leibie='电视' or leibie='作品' order by djs DESC"  
elseif b=2 then
exec2="select * from config where leibie='电视' or leibie='作品' order by date2 DESC"   
end if 
set rs2=server.createobject("adodb.recordset") 
rs2.open exec2,conn,1,3   
%>
        
          <%for k=1 to 6%>
 <div class="daohang_lj" style="line-height:0px"> 
 <br style="line-height:16px" /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 <%
        mc24=rs2("mc")
			max=10
			If Len(mc24)>max then mc24=left(mc24,max)&".."
			%>
  <%if session("islogin")="yes" then%>
             <a href="idolvideo2.asp?id=<%=rs2("id")%>" class="daohang_lj"><%=mc24%>  【<%=rs2("leibie")%>】</a>
            <%else%>
            <a href="video2.asp?id=<%=rs2("id")%>" class="daohang_lj"><%=mc24%>  【<%=rs2("leibie")%>】</a>
   			<%end if%> 

 <span class="daohang_lj"><%=rs2("date2")%>&nbsp;&nbsp;</span> </div>
 <br style="line-height:6px" /> 
            <%rs2.movenext%>
           <%if rs2.eof or rs2.bof then exit for%>
          <%next%>
          </td>
      </tr>
      <tr>
        <td width="348" height="15"><a href="index.asp?b=1" class="daohang_lj" style="font-size:10px; margin-left:80%">关注</a> <span style="font-size:9px">/</span><a href="index.asp?b=2" class="daohang_lj" style="font-size:10px; margin-left:1%"> 发布</a></td>
      </tr>
    </table></td>
  </tr>
</table>
<%

rs.close
set rs=nothing
rs2.close
set rs2=nothing
rs3.close
set rs3=nothing



%>

<table width="960" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td height="22" align="right" valign="bottom"><span style="color:#91ACCA; font-size:12px" class="daohang_lj">© 2010-2020 北京玉禄弘扬 版权所有</span>
      <table width="960" border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
          <td></td>
        </tr>
    </table></td>
  </tr>
</table>
<table width="960" border="0" align="center" cellpadding="0" cellspacing="0">

  <tr>
    <td height="25" align="right" valign="top"><span style="color:#91ACCA; font-size:9px" class="daohang_lj">
	
	
	<%
exec8="select * from idol where id=1"
set rs8=server.createobject("adodb.recordset")   
rs8.open exec8,conn,1,3

	  if session(rs8("id"))="" then
	  rs8("fangwen")=rs8("fangwen")+1
	  rs8.update
	  end if
	  session(rs8("id"))="yes"
	 
%>
<a href="idol.asp">访问</a> <%=rs8("fangwen")%> </span></td>
  </tr>
</table>
<table width="960" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td>
      <div align="center"><span style=";color:#91ACCA； font-size:12px" class="daohang_lj"><a style="color:#91ACCA" href="http://www.miibeian.gov.cn/">京ICP备：10037908</a></span></div></td>
  </tr>
</table>
<%

rs8.close
set rs8=nothing

conn.close
set conn=nothing
%>
<table width="960" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td align="center"><script src="http://s11.cnzz.com/stat.php?id=2100103&web_id=2100103&show=pic" language="JavaScript"></script>

</td>
  </tr>
</table>
</body>
</html>
