<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<%
set conn=server.createobject("adodb.connection")
conn.open "driver={microsoft access driver (*.mdb)};dbq="&server.mappath("idol.mdb")
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
            <meta  http-equiv=refresh  content=1;URL="marry.asp?">

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>发表留言 - 跳转</title>
</head>

<body>






<table width="960" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td height="500" align="center" valign="top"><p>&nbsp;</p>
    <p>&nbsp;</p>
<%
request.setCharacterEncoding("utf-8")
name=Request.Form("name")
message=Request.Form("message")
if name="" or message="" then%>
<%else
exec66="INSERT INTO marry (name,message) VALUES ('"&name&"','"&message&"')"
conn.execute exec66
%>
    <p style="color:gray">发表成功！等待1秒！</p>
    <p style="color:gray">
            <a href="marry.asp" style="color:gray">跳转</a></p>
    <%end if%>
  </tr>
</table>
<%
conn.close
set conn=nothing
%>
</body>
</html>
