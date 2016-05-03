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
<title>作品展示 - 农民发明家吴玉禄</title>
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
border-right-width:1px;
border-left-color:#b0ccf2;
border-left-width:1px;
border-right-color:#b0ccf2;
border-style: solid
}
.daohang_lj a:active{text-decoration:none;
color:#37566A}
#dian {
	font-size: 9px;
}
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
    <td width="810" height="50" align="left"background="images/sb_bg2.gif">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="daohang_lj"><a href="index.asp">首页</a> &gt; 作品展示 &gt; <%if session("islogin")="yes" then%>
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
    <td width="960" height="2"></td>
  </tr>
</table>
<table width="960" border="0" align="center" cellpadding="0" cellspacing="0" >
  <tr>
    <td width="960">
    
      <%
a=request("a")
if a="" then a=2 end if 
if a=1 then
exec="select * from config where leibie='作品' order by djs DESC"    'sql命令  
elseif a=2 then
exec="select * from config where leibie='作品' order by date2 DESC"   'sql命令
end if 
set rs=server.createobject("adodb.recordset")   '建立记录集rs
rs.open exec,conn,1,3   
%>
    
    <%
rs.pagesize=9
curpage=Request.QueryString("curpage")
if curpage="" then curpage=1
rs.absolutepage=curpage
%>
 

    <table width="960%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="960" height="250">  
     <%for i= 1 to 3%>


    <%if rs.eof or rs.bof then exit for%>
    
    <table width="317" align="left" cellpadding="0" style="margin-left: 2px;" >
  <tr>
    <td width="317" height="36" class="biankuang" style="border-bottom-width:0">
    
      
      <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
        <%
        mc22=rs("mc")
			max=10
			If Len(mc22)>max then mc22=left(mc22,max)&".."
			%>
          <td width="56%" height="30"><span class="daohang_lj" style="font-size:14px ">&nbsp;&nbsp;<%if session("islogin")="yes" then%>
            <a href="idolvideo2.asp?id=<%=rs("id")%>" ><%=mc22%></a>
            <%else%>
            <a href="video2.asp?id=<%=rs("id")%>" ><%=mc22%></a>
   			<%end if%></span></td>
          <td width="44%"><span  class="lianjie" style="font-size: 11px;color: #37566A;margin-left: 100px;
	margin-top: 5px;" >
    
    <%if session("islogin")="yes" then%>
            <a href="idolvideo2.asp?id=<%=rs("id")%>" >视频></a>
            <%else%>
            <a href="video2.asp?id=<%=rs("id")%>" >视频></a>
   			<%end if%>
    
    </span></td>
        </tr>
      </table></td>
  </tr>
  <tr>
    <td width="317" height="192" bgcolor="#e4eaf2" class="biankuang" style="border-top-width:0">
    
    
    
    <table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="177" rowspan="3" align="center">
          <p><img onclick="location.href='images.asp?id=<%=rs("id")%>&curpage=<%=curpage%>&scr=production'" src="upload/<%=rs("mce")%>/1_160120.jpg" alt="" height="120" align="absmiddle" style="margin-left:5%" /></p>
          <%
          date22=rs("date2")
		If Len(date22)>0 then
		  date22=replace(date22," ","&nbsp;&nbsp;")
			max=10
			If Len(date22)>max then date22=left(date22,max)
			else 
			end if
			
			%>
          <span  style="font-size:10px; margin-left:10%; font-size:12px; color:#37566A">关注&nbsp;:<%=rs("djs")%></span>
          <span  style="font-size:10px; margin-left:10%; font-size:12px; color:#37566A">发布&nbsp;:<%=date22%></span>
          </td>
        
        <td height="35">&nbsp;</td>
      </tr>
      <tr>
        <td height="95" valign="top" style="border-left-color:#b0ccf2;border-top-width:0px;border-bottom-width:0px;border-right-width:0px;border-left-width:1px; border-style:solid"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
          <%
        mc23=rs("mc")
			max=6
			If Len(mc23)>max then mc23=left(mc23,max)&".."
			%>
            <td width="10%">&nbsp;</td>
            <td width="78%" height="20" valign="top"><span class="daohang_lj" style="font-family:"><%=mc23%></span></td>
            <td width="12%">&nbsp;</td>
          </tr>
          <tr>
            <td>&nbsp;</td>
            <td height="75">
            <table width="100%" border="0" cellspacing="0" cellpadding="0" class="biankuang" style="border-bottom-width:0; border-left-width:0; border-right-width:0; border-top-width:0">
              <tr>
                <td height="5" valign="top"></td>
              </tr>
              <tr>
                <td height="70" valign="top"><span class="daohang_lj">
                  <%
			neirong=rs("neirong")
			max=30
			If Len(neirong)>max then neirong=left(neirong,max-2)&"..." 
			%>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=neirong%> </span></td>
              </tr>
            </table></td>
            <td>&nbsp;</td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td height="55" class="daohang_lj" style="font-size:9px">（点击图片放大）</td>
      </tr>
    </table></td>
  </tr>
</table>

   <%rs.movenext%>
<%next%>

    </td>
  </tr>
  <%if rs.eof or rs.bof then%>
  <%else%>
  <tr>
    <td width="960" height="250"><%for i= 1 to 3%>


    <%if rs.eof or rs.bof then exit for%>
    
    <table width="317" align="left" cellpadding="0" style="margin-left: 2px;" >
  <tr>
    <td width="317" height="36" class="biankuang" style="border-bottom-width:0">
    
      
      <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
        <%
        mc22=rs("mc")
			max=10
			If Len(mc22)>max then mc22=left(mc22,max)&".."
			%>
          <td width="56%" height="30"><span class="daohang_lj" style="font-size:14px ">&nbsp;&nbsp; <%if session("islogin")="yes" then%>
            <a href="idolvideo2.asp?id=<%=rs("id")%>" ><%=mc22%></a>
            <%else%>
            <a href="video2.asp?id=<%=rs("id")%>" ><%=mc22%></a>
   			<%end if%></span></td>
          <td width="44%"><span  class="lianjie" style="font-size: 11px;color: #37566A;margin-left: 100px;
	margin-top: 5px;" >
    
    <%if session("islogin")="yes" then%>
            <a href="idolvideo2.asp?id=<%=rs("id")%>" >视频></a>
            <%else%>
            <a href="video2.asp?id=<%=rs("id")%>" >视频></a>
   			<%end if%>
    
    </span></td>
        </tr>
      </table></td>
  </tr>
  <tr>
    <td width="317" height="192" bgcolor="#e4eaf2" class="biankuang" style="border-top-width:0">
    
    
    
    <table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="177" rowspan="3" align="center">
          <p><img onclick="location.href='images.asp?id=<%=rs("id")%>&curpage=<%=curpage%>&scr=production'" src="upload/<%=rs("mce")%>/1_160120.jpg" alt="" height="120" align="absmiddle" style="margin-left:5%" /></p>
          <%
          date22=rs("date2")
		If Len(date22)>0 then
		  date22=replace(date22," ","&nbsp;&nbsp;")
			max=10
			If Len(date22)>max then date22=left(date22,max)
			else 
			end if
			
			%>
          <span  style="font-size:10px; margin-left:10%; font-size:12px; color:#37566A">关注&nbsp;:<%=rs("djs")%></span>
          <span  style="font-size:10px; margin-left:10%; font-size:12px; color:#37566A">发布&nbsp;:<%=date22%></span>
          </td>
        
        <td height="35">&nbsp;</td>
      </tr>
      <tr>
        <td height="95" valign="top" style="border-left-color:#b0ccf2;border-top-width:0px;border-bottom-width:0px;border-right-width:0px;border-left-width:1px; border-style:solid"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
          <%
        mc23=rs("mc")
			max=6
			If Len(mc23)>max then mc23=left(mc23,max)&".."
			%>
            <td width="10%">&nbsp;</td>
            <td width="78%" height="20" valign="top"><span class="daohang_lj" style="font-family:"><%=mc23%></span></td>
            <td width="12%">&nbsp;</td>
          </tr>
          <tr>
            <td>&nbsp;</td>
            <td height="75">
            <table width="100%" border="0" cellspacing="0" cellpadding="0" class="biankuang" style="border-bottom-width:0; border-left-width:0; border-right-width:0; border-top-width:0">
              <tr>
                <td height="5" valign="top"></td>
              </tr>
              <tr>
                <td height="70" valign="top"><span class="daohang_lj">
                  <%
			neirong=rs("neirong")
			max=30
			If Len(neirong)>max then neirong=left(neirong,max-2)&"..." 
			%>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=neirong%> </span></td>
              </tr>
            </table></td>
            <td>&nbsp;</td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td height="55" class="daohang_lj" style="font-size:9px">（点击图片放大）</td>
      </tr>
    </table></td>
  </tr>
</table>

   <%rs.movenext%>
<%next%></td>
  </tr>
  <%end if%>
    <%if rs.eof or rs.bof then%>
  <%else%>
  <tr>
    <td width="960" height="250"><%for i= 1 to 3%>


    <%if rs.eof or rs.bof then exit for%>

    <table width="317" align="left" cellpadding="0" style="margin-left: 2px;" >
  <tr>
    <td width="317" height="36" class="biankuang" style="border-bottom-width:0">
    
      
      <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
        <%
        mc22=rs("mc")
			max=10
			If Len(mc22)>max then mc22=left(mc22,max)&".."
			%>
          <td width="56%" height="30"><span class="daohang_lj" style="font-size:14px ">&nbsp;&nbsp;<%if session("islogin")="yes" then%>
            <a href="idolvideo2.asp?id=<%=rs("id")%>" ><%=mc22%></a>
            <%else%>
            <a href="video2.asp?id=<%=rs("id")%>" ><%=mc22%></a>
   			<%end if%></span></td>
          <td width="44%"><span  class="lianjie" style="font-size: 11px;color: #37566A;margin-left: 100px;
	margin-top: 5px;" >
    
    <%if session("islogin")="yes" then%>
            <a href="idolvideo2.asp?id=<%=rs("id")%>" >视频></a>
            <%else%>
            <a href="video2.asp?id=<%=rs("id")%>" >视频></a>
   			<%end if%>
    
    </span></td>
        </tr>
      </table></td>
  </tr>
  <tr>
    <td width="317" height="192" bgcolor="#e4eaf2" class="biankuang" style="border-top-width:0">
    
    
    
    <table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="177" rowspan="3" align="center">
          <p><img onclick="location.href='images.asp?id=<%=rs("id")%>&curpage=<%=curpage%>&scr=production'" src="upload/<%=rs("mce")%>/1_160120.jpg" alt="" height="120" align="absmiddle" style="margin-left:5%" /></p>
          <%
          date22=rs("date2")
		If Len(date22)>0 then
		  date22=replace(date22," ","&nbsp;&nbsp;")
			max=10
			If Len(date22)>max then date22=left(date22,max)
			else 
			end if
			
			%>
          <span  style="font-size:10px; margin-left:10%; font-size:12px; color:#37566A">关注&nbsp;:<%=rs("djs")%></span>
          <span  style="font-size:10px; margin-left:10%; font-size:12px; color:#37566A">发布&nbsp;:<%=date22%></span>
          </td>
        
        <td height="35">&nbsp;</td>
      </tr>
      <tr>
        <td height="95" valign="top" style="border-left-color:#b0ccf2;border-top-width:0px;border-bottom-width:0px;border-right-width:0px;border-left-width:1px; border-style:solid"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
          <%
        mc23=rs("mc")
			max=6
			If Len(mc23)>max then mc23=left(mc23,max)&".."
			%>
            <td width="10%">&nbsp;</td>
            <td width="78%" height="20" valign="top"><span class="daohang_lj" style="font-family:"><%=mc23%></span></td>
            <td width="12%">&nbsp;</td>
          </tr>
          <tr>
            <td>&nbsp;</td>
            <td height="75">
            <table width="100%" border="0" cellspacing="0" cellpadding="0" class="biankuang" style="border-bottom-width:0; border-left-width:0; border-right-width:0; border-top-width:0">
              <tr>
                <td height="5" valign="top"></td>
              </tr>
              <tr>
                <td height="70" valign="top"><span class="daohang_lj">
                  <%
			neirong=rs("neirong")
			max=30
			If Len(neirong)>max then neirong=left(neirong,max-2)&"..." 
			%>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=neirong%> </span></td>
              </tr>
            </table></td>
            <td>&nbsp;</td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td height="55" class="daohang_lj" style="font-size:9px">（点击图片放大）</td>
      </tr>
    </table></td>
  </tr>
</table>

   <%rs.movenext%>
<%next%>
</td>
  </tr>
   <%end if%>
</table>


</td>
  </tr>
</table>
<table width="960" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td><a href="?a=1" class="daohang_lj" style="font-size:10px; margin-left:90%">关注</a> <span style="font-size:9px">/</span><a href="?a=2" class="daohang_lj" style="font-size:10px; margin-left:1%"> 发布</a></td>
  </tr>
</table>
<table width="960" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td><div align="center" class="daohang_lj"> 
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
     </div> </td>
  </tr>
</table>
<%
rs3.close
set rs3=nothing

rs.close
set rs=nothing

conn.close
set conn=nothing
%>
</body>
</html>
