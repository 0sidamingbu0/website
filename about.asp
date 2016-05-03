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
<title>关于吴玉禄 - 农民发明家吴玉禄</title>
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
    <td width="810" height="50" align="left"background="images/sb_bg2.gif">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="daohang_lj"><a href="index.asp">首页</a> &gt;关于吴玉禄 &gt; <%if session("islogin")="yes" then%>
    <a class="daohang_lj" href="?se=1&id=<%=request("id")%>"><%se=request("se")
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
    <td valign="top" class="daohang_lj"><p> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
      <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;吴玉禄，只有小学文化北京通州区的普通农民，20多年潜心钻研机器人，成了著名的“机器人老爹”，吴玉禄把机器人看成是自己的孩子，让它们都姓“吴”，按出生先后依次取名“吴老大、吴老二、吴老三”等，他已有34个孩子。   按照一般人的思维，如果能研制出机器人，绝对应该是大学教授、科研人员之类的。甚至“算一道带小数点的乘法题，算完后都不知道小数点该搁哪儿”，却自己研制出了具有不同功能的机器人。</p>
      <h2>吴玉禄-简介</h2>
        <strong>吴老三十二拉他爹去逛街</strong>
      <p>46岁的吴玉禄出生在通州区。他只读过几年书，不干农活儿，却对机械很痴迷。</p>
      <p>在十一二岁时，因为一个从他面前匆匆而过的行人，其协调和稳当的走路方式，让他决定尝试着去做一个能站着走路的机器。 </p>
      <p>经历一次又一次的失败，直到1986年，吴玉禄用大量铁丝制成了带着尾巴的“吴老大”，会走路，但不会抬腿。约1年后，既会走路又会抬腿的“吴老二”诞生，依然长着尾巴。 </p>
      <p>从上世纪80年代中期到2006年，他先后自制了25个机器人，按顺序先后给命名为“吴老大”到“吴老二十五”。这些吴家“孩子”有的能走正步，有的能翻跟头……会拉车的   “吴老二十五”是他最喜欢的一个。</p>
      <p>新诞生的“吴老三十二”。“我是拉洋车机器人，吴玉禄是我爹，我拉我爹去逛街，谢谢。”戴着草帽的机器人一边忽闪着眼睛，一边扇着招风耳，振振有辞。</p>
      <p>眼前的吴玉禄，身穿笔挺的西服、脚踏锃亮的皮鞋、戴着大眼镜。对这身打扮，他的解释是刚到区里拿了港澳通行证，将要和妻子带着“吴老三十二”去香港参加国际艺术节。</p>
      <h2>吴玉禄-经历</h2>
        <strong>农民吴玉禄造出26个机器人</strong>
      <p>吴家出了“败家子”</p>
      <p>吴玉禄在家排行老五，是家里最小的儿子。从小，他不爱说话，就喜欢鼓捣一些小玩意儿。上学后，他对学习不感兴趣，却经常像小乞丐一样，满大街捡别人没用的“破烂”，宝贝一样放在书包里。 </p>
      <p>吴玉禄第一次接触的“机械”，是一把废弃的铁锁。为了弄明白钥匙和锁的关系，他砸坏了很多铁锁，终于学会了修锁配钥匙。   这个穷困的家庭，并未因为多了一个劳力而出现转机。耕田、种地等农活，吴玉禄一样不干。大量空闲时间，吴玉禄都花在捣鼓他收藏的那些机械“破烂”。村里的老人们都说，吴家的小儿子是个“败家子”。 </p>
      <p>丑陋的“吴老大” </p>
      <p>然而，家庭的贫困，让吴玉禄的梦想只能停在脑海中。村里照顾他这个困难家庭的孩子，将其招了工，让他进入一家民营工厂当电工。造机器人的梦想，从那时开始付诸实施。 </p>
      <p>1978年夏，16岁的吴玉禄与村里一个铁哥们儿商量：一起做个会走路的机器吧。那时候，他还不知道“机器人”的概念。   折腾了一年多，第一个机器人面世：外形是一个人形的铁皮，身后的两根粗铁丝连接着一个齿轮，一台捡来的小电机充当动力。小电机发动后，带动两根铁丝前后移动，“铁皮人”开始动起来。   这是吴玉禄的机器人处女作，名为“吴老大”。从那一天开始，他就上瘾了。 </p>
      <p>造风扇俘获女孩心</p>
      <p>1986年，经媒人介绍，他认识了一名叫董淑艳的女孩。 然而，两人第一次见面，董淑艳甩下两个字：“不成”，扭头就走。   吴玉禄找来一个电机，接上一根连杆，将一柄蒲扇插在上面。通电后，蒲扇前后摆动，扇出凉风。他还设置了一个挡位开关，通过调节电机的转速，控制蒲扇摆动的速度。   这个小物件，让董淑艳欣喜异常。经过一段时间的相处，她发现只要她能想到的，吴玉禄都能给她做出来。 就这样，两人结婚了。直到现在，吴玉禄的家里还摆着这台“电风扇”。 </p>
      <strong>吴玉禄</strong>
      <p>雷管炸伤手 </p>
      <p>1989年夏，吴玉禄正在造机器人“吴老二”。在废品站搜罗材料时，他发现了一节“七号电池”，标签上写满外国字，像是“进口货”。他赶紧将它拿回家，准备当作“吴老二”的动力。当他接通“电池”的正负两级时，一声巨响，爆炸了！   吴玉禄的左手顿时血肉模糊，皮都翻起来了。邻居将他送到医院，打了十几针麻药，才缝合好伤口。 </p>
      <p>吴玉禄的无名指被炸坏。直到现在，这根手指到冬天总是冰凉的。 后来，吴玉禄才知道，那节爆炸的“电池”其实是根雷管，上面写的英文字母“TNT”是炸药的意思。 </p>
      <p>妻子离家出走</p>
      <p>从废品站淘回来的东西，虽然成本低廉，但要让机器人“听话”地动起来，却需要更多精密的零件。吴玉禄指着一个被拆得稀烂的玩具直升机说：“几百块的玩具，我只用它的遥控器。”诸如从新摩托上拆电机、从汽配城买小轿车坐椅，这些事他都干得出来。 </p>
      <p>1999年夏季的一天，吴玉禄带着全家到邻村维修农具，但时间不长就接到村里的电话，让他们赶紧回家。吴玉禄刚骑车到村外，就见自家方向浓烟滚滚，村里大喇叭喊着：“社员们都去吴玉禄家灭火。”等他们赶到家门口时，整个房子烧得只剩下三根檩条。   董淑艳带着孩子离家出走，打算和吴玉禄离婚：“让他跟机器人一块过吧”。 </p>
      <strong>吴玉禄</strong>
      <p>一举成名 </p>
      <p>2002年，吴玉禄带着他最得意的机器人——“吴老五”，参加全国农民科技之星大赛，一举夺得冠军，并赢得一万元奖金。这是吴玉禄做机器人挣到的第一笔钱。   吴玉禄和他的机器人上了电视，“那时多新鲜啊，我们还请记者吃了顿饭呢。”董淑艳说，那次采访，吴玉禄脸憋得通红，就是说不出话。</p>
      <p>2003年，众多媒体蜂拥而至。最多时，一天就有15家电视台记者来采访，“车都停到了村外，小院里都是摄像机。”   名气变大，吴玉禄过日子也要排班了。他开始有些不适应，想安静地造机器人的时间更少了。从去年至今，他疲于四处奔波，几部新机器的设想只是刚刚有了个模子。 </p>
      <p>吴玉禄造机器人不必再偷偷摸摸了，妻子和两个儿子都已经成了他的助手。一个多月前，他和正在大学学习软件设计的二儿子联合开发了一部会下棋的机器人。吴玉禄说，他现在很多设想都需要和儿子一起完成，这对他们两个都是一个挑战。 </p>
      <h2>吴玉禄-曾经“抑郁”</h2>
        <strong>吴玉禄</strong>
      <p>15万年薪让他头疼失眠，一家浙江企业请他去研制高楼擦玻璃机器人。年薪15万元！老吴吃了一惊，但还是欣然带着妻子南下杭州。和以往一样，他主要负责机械制造。高额年薪让他铆足了劲儿想证明自己。</p>
      <p>就在机器人初具雏形时，老吴却病倒了——他开始头疼、失眠。“他住着人家给的房子、拿这么多钱，心理压力太大。”吴嫂说。</p>
      <p>眼看着老吴一下子瘦了十来斤，吴嫂只好带着他看心理医生。老吴不承认自己“病”了，也不舍得一小时就“供”给心理医生200多块，每次都是被强拽去的。一个多月后，他的症状越来越重，只好回家。</p>
      <p>又花了一万多元看病吃药，医生怀疑老吴得了抑郁症。吃了一段精神类药物，自称“心里踏实了”的老吴症状也无声无息地消失了。最后，厂家给了他10万元报酬。</p>
      <h2>吴玉禄-未来目标</h2>
        <strong>吴玉禄做客会客厅 机器人写</strong>
      <p>有了经验，设计起来得心应手。设计一个会翻跟头的机械狗，仅需2小时；用不到3个月制作成功的“超级吴老五”，已被一名大学生花3万元人民币买走。 </p>
      <p>他和正在读计算机专业的儿子合作制造更具实用性和智能性的机器人，他管硬件设计，儿子来编程序。目前，二人已做好了可给病人定时翻身的“吴老三十三”和会下棋的“吴老三十四”。</p>
      <p>吴玉禄从石家庄一个展览的会场赶回家。这个位于通州区漷县镇偏远乡村的普通农家院，已升级为“玉禄(系列)机器人研究所”。他的名片上用中英文标注的头衔十分醒目——“发明家”。 </p>
      <p>父子合作开机器人工厂<br />
        在老吴心里，最大的目标就是建个机器人工厂——自己管机械设计，儿子管程序设计，工人组装。“到时候，我们成为百万富翁没问题。”老吴显然已经把学计算机的小儿子吴汪洋当成了接班人。<br />
        吴汪洋在北京信息科技大学读大一，他已经进了学校的科协社团。老吴说，小吴曾经发明过家用防盗报警器，和自己一样脑子好使。<br />
        小吴并不想太多同学知道他是吴玉禄的儿子，以至于接受采访从不上镜，因为他觉得自己有自己的本事。但他仍愿意和老爹联手。十多年的耳濡目染，让他和爸爸的梦想已经趋近一致。 </p>
      <h2>吴玉禄-评价</h2>
       
      <p>只有小学学历的他称，满脑子都是想法，也能画出设计草图，但十分后悔当初没好好读书，否则在制作设计图时，就不是仅凭感觉，而可以根据数学公式或机械原理让孩子们的行为更精确、相貌更漂亮。拿吴老三十二为例，初定制作时间3个月，其中腿完全按照人腿的动作设计。但这一看似简单的动作设计，却花了吴近6年时间反复实验才成功。</p>
    <p>想做什么机械了，图纸就出现在脑子里，自己做出那么多机器人，完全靠天分。 </p></td>
    <td width="400" valign="top" class="daohang_lj"><table width="350" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td height="1333" align="center" valign="top"><p><img src="images/about/9.jpg" width="350" height="233" /></p>
          <p><img src="images/about/8.jpg" width="350" height="233" /></p>
          <p><img src="images/about/7.jpg" width="350" height="262" /></p>
          <p><img src="images/about/6.jpg" width="350" height="262" /></p>
          <p><img src="images/about/2.jpg" width="350" height="262" /></p>
          <p><img src="images/about/1.jpg" width="350" height="280" /></p>
          <p><img src="images/about/3.jpg" width="350" height="262" /></p>
          <p><img src="images/about/4.jpg" width="350" height="262" /></p>
          <p>&nbsp;</p></td>
      </tr>
    </table>
      <p>&nbsp;</p>
      <table width="300" border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
          <td>吴玉禄的联系方式：<br />
  电话： (+86)010-80587785<br />
  手机: 13552072280<br />
  地址: 北京市通州区漷县镇马府423号<br />
  blog: http://blog.sina.com.cn/wuyulu<br />
  E-mail: yulu1962@163.com<br />
  主页: www.yulurobot.com</td>
        </tr>
      </table>
    <p>&nbsp;</p></td>
  </tr>
</table>
<%
rs3.close
set rs3=nothing
conn.close
set conn=nothing
%>
</body>
</html>
