<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<%
set conn=server.createobject("adodb.connection")
conn.open "driver={microsoft access driver (*.mdb)};dbq="&server.mappath("idol.mdb")
dim a,b,im
im=request("im")
%>
<% 
	id=request("id")
	if id="" then id=1 end if
	exec="select * from config where id="&id 
set rs=server.createobject("adodb.recordset")   
rs.open exec,conn,1,3
if im="" then im =1 
if im-rs("tps")=1 then im=1
if im=0 then im=rs("tps")
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title><%=rs("mc")%> - (<%=rs("leibie")%>)农民发明家吴玉禄</title>
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
    <%if rs("leibie")="电视" then%>
    <a href="news.asp">新闻</a>
    <%elseif rs("leibie")="作品" then%>
    <a href="production.asp">作品</a>
    <%elseif rs("leibie")="公告" then%>
    <a href="bulletin.asp">公告</a>
    <%end if%>
    
    
     &gt; <%=rs("mc")%> &gt; <%if session("islogin")="yes" then%>
    <a class="daohang_lj" href="?se=1&id=<%=Request("id")%>"><%se=request("se")
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


<table width="960" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="1" height="480" rowspan="2"></td>
        <%
	  if session(rs("id"))="" then
	  rs("djs")=rs("djs")+1
	  rs.update
	  end if
	  session(rs("id"))="yes"
	  %>
        <td width="473" height="22"><span class="daohang_lj" style="font-size:14px">视频：<%=rs("mc")%></span></td>
        <td width="1"><div align="right"><span class="daohang_lj" ></span></div></td>
        <td width="121"><div align="right"><span class="daohang_lj" >点击：<%=rs("djs")%></span></div></td>
        <td width="5"></td>
        <td width="359" rowspan="2" valign="top"><table width="100%" border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td height="27"><div align="center"><span class="daohang_lj" style="font-size:14px"><%=rs("mc")%></span></div></td>
          </tr>
          <tr>
            <td height="19" valign="top"><p><span class="daohang_lj" style="font-size:12px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;发布：<%=rs("date2")%>&nbsp;&nbsp;来源：<%=rs("from2")%></span></p>
              </td>
          </tr>
          <tr></tr>
        </table>
        <%
	neirong=rs("neirong")
	max=400
	If Len(neirong)>max then neirong=left(neirong,max-2)&"..." 
	%>
        
          <table width="100%" height="217" border="0" cellpadding="0" cellspacing="0">
            <tr>
              <td width="25" height="217" valign="top">&nbsp;</td>
              <td width="334" valign="top"><span class="daohang_lj">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=neirong%></span></td>
            </tr>
          </table>
          <table width="100%" height="184" border="0" cellpadding="0" cellspacing="0">
            <tr>
              <td height="184"><form id="form2" name="form2" method="post" action="tiaozhuan.asp">
          <p><span class="daohang_lj" style="font-size:14px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;标题</span>
              <input name="bt" type="text" id="bt" size="40" maxlength="40" />
          </p>
          <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <textarea name="nr" cols="33" rows="7" id="nr"></textarea>
          </p>
          <p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            
            <%if session("islogin")="yes" then%>
             <a class="daohang_lj" href="idolcomment.asp?id=<%=rs("id")%>" target="_blank" style="font-size:11px">&nbsp;&nbsp;显示全部</a>
            <%else%>
             <a class="daohang_lj" href="comment.asp?id=<%=rs("id")%>" target="_blank" style="font-size:11px">&nbsp;&nbsp;显示全部</a>
   			<%end if%>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input type="submit" name="button" id="button" value="提交" /><input type="reset" name="button" id="button" value="重置" />
          <input type="hidden" name="ip" value="<%=Request.ServerVariables("REMOTE_ADDR")%>"><input type="hidden" name="id" value="<%=rs("id")%>"></p>
        </form></td>
            </tr>
          </table></td>
        </tr>
      <tr>
        <td height="450" colspan="4">
        
        <%
		if rs("flvurl2")="无" then
		%>
        <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,29,0" width="600" height="450" align="middle">
          <param name="movie" value="Flvplayer.swf" />
          <param name="quality" value="high" />
          <param name="allowFullScreen" value="true" />
          <param name="FlashVars" value="vcastr_file=upload/<%=rs("mce")%>/video.flv&LogoText=玉禄机器人&BufferTime=3" />
          <param name="SCALE" value="exactfit" />
          <embed src="Flvplayer.swf" width="600" height="450" align="middle" allowfullscreen="false" flashvars="vcastr_file=upload/<%=rs("mce")%>/video.flv&LogoText=玉禄机器人" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" scale="exactfit"></embed>
        </object>
        <%else%>
        <embed src="<%=rs("flvurl2")%>" quality="high" width="600" height="450" align="middle" allowScriptAccess="sameDomain" type="application/x-shockwave-flash"></embed>
        <%end if%>
        
        
        </td>
        </tr>
      <tr>
        <td height="19"></td>
        <td height="19" colspan="4">&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
    </table></td>
  </tr>
</table>
<table width="960" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="71">&nbsp;</td>
    <td width="457"><span class="daohang_lj" style="font-size:14px">图集：<span class="daohang_lj" style="font-size:14px"><%=rs("mc")%></span></span></td>
    <td width="51"><div align="right"><span class="daohang_lj" style="font-size:11px"><%=im%>/<%=rs("tps")%></span></div></td>
    <td width="381">&nbsp;</td>
  </tr>
</table>
<table width="960" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="50"><img onclick="location.href='?im=<%=im-1%>&id=<%=id%>'" src="images/jiantou_left.png" alt="" width="50" height="50" /></td>
    <td width="180" height="140"><table width="160" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td width="160" height="120" align="center"><%if im=1 then %>
        <img onclick="location.href='images.asp?im=<%=rs("tps")%>&id=<%=id%>&curpage=<%=curpage%>&scr=video2'" src="upload/<%=rs("mce")%>/<%=rs("tps")%>_160120.jpg" height="120" alt="" />
        <%else%>
        <img onclick="location.href='images.asp?im=<%=im-1%>&id=<%=id%>&curpage=<%=curpage%>&scr=video2'" src="upload/<%=rs("mce")%>/<%=im-1%>_160120.jpg" height="120" alt="" />
        <%end if%></td>
      </tr>
    </table></td>
    <td width="180"><table width="160" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td width="160" height="120" align="center"><img onclick="location.href='images.asp?im=<%=im%>&id=<%=id%>&curpage=<%=curpage%>&scr=video2'" src="upload/<%=rs("mce")%>/<%=im%>_160120.jpg" height="120" alt="" /></td>
      </tr>
    </table></td>
    <td width="180"><table width="160" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td width="160" height="120" align="center"><%if im-rs("tps")=0 then %>
        <img onclick="location.href='images.asp?im=1&id=<%=id%>&curpage=<%=curpage%>&scr=video2&curpage=<%=curpage%>&scr=video2'" src="upload/<%=rs("mce")%>/1_160120.jpg" height="120" alt="" />
        <%else%>
        <img onclick="location.href='images.asp?im=<%=im+1%>&id=<%=id%>&curpage=<%=curpage%>&scr=video2'" src="upload/<%=rs("mce")%>/<%=im+1%>_160120.jpg" height="120" alt="" />
        <%end if%></td>
      </tr>
    </table></td>
    <td width="50"><img onclick="location.href='?im=<%=im+1%>&id=<%=id%>'" src="images/jiantou_right.png" width="50" height="50" /></td>
    <td>&nbsp;</td>
  </tr>
</table>
<table width="960" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="960" height="22" class="daohang_lj" style="font-size:9px">（点击图片放大）</td>
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
