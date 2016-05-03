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


<!DOCTYPE HTML>
<!--
	Tessellate 1.0 by HTML5 UP
	html5up.net | @n33co
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
	<head>
		<title>FXX && WWY</title>
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

		<!-- Header -->
			<section id="header" class="dark">
				<header>
					<h1>FXX && WWY Wedding</h1>
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
						相识时，以为未来仿佛很远，却又尽在眼前</p>
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
										<h3>地点</h3>
									</header>
									<p>北京市通州区</p>
								</section>
							</div>
							<div class="4u">
								<section>
									<span class="feature-icon"><span class="fa fa-cloud"></span></span>
									<header>
										<h3>感谢</h3>
									</header>
									<p>感谢祝福</p>
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
						<h2>相识六年</h2>
						<p>光阴荏苒，岁月如梭，我们都把人生最美好的几年，贡献给了这份情谊<br />
						只想给这份感情一个最美的归属，因此我们决定相守</p>
					</div>
				</header>
				<div class="content dark style2">
					<div class="container">
						<div class="row">
							<div class="4u">
								<section>
									<h3>在一起并没有那么难</h3>
									<p>没有计较金钱，也没有计较未来，有的只是彼此的信任和关怀，很期待这个无数亲友见证的日子，希望你能来</p>
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
						<p>北京市通州区<br />
						到达方式</p>
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
								<p>欢迎你来</p>
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
                        <p>
                            想对我们说的话<br />
                            畅所欲言
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
								<div class="12u"><textarea name="message"  id="message" placeholder="Message"></textarea></div>
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
					</div>
				</div>
			</section>
			
		<!-- Footer -->
			<section id="footer">
				<ul class="icons">
					<li><a href="#" class="fa fa-twitter solo"><span>Twitter</span></a></li>
					<li><a href="#" class="fa fa-facebook solo"><span>Facebook</span></a></li>
					<li><a href="#" class="fa fa-google-plus solo"><span>Google+</span></a></li>
					<li><a href="#" class="fa fa-dribbble solo"><span>Dribbble</span></a></li>
					<li><a href="#" class="fa fa-github solo"><span>GitHub</span></a></li>
				</ul>
				<div class="copyright">
					<ul class="menu">
						<li>&copy; Untitled. All rights reserved.</li>
						<li>Design: <a href="#/">HTML5 UP</a></li>
						<li>More Templates <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a></li>
					</ul>
				</div>
			</section>

	</body>
</html>