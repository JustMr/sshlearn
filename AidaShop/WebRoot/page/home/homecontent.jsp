<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'homecontent.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" type="text/css" href="css/style-homecontent.css">
	<link rel="stylesheet" type="text/css" href="css/style-clear.css">
	<link rel="stylesheet" href="css/zzsc.css" type="text/css" media="screen" />
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<script type="text/javascript" src="js/jquery-3.1.1.min.js"></script>
	<script type="text/javascript" src="js/js-homecontent.js"></script>
  </head>  
  
  <body>
  	<!-- 导航栏 -->
  	<div class="homeNav">
  		<div class="homeNavMain">
  			<ul class="homeNavUl">
  				<li class="homeNavFirst">
  					所有商品分类
  					<em class="bias"></em>
  					<ul class="fistMenu">
  						<li class="firstMenuItem">
  							<h3>
  								<i class="iconFirstMenu iconfont">&#xe743;</i>
  								<a href="###">进口食品</a>、
  								<a href="###">生鲜</a>、
  								<a href="###">海购</a>
  							</h3>
  							<div class="secondMenu">
  								<dl class="secondMenuItem">
  									<dt>
  										<a href="###">进口零食</a>
  										<em>/</em>
  										<a href="###">干果</a>
  										<em>/</em>
  										<a href="###">零食</a>
  									</dt>
  									<dd><a href="###">海苔</a></dd>
  									<dd><a href="###">肉干肉脯</a></dd>
  									<dd><a href="###">鱼类海味</a></dd>
  									<dd><a href="###">果冻布丁</a></dd>
  									<dd><a href="###">薯片</a></dd>
  									<dd><a href="###">膨化</a></dd>
  									<dd><a href="###">坚果</a></dd>
  									<dd><a href="###">开心果</a></dd>
  									<dd><a href="###">什锦坚果</a></dd>
  									<dd><a href="###">腰果</a></dd>
  									<dd><a href="###">蜜饯</a></dd>
  									<dd><a href="###">芒果干</a></dd>
  									<dd><a href="###">蔓越莓干</a></dd>
  									<dd><a href="###">榴莲干</a></dd>
  								</dl>
  							</div>
  						</li>
  						<li class="firstMenuItem">
  							<h3>
  								<i class="iconFirstMenu iconfont">&#xe618;</i>
  								<a href="###">食品</a>、
  								<a href="###">饮料</a>、
  								<a href="###">酒</a>
  							</h3>
  							<div class="secondMenu">
  								<dl class="secondMenuItem">
  									<dt><a></a></dt>
  									<dd><a></a></dd>
  								</dl>
  							</div>
  						</li>
  						<li class="firstMenuItem">
  							<h3>
  								<i class="iconFirstMenu iconfont">&#xe73f;</i>
  								<a href="###">母婴</a>、
  								<a href="###">玩具</a>、
  								<a href="###">童装</a>
  							</h3>
  							<div class="secondMenu">
  								<dl class="secondMenuItem">
  									<dt><a></a></dt>
  									<dd><a></a></dd>
  								</dl>
  							</div>
  						</li>
  						<li class="firstMenuItem">
  							<h3>
  								<i class="iconFirstMenu iconfont">&#xe608;</i>
  								<a href="###">厨卫清洁</a>、
  								<a href="###">纸</a>、
  								<a href="###">清洁剂</a>
  							</h3>
  							<div class="secondMenu">
  								<dl class="secondMenuItem">
  									<dt><a></a></dt>
  									<dd><a></a></dd>
  								</dl>
  							</div>
  						</li>
  						<li class="firstMenuItem">
  							<h3>
  								<i class="iconFirstMenu iconfont">&#xe681;</i>
  								<a href="###">家居</a>、
  								<a href="###">家装</a>、
  								<a href="###">宠物</a>
  							</h3>
  							<div class="secondMenu">
  								<dl class="secondMenuItem">
  									<dt><a></a></dt>
  									<dd><a></a></dd>
  								</dl>
  							</div>
  						</li>
  						<li class="firstMenuItem">
  							<h3>
  								<i class="iconFirstMenu iconfont">&#xe639;</i>
  								<a href="###">美妆</a>、
  								<a href="###">个人护理</a>、
  								<a href="###">洗护</a>
  							</h3>
  							<div class="secondMenu">
  								<dl class="secondMenuItem">
  									<dt><a></a></dt>
  									<dd><a></a></dd>
  								</dl>
  							</div>
  						</li>
  						<li class="firstMenuItem">
  							<h3>
  								<i class="iconFirstMenu iconfont">&#xe600;</i>
  								<a href="###">女装内衣</a>、
  								<a href="###">男装</a>、
  								<a href="###">珠宝</a>
  							</h3>
  							<div class="secondMenu">
  								<dl class="secondMenuItem">
  									<dt><a></a></dt>
  									<dd><a></a></dd>
  								</dl>
  							</div>
  						</li>
  						<li class="firstMenuItem">
  							<h3>
  								<i class="iconFirstMenu iconfont">&#xe73c;</i>
  								<a href="###">鞋靴</a>、
  								<a href="###">箱包</a>、
  								<a href="###">户外运动</a>
  							</h3>
  							<div class="secondMenu">
  								<dl class="secondMenuItem">
  									<dt><a></a></dt>
  									<dd><a></a></dd>
  								</dl>
  							</div>
  						</li>
  						<li class="firstMenuItem">
  							<h3>
  								<i class="iconFirstMenu iconfont">&#xe60f;</i>
  								<a href="###">手机</a>、
  								<a href="###">数码</a>、
  								<a href="###">电脑办公</a>
  							</h3>
  							<div class="secondMenu">
  								<dl class="secondMenuItem">
  									<dt><a></a></dt>
  									<dd><a></a></dd>
  								</dl>
  							</div>
  						</li>
  						<li class="firstMenuItem">
  							<h3>
  								<i class="iconFirstMenu iconfont">&#xe610;</i>
  								<a href="###">大家电</a>、
  								<a href="###">小家电</a>、
  								<a href="###">汽车</a>
  							</h3>
  							<div class="secondMenu">
  								<dl class="secondMenuItem">
  									<dt><a></a></dt>
  									<dd><a></a></dd>
  								</dl>
  							</div>
  						</li>
  						<li class="firstMenuItem">
  							<h3>
  								<i class="iconFirstMenu iconfont">&#xe634;</i>
  								<a href="###">礼品卡</a>、
  								<a href="###">旅游</a>、
  								<a href="###">图书</a>
  							</h3>
  							<div class="secondMenu">
  								<dl class="secondMenuItem">
  									<dt><a></a></dt>
  									<dd><a></a></dd>
  								</dl>
  							</div>
  						</li>
  					</ul>
  				</li>
  				<li class="homeNavLi">
  					<a href="###">首页</a>
  				</li>
  				<li class="homeNavLi">
  					<a href="###">爱搭</a>
  				</li>
  				<li class="homeNavLi">
  					<a href="###">爱家居</a>
  				</li>
  				<li class="homeNavLi">
  					<a href="###">电器城</a>
  				</li>
  				<li class="homeNavLi">
  					<a href="###">爱搭排行</a>
  				</li>
  			</ul>
  		</div>
  	</div>
  	<div id="mainLayout">
	  	<!-- 轮转图片 -->
	  	<div class="homeRound">
			<div class="hot_wrap">
				<div id="target" class="tbui_slideshow_container">
					<ul class="tbui_slideshow_list">
						<li><a href="###" target="_blank">
						<img src="images/lunzhuan/ChEi1lib0LyAOpiQAAF7dJoDGWE20100.jpg" width="750" height="398" />
						</a></li>
						<li><a href="###" target="_blank">
						<img src="images/lunzhuan/ChEi1VisBTGAOJ_0AAIhjQyE_Xo96100.jpg" width="750" height="398" />
						</a></li>
						<li><a href="###" target="_blank">
						<img src="images/lunzhuan/ChEi3Firoe6AR3nsAAEcb0qs4c876800.jpg" width="750" height="398" />
						</a></li>
	                    <li><a href="###" target="_blank">
						<img src="images/lunzhuan/ChEwoFikGyiAeVtHAAG8eb2UskE46800.jpg" width="750" height="398" />
						</a></li>
						<li><a href="###" target="_blank">
						<img src="images/lunzhuan/ChEwoliqzR6AGAFJAAF2nDJ5-cY70500.jpg" width="750" height="398" />
						</a></li>
					</ul>
				</div>
				<div class="slide_bg">
				</div>
				<!--导航条的结构-->
				<ul id="controller">
					<li>1</li>
					<li>2</li>
					<li>3</li>                          
					<li>4</li>
					<li>5</li>
				</ul>
				<a href="#" id="prev">上一页</a> <a href="#" id="next">下一页</a>
			</div>
			<div class="left-wrap"></div>
			<div class="homeTip">
				<div id="newsShow">
					<dl>
						<dt>快讯</dt>
						<dd>
							<a target="_blank" href="###">
								<b>【公告】</b>
								<span>Aida商城开业活动</span>
							</a>
						</dd>
						<dd>
							<a target="_blank" href="###">
								<b>【优选】</b>
								<span>图书开业促 满199减100</span>
							</a>
						</dd>
						<dd>
							<a target="_blank" href="###">
								<b>【优选】</b>
								<span>图书开业促 满199减100</span>
							</a>
						</dd>
						<dd>
							<a target="_blank" href="###">
								<b>【优选】</b>
								<span>图书开业促 满199减100</span>
							</a>
						</dd>
					</dl>
				</div>
				<div id="speciaxlBtn">
				
				</div>
			</div>
	  	</div>
	  	<div class="clear"></div>
	  	<script type="text/javascript" src="js/jquery-min-1.7.js" charset="utf-8"></script>
		<script type="text/javascript" src="js/all_dfd5691e.js"></script>
		<script>
			$(function () {
				new SlideShow({
				nav: "#controller",
				effect : "fade",
				target: "#target",
				activeClass: "active",
				next: "#next",
				prev: "#prev",
				auto: true
				});
			});
		</script>
	    <div class="ad_home_wrap">
	    	<!-- 单个商品展示框 -->
	    	<div class="floor_title">
	    		<a>时尚</a>
	    		<em>·</em>
	    		<a>生活</a>
	    	</div>
	    	<div class="good_common_show">
	    		<div class="good_com_box">
	    			<div class="box_picture">
	    				<img alt="符号公社 男士字母时尚休闲卫衣" src="images/homesingleshow/846991_00--w_430_h_517.jpg">
	    			</div>
	    			<p></p>
	    			<div class="box_shadow"></div>
	    			<div id="shadoWord">
	    				<a id="chaKanXiangQing" href="page/detail/detail.jsp">查看详情</a>
	    				<a id="kuaiJieTuiJian">快捷推荐</a>
	    			</div>
	    		</div>
	    		<div class="good_com_box">
	    			<div class="box_picture">
	    				<img alt="符号公社 男士字母时尚休闲卫衣" src="images/homesingleshow/846991_00--w_430_h_517.jpg">
	    			</div>
	    			<p></p>
	    			<div class="box_shadow"></div>
	    			<div id="shadoWord">
	    				<a id="chaKanXiangQing">查看详情</a>
	    				<a id="kuaiJieTuiJian">快捷推荐</a>
	    			</div>
	    		</div>
	    		<div class="good_com_box">
	    			<div class="box_picture">
	    				<img alt="符号公社 男士字母时尚休闲卫衣" src="images/homesingleshow/846991_00--w_430_h_517.jpg">
	    			</div>
	    			<p></p>
	    			<div class="box_shadow"></div>
	    			<div id="shadoWord">
	    				<a id="chaKanXiangQing">查看详情</a>
	    				<a id="kuaiJieTuiJian">快捷推荐</a>
	    			</div>
	    		</div>
	    		<div class="good_com_box">
	    			<div class="box_picture">
	    				<img alt="符号公社 男士字母时尚休闲卫衣" src="images/homesingleshow/846991_00--w_430_h_517.jpg">
	    			</div>
	    			<p></p>
	    			<div class="box_shadow"></div>
	    			<div id="shadoWord">
	    				<a id="chaKanXiangQing">查看详情</a>
	    				<a id="kuaiJieTuiJian">快捷推荐</a>
	    			</div>
	    		</div>
	    		<div class="good_com_box">
	    			<div class="box_picture">
	    				<img alt="符号公社 男士字母时尚休闲卫衣" src="images/homesingleshow/846991_00--w_430_h_517.jpg">
	    			</div>
	    			<p></p>
	    			<div class="box_shadow"></div>
	    			<div id="shadoWord">
	    				<a id="chaKanXiangQing">查看详情</a>
	    				<a id="kuaiJieTuiJian">快捷推荐</a>
	    			</div>
	    		</div>
	    		<div class="clear"></div>
	    	</div>
	    	<!-- 造型师推荐 -->
	    	<div class="floor_title">
	    		<a>造型</a>
	    		<em>·</em>
	    		<a>大师</a>
	    	</div>
	    	<div class="style_man_recommend">
		    	<div class="team-members row">
					<!-- effect-3 html -->
					<div class="single-member effect-3">
						<div class="member-image">
							<img src="images/member_270x210.jpg" alt="Member">
						</div>
						<div class="member-info">
							<h3>Sophia</h3>
							<h5>ShowGilr</h5>
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut .</p>
							<div class="social-touch">
								<a class="fb-touch" href="#"></a>
								<a class="tweet-touch" href="#"></a>
								<a class="linkedin-touch" href="#"></a>
							</div>
						</div>
					</div>
					<div class="single-member effect-3">
						<div class="member-image">
							<img src="images/member_270x210.jpg" alt="Member">
						</div>
						<div class="member-info">
							<h3>Sophia</h3>
							<h5>ShowGilr</h5>
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut .</p>
							<div class="social-touch">
								<a class="fb-touch" href="#"></a>
								<a class="tweet-touch" href="#"></a>
								<a class="linkedin-touch" href="#"></a>
							</div>
						</div>
					</div>
					<div class="single-member effect-3">
						<div class="member-image">
							<img src="images/member_270x210.jpg" alt="Member">
						</div>
						<div class="member-info">
							<h3>Sophia</h3>
							<h5>ShowGilr</h5>
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut .</p>
							<div class="social-touch">
								<a class="fb-touch" href="#"></a>
								<a class="tweet-touch" href="#"></a>
								<a class="linkedin-touch" href="#"></a>
							</div>
						</div>
					</div>
					<div class="single-member effect-3">
						<div class="member-image">
							<img src="images/member_270x210.jpg" alt="Member">
						</div>
						<div class="member-info">
							<h3>Sophia</h3>
							<h5>ShowGilr</h5>
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut .</p>
							<div class="social-touch">
								<a class="fb-touch" href="#"></a>
								<a class="tweet-touch" href="#"></a>
								<a class="linkedin-touch" href="#"></a>
							</div>
						</div>
					</div>
					<div class="single-member effect-3">
						<div class="member-image">
							<img src="images/member_270x210.jpg" alt="Member">
						</div>
						<div class="member-info">
							<h3>Sophia</h3>
							<h5>ShowGilr</h5>
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut .</p>
							<div class="social-touch">
								<a class="fb-touch" href="#"></a>
								<a class="tweet-touch" href="#"></a>
								<a class="linkedin-touch" href="#"></a>
							</div>
						</div>
					</div>
					<!-- effect-3 html end -->
				</div>
				<div class="clear"></div>
		    </div>
		    <!-- 组合搭配推荐 -->
		    <div class="floor_title">
	    		<a>随心</a>
	    		<em>·</em>
	    		<a>搭配</a>
	    	</div>
		    <div class="match_recommend">
		    
		    </div>
		    <!-- 左固定栏 -->
		    <div id="">
		    	<div></div>
		    	
		    </div>
	    </div>
  	</div>
    <!-- 浮动推荐框 -->
    <div class="ad_good_single none">
    	<div class="single_left">
    		<div class="single_mainGood">
    			<a>
	    			<img alt="" src="">
	    		</a>
    		</div>
    		<div class="single_leftMore">
    			<a>
    				更多组合推荐
    			</a>
    		</div>
    		<div class="shopBtn">
    			<input type="button" value="加入购物车">
    		</div>
    		
    	</div>
    	<div class="single_hot">
    		<div id="singleHotOne" class="single_hot_main">
    			<div class="hotItem">
    				<div class="hotItem_picture">
    					<a>
    						<img alt="" src="">
    					</a>
    				</div>
    				<div class="hotItem_word">
    					<span class="hotItem_GoodName"></span>
    					<span class="hotItem_StoreName"></span>
    					<span class="hotItem_salesVolume"></span>
    					<span class="hotItem_yuan">¥</span>
    					<span class="hotItem_price"></span>
    				</div>
    				<div class="hotItem_right">
    					<input type="button" value="加入购物车">
    				</div>
    			</div>
    			<div class="hotItem">
    				<div class="hotItem_picture">
    					<a>
    						<img alt="" src="">
    					</a>
    				</div>
    				<div class="hotItem_word">
    					<span class="hotItem_GoodName"></span>
    					<span class="hotItem_StoreName"></span>
    					<span class="hotItem_salesVolume"></span>
    					<span class="hotItem_yuan">¥</span>
    					<span class="hotItem_price"></span>
    				</div>
    				<div class="hotItem_right">
    					<input type="button" value="加入购物车">
    				</div>
    			</div>
    			<div class="hotBuy">
    				<input type="button" value="一键购买">
    			</div>
    		</div>
    		<div id="singleHotTwo" class="single_hot_main">
    			<div class="hotItem">
    				<div class="hotItem_picture">
    					<a>
    						<img alt="" src="">
    					</a>
    				</div>
    				<div class="hotItem_word">
    					<span class="hotItem_GoodName"></span>
    					<span class="hotItem_StoreName"></span>
    					<span class="hotItem_salesVolume"></span>
    					<span class="hotItem_yuan">¥</span>
    					<span class="hotItem_price"></span>
    				</div>
    				<div class="hotItem_right">
    					<input type="button" value="单独购买">
    				</div>
    			</div>
    			<div class="hotItem">
    				<div class="hotItem_picture">
    					<a>
    						<img alt="" src="">
    					</a>
    				</div>
    				<div class="hotItem_word">
    					<span class="hotItem_GoodName"></span>
    					<span class="hotItem_StoreName"></span>
    					<span class="hotItem_salesVolume"></span>
    					<span class="hotItem_yuan">¥</span>
    					<span class="hotItem_price"></span>
    				</div>
    				<div class="hotItem_right">
    					<input type="button" value="加入购物车">
    				</div>
    			</div>
    			<div class="hotBuy">
    				<input type="button" value="一键购买">
    			</div>
    		</div>
    	</div>
    </div>
  </body>
</html>
