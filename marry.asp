
<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>

<!DOCTYPE HTML>
<!--
	Tessellate 1.0 by HTML5 UP
	html5up.net | @n33co
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>

	<head>
		<title>FXX && WWY Wedding</title>
		<meta http-equiv="content-type" content="text/html; charset=utf-8" />
		
		<meta name="description" content="" />
		<meta name="keywords" content="" />
		<!--[if lte IE 8]><script src="css/ie/html5shiv.js"></script><![endif]-->
		<script src="js/jquery.min.js"></script>
		<script src="js/skel.min.js"></script>
		<script src="js/init.js"></script>
		<noscript>
			<link rel="stylesheet" href="css/skel-noscript.css" />
			<link rel="stylesheet" href="css/style.css" />
			<link rel="stylesheet" href="css/style-wide.css" />
		</noscript>
		<!--[if lte IE 8]><link rel="stylesheet" href="css/ie/v8.css" /><![endif]-->
		<!--[if lte IE 9]><link rel="stylesheet" href="css/ie/v9.css" /><![endif]-->
	</head>
	<body>
<%
set conn=server.createobject("adodb.connection")
conn.open "driver={microsoft access driver (*.mdb)};dbq="&server.mappath("idol.mdb")
dim a,b
%>
<%
		exec2="select * from marry  order by date DESC"
		set rs2=server.createobject("adodb.recordset")  
		rs2.open exec2,conn,1,3  
    
%>
		<!-- Header -->
			<section id="header" class="dark">
				<header>
					<h1></h1>
				</header>
				<footer>
					<a href="#first" class="button scrolly">邀请</a>
				</footer>
			</section>
			
		<!-- First -->
			<section id="first" class="main">
				<header>
					<div class="container">
						<h2>真诚的邀请</h2>
						<p>如果六年前不曾遇见，也不会有今日的美好<br />
						相识时，以为未来很远，现在看来，却又近在眼前<br />
						期待你，带着祝福和欣喜，如约而至</p>
					</div>
				</header>
				<div class="content dark style1 featured">
					<div class="container">
						<div class="row">
							<div class="4u">
								<section>
									<span class="feature-icon"><span class="fa fa-clock-o"></span></span>
									<header>
										<h3>时间</h3>
									</header>
									<p>2014年9月20日10:58</p>
								</section>
							</div>
							<div class="4u">
								<section>
									<span class="feature-icon"><span class="fa fa-bolt"></span></span>
									<header>
										<h3>敬邀</h3>
									</header>
									<p>期待见到你</p>
								</section>
							</div>
							<div class="4u">
								<section>
									<span class="feature-icon"><span class="fa fa-cloud"></span></span>
									<header>
										<h3>感恩</h3>
									</header>
									<p>感谢出现在我们生命中的每一个人</p>
								</section>
							</div>
						</div>
						<div class="row">
							<div class="12u">
								<footer>
									<a href="#second" class="button scrolly">我们的故事</a>
								</footer>
							</div>
						</div>
					</div>
				</div>
			</section>
            <div class="copyrights">Collect from <a href="http://www.cssmoban.com/" >网页模板</a></div>

		<!-- Second -->
			<section id="second" class="main">
				<header>
					<div class="container">
						<h2>相识六年 相守一生</h2>
						<p>光阴荏苒，岁月如梭，我们都把人生最美好的几年，献给了这份情谊<br />
						只想给这份感情一个最美的归属，因此我们决定相守<br />
						时光总是走得很快，所以我们选择珍惜相处的每一天<br />
						快乐和争吵如影随形，幸福与伤感相依相伴<br />
						我们将一同面对今后发生的一切，并努力给对方一个最好的自己<br />
						犹记得初识的那个夜晚，月光皎洁，晚风清凉<br />
						我们就此，走进了彼此的生命
						</p>
					</div>
				</header>
				<div class="content dark style2">
					<div class="container">
						<div class="row">
							<div class="4u">
								<section>
									<h3>在一起</h3>
									<p>没有计较金钱，也没有认真规划未来<br />
									   我们有的只是彼此的信任和关怀<br />
									   很期待这个无数亲友见证的日子<br />
									   我们都不是完美的人<br />
									   却决定用完美的眼光来看待对方<br />
									   我们都有很多缺点<br />
									   却要努力学会包容和体谅<br />
									   世间纷扰太多<br />
									   我们只想简单相伴<br />
									   携手共度一生<br />
									   在一起或许并没有那么难<br />
									   一切仅仅是因为相爱<br />
									   幸福总是需要见证<br />
									   所以<br />
									   希望你能来
									   </p>
									<footer>
										<a href="#third" class="button scrolly">婚礼地点</a>
									</footer>
								</section>
							</div>
							<div class="8u">
								<div class="row no-collapse">
									<div class="6u"><a href="images\pic01.jpg" class="image full"><img src="images/pic01.jpg" alt="" /></a></div>
									<div class="6u"><a href="images\pic02.jpg" class="image full"><img src="images/pic02.jpg" alt="" /></a></div>
								</div>
								<div class="row no-collapse">
									<div class="6u"><a href="images\pic03.jpg" class="image full"><img src="images/pic03.jpg" alt="" /></a></div>
									<div class="6u"><a href="images\pic04.jpg" class="image full"><img src="images/pic04.jpg" alt="" /></a></div>
								</div>
								<div class="row no-collapse">
									<div class="6u"><a href="images\pic05.jpg" class="image full"><img src="images/pic05.jpg" alt="" /></a></div>
									<div class="6u"><a href="images\pic06.jpg" class="image full"><img src="images/pic06.jpg" alt="" /></a></div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>
			
		<!-- Third -->
			<section id="third" class="main">
				<header>
					<div class="container">
						<h2>婚礼地点</h2>
						<p>北京市通州区张家湾镇小北关村胜利干渠路往东1500米-碧海圆生态农业观光园<br />
						</p>
					</div>
				</header>
				<div class="content dark style3">
					<div class="container">
						<span class="image featured"><img src="images/pic07.jpg" alt="" /></span>
						<div class="row">
							<div class="4u">
								<h3>到达方式</h3>
								<p>驾车路线</p>
							</div>
							<div class="4u">
								<p>乘车路线</p>
							</div>
							<div class="4u">
								<p></p>
								<footer>
									<a href="#fourth" class="button scrolly">留言板</a>
								</footer>
							</div>
						</div>
					</div>
				</div>
			</section>

		<!-- Basic Elements -->
		<!--
			<section class="main">
				<header>
					<div class="container">
						<h2>A Whole Lotta Elements</h2>
						<p>General purpose elements for every general purpose. Or something like that.</p>
					</div>
				</header>
				<div class="content style1 dark">
					<div class="container">
						<section>
							<header>
								<h3>Paragraph</h3>
								<p>This is a byline</p>
							</header>
							<p>Phasellus nisl nisl, varius id <sup>porttitor sed pellentesque</sup> ac orci. Pellentesque 
							habitant <strong>strong</strong> tristique <b>bold</b> et netus <i>italic</i> malesuada <em>emphasized</em> ac turpis egestas. Morbi 
							leo suscipit ut. Praesent <sub>id turpis vitae</sub> turpis pretium ultricies. Vestibulum sit 
							amet risus elit.</p>
						</section>
						<section>
							<header>
								<h3>Blockquote</h3>
							</header>
							<blockquote>Fringilla nisl. Donec accumsan interdum nisi, quis tincidunt felis sagittis eget.
							tempus euismod. Vestibulum ante ipsum primis in faucibus. Cras sit amet urna eros, id egestas
							tempus ante ipsum primis in faucibus orci luctus et ultrices.</blockquote>
						</section>
						<section>
							<header>
								<h3>Divider</h3>
							</header>
							<p>Donec consectetur <a href="#">vestibulum dolor et pulvinar</a>. Etiam vel felis enim, at viverra 
							ligula. Ut porttitor sagittis lorem, quis eleifend nisi ornare vel. Praesent nec orci 
							facilisis leo magna. Cras sit amet urna eros, id egestas urna. Quisque aliquam 
							tempus euismod. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices 
							posuere cubilia.</p>
							<hr />
							<p>Donec consectetur vestibulum dolor et pulvinar. Etiam vel felis enim, at viverra 
							ligula. Ut porttitor sagittis lorem, quis eleifend nisi ornare vel. Praesent nec orci 
							facilisis leo magna. Cras sit amet urna eros, id egestas urna. Quisque aliquam 
							tempus euismod. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices 
							posuere cubilia.</p>
						</section>
						<section>
							<header>
								<h3>Unordered List</h3>
							</header>
							<ul class="default">
								<li>Donec consectetur vestibulum dolor et vel felis enim at viverra ligula. Ut porttitor sagittis lorem.</li>
								<li>Donec consectetur vestibulum dolor et vel felis enim at viverra ligula. Ut porttitor sagittis lorem.</li>
								<li>Donec consectetur vestibulum dolor et vel felis enim at viverra ligula. Ut porttitor sagittis lorem.</li>
								<li>Donec consectetur vestibulum dolor et vel felis enim at viverra ligula. Ut porttitor sagittis lorem.</li>
							</ul>
						</section>
						<section>
							<header>
								<h3>Ordered List</h3>
							</header>
							<ol class="default">
								<li>Donec consectetur vestibulum dolor et vel felis enim at viverra ligula. Ut porttitor sagittis lorem.</li>
								<li>Donec consectetur vestibulum dolor et vel felis enim at viverra ligula. Ut porttitor sagittis lorem.</li>
								<li>Donec consectetur vestibulum dolor et vel felis enim at viverra ligula. Ut porttitor sagittis lorem.</li>
								<li>Donec consectetur vestibulum dolor et vel felis enim at viverra ligula. Ut porttitor sagittis lorem.</li>
							</ol>
						</section>
						<section>
							<header>
								<h3>Table</h3>
							</header>
							<div class="table-wrapper">
								<table class="default">
									<thead>
										<tr>
											<th>ID</th>
											<th>Name</th>
											<th>Description</th>
											<th>Price</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>00001</td>
											<td>Lorem ipsum dolor</td>
											<td>Ut porttitor sagittis lorem quis nisi ornare.</td>
											<td>29.99</td>
										</tr>
										<tr>
											<td>00002</td>
											<td>Sit amet nullam</td>
											<td>Ut porttitor sagittis lorem quis nisi ornare.</td>
											<td>19.99</td>
										</tr>
										<tr>
											<td>00003</td>
											<td>Feugiat felis viverra</td>
											<td>Ut porttitor sagittis lorem quis nisi ornare.</td>
											<td>29.99</td>
										</tr>
										<tr>
											<td>00004</td>
											<td>Sagittis enim felis</td>
											<td>Ut porttitor sagittis lorem quis nisi ornare.</td>
											<td>19.99</td>
										</tr>
										<tr>
											<td>00005</td>
											<td>Nullam sed vestibulum</td>
											<td>Ut porttitor sagittis lorem quis nisi ornare.</td>
											<td>19.99</td>
										</tr>
									</tbody>
									<tfoot>
										<tr>
											<td colspan="3"></td>
											<td>100.00</td>
										</tr>
									</tfoot>
								</table>
							</div>
						</section>
						<section>
							<header>
								<h3>Form</h3>
							</header>
							<form method="post" action="#">
								<div class="row half">
									<div class="6u">
										<input class="text" type="text" name="name" id="name" value="" placeholder="John Doe" />
									</div>
									<div class="6u">
										<input class="text" type="text" name="email" id="email" value="" placeholder="johndoe@domain.tld" />
									</div>
								</div>
								<div class="row half">
									<div class="12u">
										<div class="select">
											<select name="department" id="department">
												<option value="">Choose a department</option>
												<option value="1">Manufacturing</option>
												<option value="2">Administration</option>
												<option value="3">Support</option>
											</select>
										</div>
									</div>
								</div>
								<div class="row half">
									<div class="12u">
										<input class="text" type="text" name="subject" id="subject" value="" placeholder="Enter your subject" />
									</div>
								</div>
								<div class="row half">
									<div class="12u">
										<textarea name="message" id="message" placeholder="Enter your message"></textarea>
									</div>
								</div>
								<div class="row">
									<div class="12u">
										<ul class="actions">
											<li><input type="submit" class="button" value="Send Message" /></li>
											<li><input type="reset" class="button alt" value="Clear Form" /></li>
										</ul>
									</div>
								</div>
							</form>
						</section>
					</div>
				</div>
			</section>
		-->
		
		<!-- Fourth -->
			<section id="fourth" class="main">
				<header>
					<div class="container">
						<h2>留言板</h2>
						<p>想对我们说的话<br />
						</p>
						<p></p><p></p>
                        <%for j=1 to 10000%>
                        <%if rs2.eof or rs2.bof then exit for%>
                        <p>

                            <%=rs2("name")%>&nbsp;<%=rs2("date")%>
                            </p>
                        <p>
                            <%=rs2("message")%>
                        </p>
                        <p></p>
                        <%rs2.movenext%>
                        <%next%>
					</div>
				</header>
				<div class="content style4 featured">
					<div class="container small">
						<form method="post" action="marrytz.asp">
							<div class="row half">
								<div class="6u"><input type="text" name="name" id="name" class="text" placeholder="Name" /></div>
								
							</div>
							<div class="row half">
								<div class="12u"><textarea name="message"  id="message" placeholder="留言"></textarea></div>
							</div>
							<div class="row">
								<div class="12u">
									<ul class="actions">
										<li><input type="submit" class="button" value="提交" /></li>
										<li><input type="reset" class="button alt" value="清除" /></li>
									</ul>
								</div>
							</div>
						</form>
					</div>
				</div>
			</section>
			


	</body>
</html>