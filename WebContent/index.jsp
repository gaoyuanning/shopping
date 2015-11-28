<%@page import="java.nio.Buffer"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=GB18030"
	pageEncoding="GB18030"%>
<%@page import="com.gao.www.*"%>
<%@page import="java.util.List"%>
<%!private String getSecondCategoryStr(List<Category> categories, Category topCategory) {
		StringBuffer stringBuffer = new StringBuffer();
		int childCount = 1;
		for (int i = 0; i < categories.size(); i++) {
			Category category = categories.get(i);
			if (category.getPid() == topCategory.getId()) {
				stringBuffer.append("document.getElementById('c2').options[" + childCount + "].text='"
						+ category.getName() + "';\n");
				stringBuffer.append("document.getElementById('c2').options[" + childCount + "].value='"
						+ category.getId() + "';\n");
				childCount++;
			}
		}

		stringBuffer.insert(0, "document.getElementById('c2').options[0].text='请选择二级目录';\n");
		stringBuffer.insert(0, "document.getElementById('c2').options[0].value='-1';\n");
		stringBuffer.insert(0, "document.getElementById('c2').selectedIndex=0;\n");
		stringBuffer.insert(0, "document.getElementById('c2').options.length=" + childCount + ";\n");
		stringBuffer.insert(0,
				"if(document.getElementById('c1').options[document.getElementById('c1').selectedIndex].value == "
						+ topCategory.getId() + "){");
		stringBuffer.append("}");

		return stringBuffer.toString();
	}%>
<%
	List<Product> latestProducts = ProductManager.getInstance().getLatestProducts(6);
	List<Category> categories = Category.getCategories();
	List<Category> topCategories = new ArrayList<Category>();
	String demoString = "";
	for (int i = 0; i < categories.size(); i++) {
		Category category = categories.get(i);
		if (category.getGrade() == 1) {
			topCategories.add(category);
			demoString += getSecondCategoryStr(categories, category);
		}
	}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<link rel="shortcut icon"
	href="http://www.nuomi.com/static/common/img/favicon.ico">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<meta name="renderer" content="webkit">
<script>
	var F = {};
	(function() {
		var b = {};
		F.context = function(p, r) {
			var q = arguments.length;
			if (q > 1) {
				b[p] = r
			} else {
				if (q == 1) {
					if (typeof p == "object") {
						for ( var o in p) {
							if (p.hasOwnProperty(o)) {
								b[o] = p[o]
							}
						}
					} else {
						return b[p];
					}
				}
			}
		};
	})();
</script>



<script>
	!F.context('staticController') && F.context('staticController', {
		run : function(f) {
			f && f.call(this);
		}, /**/
		fail : function() { /**/
		}
	});
</script>
<script>
	F.context('staticController').init
			&& F.context('staticController').init(!!'', !!'', !!'', null, '');
</script>


<title>【网购】网上购物，省钱又省心 - 百度糯米购物</title>
<meta name="description"
	content="百度糯米为您精选网购商品，超低价格，品质优良，馋嘴小零食、超值女装、低价男装、实惠小家电、超值鞋箱包、闪电发货，引爆大促，便宜实惠，方便快捷，放心团！">


<script>
	// pc和mobile端会稍有不同，必须严格按照该文档来部署
	void function(g, f, j, c, h, d, b) {
		g.alogObjectName = h, g[h] = g[h] || function() {
			(g[h].q = g[h].q || []).push(arguments)
		}, g[h].l = g[h].l || +new Date, d = f.createElement(j), d.async = !0,
				d.src = c, b = f.getElementsByTagName(j)[0], b.parentNode
						.insertBefore(d, b)
	}(window, document, "script",
			"http://img.baidu.com/hunter/alog/alog.min.js", "alog");
	void function() {
		function c() {
			return;
		}
		window.PDC = {
			mark : function(a, b) {
				alog("speed.set", a, b || +new Date);
				alog.fire && alog.fire("mark")
			},
			init : function(a) {
				alog("speed.set", "options", a)
			},
			view_start : c,
			tti : c,
			page_ready : c
		}
	}();
	void function(n) {
		var o = !1;
		n.onerror = function(n, e, t, c) {
			var i = !0;
			return !e && /^script error/i.test(n) && (o ? i = !1 : o = !0), i
					&& alog("exception.send", "exception", {
						msg : n,
						js : e,
						ln : t,
						col : c
					}), !1
		}, alog("exception.on", "catch", function(n) {
			alog("exception.send", "exception", {
				msg : n.msg,
				js : n.path,
				ln : n.ln,
				method : n.method,
				flag : "catch"
			})
		})
	}(window);
</script>


<script>
	var _hmt = _hmt || [];
	F
			.context(
					'tongji_hm',
					{
						init : (function() {
							return function(rtTag) {
								rtTag && _hmt.push([ '_trackRTEvent', rtTag ]);
								var hm = document.createElement('script');
								hm.src = '//hm.baidu.com/hm.js?a028c07bf31ffce4b2d21dd85b0b8907';
								var s = document.getElementsByTagName('script')[0];
								s.parentNode.insertBefore(hm, s);
							}
						})()
					});
	F.context('tongji_hm').init();
</script>

<script>
	void function(e, t, n, a, o, i, m) {
		e.alogObjectName = o, e[o] = e[o] || function() {
			(e[o].q = e[o].q || []).push(arguments)
		}, e[o].l = e[o].l || +new Date, i = t.createElement(n), i.asyn = 1,
				i.src = a, m = t.getElementsByTagName(n)[0], m.parentNode
						.insertBefore(i, m)
	}(window, document, "script", "http://img.baidu.com/hunter/alog.min.js",
			"alog");
</script>




<script>
	alog('speed.set', 'ht', new Date);
</script>

<link rel="stylesheet" type="text/css"
	href="./index_files/global_b405bb7.css">
<link rel="stylesheet" type="text/css"
	href="./index_files/common_34e0a13.css">
<link rel="stylesheet" type="text/css"
	href="./index_files/header_bf92fc8.css">
<link rel="stylesheet" type="text/css"
	href="./index_files/wanggou_e13be07.css">
<link rel="stylesheet" type="text/css"
	href="./index_files/index_7d00179.css">
</head>
<body mon="page=wanggou_index" class="gl-big-screen">
	<script>
		F
				.context({
					'channel' : '001650||t10_qd_pc', // 
					'channel_content' : '', // 
					'da_page' : 'wanggou_index', // 
					'nuomi_base' : 'http://www.nuomi.com',
					'logout_nuomi' : '/pclogin/main/logout',
					'baid_uss_url' : 'http://uid.nuomi.baidu.com/getbduss',
					'logout_baidu' : 'https://passport.baidu.com/?logout',
					'xll' : '', // 
					'label_sort_js' : '', // 
					'loginTest' : '1', // 
					'passport_base' : 'http://passport.baidu.com',
					'nuomi_old_base' : 'http://login.nuomi.com',
					'login_idc' : '' || 'sh',
					'passport_reg' : 'http://passport.baidu.com/v2/?reg&tpl=nuomi&color=pink',
					'login_id' : 'bfefaa66a595b3f3d99ec218790dbaf4',
					'sample_hit' : '0' // 
				});
	</script>


	<!--[if IE 6]>
<div id="kie-bar" class="kie-bar">
目前您正在使用ie6浏览器，该浏览器已经过时了，为了更加安全和方便地进行团购，百度糯米推荐您使用以下浏览器：<a href="http://www.microsoft.com/china/windows/IE/upgrade/index.aspx" class="kie-setup-IE8"  target="_blank" title="免费升级至IE8浏览器">免费升级</a>或下载使用<a href="http://browser.baidu.com/" class="kie-setup-baidu" target="_blank" title="百度浏览器">百度浏览器</a>，体验极速浏览体验！</div>
<style>
        .kie-bar {
            height: 24px;
            line-height: 1.8;
            font-weight:normal;
            text-align: center;
            border-bottom:1px solid #fce4b5;
            background-color:#FFFF9B;
            color:#e27839;
            position: relative;
            font-size: 14px;
            text-shadow:  0 0  1px #efefef;
            padding: 5px 0;
        }
        .kie-bar a {
            color:#08c;
            text-decoration: none;
        }
    </style>
<![endif]-->

	<ul id="j-go-top" class="nav n-go-top" mon="area=right_anchor"
		style="display: none;">
		<li><a
			href="http://w.nuomi.com/?utm_souce=hao123&utm_medium=gw_ny_mz&utm_campaign=anchor&cid=001650#"
			mon="element=gotop&amp;position=0"
			class="item with-top-border go-top-2"><span
				class="gotop-ico inner-ico"><i class="iconfont"></i></span><span
				class="inner-text">回到顶部</span></a></li>
		<li><div class="qrcode-side item">
				<i class="iconfont"></i>
				<div class="qrcode-img">
					<a href="http://d.nuomi.com/?1009764s"
						mon="element=erweima&amp;position=1" target="_blank"><p
							class="img qrcode-discount">二维码</p></a>
				</div>
			</div></li>
		<li><a target="_blank" class="item"
			href="http://uxsurvey.baidu.com/index.php?sid=58946&newtest=Y&lang=zh-Hans"><span
				class="question-ico inner-ico"><i class="iconfont"></i></span><span
				class="inner-text">问卷调查</span></a></li>
	</ul>



	<script type="text/javascript">
		F.context("nuomi_base", "http://www.nuomi.com");
	</script>
	<div class="header-bar static-hook-real static-hook-id-1"
		mon="area=navigation" id="header-bar">
		<div class="header-inner clearfix flexible ">
			<script type="text/javascript">
				var req;
				function changeCategory() {
					var idField = document.getElementById('c1').options[document
							.getElementById('c1').selectedIndex];
					//var url = "getchildCategory.jsp?id=" + escape(idField.value);
					//var url = "getchildCategory2.jsp?id=" + escape(idField.value);
					var url = "getchildCategory3.jsp?id=" + escape(idField.value);
					if (window.XMLHttpRequest) {
						req = new XMLHttpRequest();
					} else if (window.ActiveXObject) {
						req = new ActiveXObject("Microsoft.XMLHTTP");
					}
					req.open("GET", url, true);
					req.onreadystatechange = callback;
					req.send(null);
				}

				function callback() {
					if (req.readyState == 4) {
						if (req.status == 200) {
							//parse(req.responseText);
							//eval(req.responseText);
							//alert(req.responseText);
							parseXML(req.responseXML);
						}
					}
				}
				
				function parseXML(xml) {
					var categories = xml.getElementsByTagName("categories")[0];
					
					document.getElementById('c2').options.length = categories.childNodes.length + 1;
					document.getElementById('c2').options[0].text = '请选择二级目录'
					document.getElementById('c2').options[0].value = '-1'
					document.getElementById('c2').selectedIndex = 0;
					var i = 0;
					for(i = 0; i < categories.childNodes.length; i++) {
						var category = categories.childNodes[i];
						var value = category.childNodes[0].childNodes[0].nodeValue;
						var name = category.childNodes[1].childNodes[0].nodeValue;
						document.getElementById('c2').options[i+1].text = name;
						document.getElementById('c2').options[i+1].value = value;
					}
				}
				
				function parse(msg) {
					msg = msg.replace(/(^\s*)|(\s*$)/g, "");
					if(msg == null || new String(msg) == "") {
						document.getElementById('c2').options.length = 1;
						document.getElementById('c2').options[0].text = '请选择二级目录'
						document.getElementById('c2').options[0].value = '-1'
						document.getElementById('c2').selectedIndex = 0;
						return;
					}
					var categories = msg.split("-");
					document.getElementById('c2').options.length = categories.length + 1;
					document.getElementById('c2').options[0].text = '请选择二级目录'
					document.getElementById('c2').options[0].value = '-1'
					document.getElementById('c2').selectedIndex = 0;
					var i = 0;
					for (i < 0; i < categories.length; i++) {
						var categoryprop = categories[i].split(",");
						var value = categoryprop[0];
						var name = categoryprop[1];
						document.getElementById('c2').options[i+1].text = name;
						document.getElementById('c2').options[i+1].value = value;
					}

				}
			</script>

			<!-- 级联选择开始 -->

			<table>
				<tr>
					<td><select name="category1" id="c1"
						onchange="changeCategory()">
							<option value="-1" selected="selected">查看一级分类</option>
							<%
								for (int i = 0; i < topCategories.size(); i++) {
									Category c = topCategories.get(i);
							%>
							<option value="<%=c.getId()%>"><%=c.getName()%></option>
							<%
								}
							%>
					</select></td>
					<td><select name="category2" id="c2">
							<option value="-1" selected="selected">查看二级分类</option>
					</select></td>
				</tr>
			</table>

			<!-- 级联选择结束-->


			<div class="uc-order-status" id="j-ucOrderStatus">
				<ul>
					<li>有即将到期的糯米券<a
						href="http://www.nuomi.com/uc/order/order?status=2"
						id="j-ucStatusLink-b">查看</a></li>
					<li><span></span>笔订单未评价<a
						href="http://www.nuomi.com/uc/comment/not" id="j-ucStatusLink-c">去评价</a></li>
					<li><span></span>笔订单未付款<a
						href="http://www.nuomi.com/uc/order/order?status=3"
						id="j-ucStatusLink-d">去付款</a></li>
					<li><span></span>条新的商家回复<a
						href="http://www.nuomi.com/uc/comment/reply" id="j-ucStatusLink-e">查看</a></li>
				</ul>
				<a href="javascript:;" title="关闭消息框" class="close-button"
					id="j-ucStatusLink-a"></a>
			</div>
			<ul class="right-util first-level has-login" id="j-ucLoginList">
				<li class="welcome-text"><span class="welcome-tag"
					id="j-welcomeTag">Hi，fighter840</span></li>
				<li class="login"><a
					href="http://www.nuomi.com/pclogin/main/loginpage?u=http%3A%2F%2Fw.nuomi.com%2F%3Futm_souce%3Dhao123%26utm_medium%3Dgw_ny_mz%26utm_campaign%3Danchor%26cid%3D001650"
					id="j-barLoginBtn" mon="element=login">登录</a><span
					class="sep-lines"></span></li>
				<li class="reg"><a
					href="http://passport.baidu.com/v2/?reg&tpl=nuomi&color=pink&u=http%3A%2F%2Fw.nuomi.com%2F%3Futm_souce%3Dhao123%26utm_medium%3Dgw_ny_mz%26utm_campaign%3Danchor%26cid%3D001650"
					id="j-barRegBtn" mon="element=register">注册</a><span
					class="sep-lines"></span></li>
				<li class="logout"><a id="j-logout"
					href="https://passport.baidu.com/?logout" mon="element=logout">退出</a><span
					class="sep-lines"></span></li>
				<li class="qr-code j-bar-dropdown"><a
					href="http://d.nuomi.com/?1009764s" target="_blank">手机糯米<span
						class="arrow-down-logo"></span></a><span class="sep-lines"></span>
					<p class="header-dropmenu">
						<a class="img qrcode-discount" href="http://d.nuomi.com/?1009764s"
							target="_blank">二维码</a>
					</p></li>
				<li><a
					href="http://www.nuomi.com/uc/order/order?status=all&_=1448030733"
					mon="element=my_order">我的订单</a><span class="sep-lines"></span></li>
				<li class="j-bar-dropdown"><a
					href="http://www.nuomi.com/uc/order/order?status=all"
					mon="element=my_nuomi">我的糯米<span class="arrow-down-logo"></span></a><span
					class="sep-lines"></span>
					<div class="uc-list header-dropmenu">
						<a
							href="http://www.nuomi.com/uc/order/order?status=all&_=1448030733"
							class="link">我的订单</a><a
							href="http://www.nuomi.com/uc/order/morders?orderStatus=all"
							class="link">选座订单</a><a
							href="http://www.nuomi.com/uc/collection/online" class="link">我的收藏</a><a
							href="http://www.nuomi.com/uc/comment/not" class="link">我的评价</a><a
							href="http://baifubao.baidu.com/jump?uri=%2Fuser%2F0%2Fmy_bfb%2F0&domain=http%3A%2F%2Fwww.baifubao.com"
							class="link" target="_blank" style="display: none;">帐户余额</a><a
							href="http://www.nuomi.com/uc/hongbao/list?status=1&type=2"
							class="link">我的余额</a><a
							href="http://www.nuomi.com/uc/giftcard/find?status=1"
							class="link">我的抵用券</a><a
							href="http://www.nuomi.com/uc/user/userinfo" class="link">帐户设置</a><a
							href="http://i.baidu.com/?from=nuomi" class="link"
							target="_blank">我的百度</a>
					</div></li>
				<li id="j-visitedArea"><a
					href="http://w.nuomi.com/?utm_souce=hao123&utm_medium=gw_ny_mz&utm_campaign=anchor&cid=001650#"
					mon="element=recent_view"><span class="j-visitedArea-title">最近浏览</span><span
						class="arrow-down-logo"></span></a><span class="sep-lines"></span>
					<div class="header-dropmenu items right-side"
						id="j-visitedContainer">
						<div class="loading">数据载入中...</div>
					</div></li>
				<li class="j-bar-dropdown"><a
					href="http://w.nuomi.com/?utm_souce=hao123&utm_medium=gw_ny_mz&utm_campaign=anchor&cid=001650#"><span>我是商家</span><span
						class="arrow-down-logo"></span></a><span class="sep-lines"></span>
					<div class="merchant-list header-dropmenu">
						<a href="http://y.nuomi.com/" class="link" target="_blank">商户中心</a><a
							href="http://cooperation.nuomi.com/clue/index" class="link"
							target="_blank">我想合作</a>
					</div></li>
				<li><a href="http://www.nuomi.com/help"
					mon="element=help_center">帮助中心</a><span class="sep-lines"></span></li>
				<li class="j-bar-dropdown"><a
					href="http://w.nuomi.com/?utm_souce=hao123&utm_medium=gw_ny_mz&utm_campaign=anchor&cid=001650#"
					mon="element=notice"><span class="j-visitedArea-title">关注</span><span
						class="arrow-down-logo"></span></a><span class="sep-lines"></span>
					<div class="notice-drop">
						<div class="new-erweima"></div>
						<h4>
							百度糯米:<span class="hot">nuomivip</span>
						</h4>
					</div></li>
				<li class="no-right-border"><a
					href="http://w.nuomi.com/?utm_souce=hao123&utm_medium=gw_ny_mz&utm_campaign=anchor&cid=001650#"
					mon="element=collection" id="addFav">收藏</a></li>
			</ul>
		</div>
	</div>
	<script type="text/javascript">
		F.context("page_name", "wanggou_index"); // 
		F.context("coupon_url",
				"http://www.nuomi.com/uc/giftcard/find?status=1"); //
	</script>



	<div
		class="search-bar clearfix flexible static-hook-real static-hook-id-2"
		mon="area=searchTop">
		<div class="logo-area">
			<a href="http://www.nuomi.com/" class="logo" mon="element=logo"
				title="百度糯米"><i class="iconfont logo-main"></i>
				<div class="logo-ext">
					<i class="iconfont logo-ext-my"></i><i
						class="iconfont logo-ext-dot"></i><i
						class="iconfont logo-ext-life"></i><i
						class="iconfont logo-ext-address"></i>
				</div></a>
		</div>

		<div class="search-area clearfix">
			<div data-ui-id="main-searcher" class="form-wrap clearfix n-textbox"
				data-ctrl-context="default" data-ctrl-id="main-searcher">
				<form method="get" action="http://www.nuomi.com/search"
					id="j-searchForm">
					<input type="text" id="j-searchInput"
						class="searchinput input-placeholder" name="k" value=""
						data-placeholder="足疗" autocomplete="off"
						mon="element=search_input">
					<div class="searchbtn-wrap">
						<input type="submit" class="searchbtn" id="j-searchBtn" value=""
							mon="element=search_button"><i class="iconfont"></i>
					</div>
					<input type="hidden" id="j-input-hidden" name="rid"
						value="e5e8b15106c95f58545e2a24ed73a7f9">
				</form>
				<div id="ctrl-textbox-main-searcher-autocomplete"
					class="n-textbox-autocomplete" style="position: absolute;"></div>
			</div>
		</div>


		<div class="utils clearfix">
			<a href="http://www.nuomi.com/pcindex/about/promise"
				mon="element=just_retire" target="_blank"><div
					class="util-item refund">
					<i class="iconfont refund"></i>
					<div class="util-tip">未消费，随便退！</div>
				</div>
				<div class="util-item mid">
					<i class="iconfont pei"></i>
					<div class="util-tip">消费不满意先行赔付！</div>
				</div>
				<div class="util-item last">
					<i class="iconfont money"></i>
					<div class="util-tip">过期自动退！</div>
				</div></a>
		</div>
	</div>
	<script type="text/template" id="autocomplete-template">
    <!--for:${data} as ${suggestion}, ${index}-->
    <div data-index="${index}" class="j-suggestion-item n-textbox-autocomplete-item" mon="area=sug&element=${suggestion.relword}">
        <span class="word">${suggestion.relword}</span>
        <!--if:${suggestion.seg.length}--><span class="arrow"><i class="iconfont">&#xe61d;</i></span><!--/if-->
        <span class="sug-count">约<em class="count">${suggestion.count}</em>单在线</span>
    </div>
    <!--/for-->

    <!--for:${data} as ${item},${index}-->
    <!--if:${item.seg.length}-->
        <div id="autocomplate-list-${index}" class="autocomplete-panel" mon="area=sugExt">
            <div class="panel-inner">
                <div class="panel-bd">
                    <h4 class="title">${item.relword}</h4>
                    <ul class="list" data-index="${index}">
                        <!--for: ${item.seg} as ${segItem},${index}-->
                        <!--var: keyword= ${item.relword} + ${segItem.st}-->
                        <li class="item">
                           
                        </li>
                        <!--/for-->
                    </ul>
                </div>
            </div>
        </div>
        <!--/if-->
    <!--/for-->
</script>
	<div class="nav-bar-header  static-hook-real static-hook-id-3">
		<div class="nav-inner flexible clearfix">
			<ul class="nav-list clearfix" mon="area=nav&amp;element_type=nav"
				id="j-catg">
				<li class="nav-item cate-row all-cate deep"><span class="item ">全部分类</span><span
					class="arrow-down"></span>
					<div class="left-menu clearfix" id="j-catg-list">
						<div class="level-item" catg-id="326">
							<div data-index="0" class="first-level j-catg-row"
								mon="area=catg_326">
								<dl>
									<dt class="title">
										<a href="http://qd.nuomi.com/326" target="_top"
											mon="element=美食">美食</a>
									</dt>
									<dd>
										<a href="http://t10.nuomi.com/pc/t10/index" target="_top"
											class="" mon="element=精选品牌">精选品牌</a>
									</dd>
									<dd>
										<a href="http://qd.nuomi.com/380" target="_top" class=""
											mon="element=小吃快餐">小吃快餐</a>
									</dd>
									<dd>
										<a href="http://qd.nuomi.com/392" target="_top" class=""
											mon="element=自助餐">自助餐</a>
									</dd>
								</dl>
							</div>
							<div class="second-level with-min" mon="area=catg_hover_326">
								<div class="section clearfix">
									<div class="section-item clearfix  no-top-border ">
										<h3>热门分类</h3>
										<ul>
											<li><a href="http://t10.nuomi.com/pc/t10/index"
												target="_top" class="hot" mon="element=精选品牌">精选品牌</a></li>
											<li><a href="http://qd.nuomi.com/327" target="_top"
												class="" mon="element=其他美食">其他美食</a></li>
											<li><a href="http://qd.nuomi.com/364" target="_top"
												class="" mon="element=火锅">火锅</a></li>
											<li><a href="http://qd.nuomi.com/380" target="_top"
												class="" mon="element=小吃快餐">小吃快餐</a></li>
											<li><a href="http://qd.nuomi.com/392" target="_top"
												class="" mon="element=自助餐">自助餐</a></li>
											<li><a href="http://qd.nuomi.com/439" target="_top"
												class="" mon="element=海鲜">海鲜</a></li>
											<li><a href="http://qd.nuomi.com/460" target="_top"
												class="" mon="element=烧烤/烤肉">烧烤/烤肉</a></li>
											<li><a href="http://qd.nuomi.com/690" target="_top"
												class="" mon="element=干锅/香锅">干锅/香锅</a></li>
											<li><a href="http://qd.nuomi.com/691" target="_top"
												class="" mon="element=聚会宴请">聚会宴请</a></li>
											<li><a href="http://qd.nuomi.com/879" target="_top"
												class="" mon="element=辣味美食">辣味美食</a></li>
											<li><a href="http://qd.nuomi.com/880" target="_top"
												class="" mon="element=甜点饮品">甜点饮品</a></li>
											<li><a href="http://qd.nuomi.com/881" target="_top"
												class="" mon="element=蛋糕">蛋糕</a></li>
											<li><a href="http://qd.nuomi.com/954" target="_top"
												class="" mon="element=咖啡厅/酒吧/茶室">咖啡厅/酒吧/茶室</a></li>
											<li><a href="http://qd.nuomi.com/1000002" target="_top"
												class="" mon="element=今日新单">今日新单</a></li>
										</ul>
									</div>
									<div class="section-item clearfix ">
										<h3>中国菜</h3>
										<ul>
											<li><a href="http://qd.nuomi.com/388" target="_top"
												class="" mon="element=粤菜">粤菜</a></li>
											<li><a href="http://qd.nuomi.com/393" target="_top"
												class="" mon="element=川菜">川菜</a></li>
											<li><a href="http://qd.nuomi.com/424" target="_top"
												class="" mon="element=江浙菜">江浙菜</a></li>
											<li><a href="http://qd.nuomi.com/450" target="_top"
												class="" mon="element=北京菜">北京菜</a></li>
											<li><a href="http://qd.nuomi.com/451" target="_top"
												class="" mon="element=新疆/清真菜">新疆/清真菜</a></li>
											<li><a href="http://qd.nuomi.com/454" target="_top"
												class="" mon="element=湖北菜">湖北菜</a></li>
											<li><a href="http://qd.nuomi.com/488" target="_top"
												class="" mon="element=湘菜">湘菜</a></li>
											<li><a href="http://qd.nuomi.com/504" target="_top"
												class="" mon="element=东北菜">东北菜</a></li>
											<li><a href="http://qd.nuomi.com/509" target="_top"
												class="" mon="element=云南菜">云南菜</a></li>
											<li><a href="http://qd.nuomi.com/652" target="_top"
												class="" mon="element=鲁菜">鲁菜</a></li>
											<li><a href="http://qd.nuomi.com/653" target="_top"
												class="" mon="element=西北菜">西北菜</a></li>
											<li><a href="http://qd.nuomi.com/654" target="_top"
												class="" mon="element=贵州菜">贵州菜</a></li>
											<li><a href="http://qd.nuomi.com/655" target="_top"
												class="" mon="element=素食">素食</a></li>
											<li><a href="http://qd.nuomi.com/692" target="_top"
												class="" mon="element=创意菜/私房菜">创意菜/私房菜</a></li>
											<li><a href="http://qd.nuomi.com/693" target="_top"
												class="" mon="element=江西菜">江西菜</a></li>
											<li><a href="http://qd.nuomi.com/694" target="_top"
												class="" mon="element=内蒙菜">内蒙菜</a></li>
											<li><a href="http://qd.nuomi.com/695" target="_top"
												class="" mon="element=客家菜">客家菜</a></li>
											<li><a href="http://qd.nuomi.com/696" target="_top"
												class="" mon="element=台湾菜">台湾菜</a></li>
											<li><a href="http://qd.nuomi.com/697" target="_top"
												class="" mon="element=天津菜">天津菜</a></li>
											<li><a href="http://qd.nuomi.com/874" target="_top"
												class="" mon="element=徽菜">徽菜</a></li>
											<li><a href="http://qd.nuomi.com/878" target="_top"
												class="" mon="element=烤鱼">烤鱼</a></li>
											<li><a href="http://qd.nuomi.com/883" target="_top"
												class="" mon="element=烤鸭">烤鸭</a></li>
											<li><a href="http://qd.nuomi.com/884" target="_top"
												class="" mon="element=麻辣烫">麻辣烫</a></li>
											<li><a href="http://qd.nuomi.com/885" target="_top"
												class="" mon="element=山西菜">山西菜</a></li>
											<li><a href="http://qd.nuomi.com/886" target="_top"
												class="" mon="element=海南菜">海南菜</a></li>
											<li><a href="http://qd.nuomi.com/887" target="_top"
												class="" mon="element=闽菜">闽菜</a></li>
											<li><a href="http://qd.nuomi.com/888" target="_top"
												class="" mon="element=河南菜">河南菜</a></li>
											<li><a href="http://qd.nuomi.com/889" target="_top"
												class="" mon="element=河北菜">河北菜</a></li>
											<li><a href="http://qd.nuomi.com/890" target="_top"
												class="" mon="element=其他中餐">其他中餐</a></li>
											<li><a href="http://qd.nuomi.com/962" target="_top"
												class="" mon="element=全部中餐">全部中餐</a></li>
										</ul>
									</div>
									<div class="section-item clearfix ">
										<h3>外国菜</h3>
										<ul>
											<li><a href="http://qd.nuomi.com/389" target="_top"
												class="" mon="element=日本料理">日本料理</a></li>
											<li><a href="http://qd.nuomi.com/390" target="_top"
												class="" mon="element=东南亚菜">东南亚菜</a></li>
											<li><a href="http://qd.nuomi.com/391" target="_top"
												class="" mon="element=西餐">西餐</a></li>
											<li><a href="http://qd.nuomi.com/501" target="_top"
												class="" mon="element=韩国料理">韩国料理</a></li>
											<li><a href="http://qd.nuomi.com/876" target="_top"
												class="" mon="element=中东菜">中东菜</a></li>
											<li><a href="http://qd.nuomi.com/877" target="_top"
												class="" mon="element=披萨">披萨</a></li>
											<li><a href="http://qd.nuomi.com/882" target="_top"
												class="" mon="element=其他异国餐饮">其他异国餐饮</a></li>
										</ul>
									</div>
								</div>
							</div>
						</div>
						<div class="level-item" catg-id="345">
							<div data-index="1" class="first-level j-catg-row"
								mon="area=catg_345">
								<dl>
									<dt class="title">
										<a href="http://qd.nuomi.com/movie" target="_top"
											mon="element=电影">电影</a>
									</dt>
									<dd>
										<a href="http://qd.nuomi.com/xuanzuo/" target="_top" class=""
											mon="element=在线订座">在线订座</a>
									</dd>
									<dd>
										<a href="http://qd.nuomi.com/film/" target="_top" class=""
											mon="element=电影票团购">电影票团购</a>
									</dd>
								</dl>
							</div>
							<div class="second-level with-min" mon="area=catg_hover_345">
								<div class="section clearfix">
									<div class="section-item clearfix no-top-border">
										<h3>热门影片</h3>
										<ul>
											<li><a href="http://qd.nuomi.com/film/9762"
												target="_top" class="" mon="element=饥饿游戏3：嘲笑鸟(下)">饥饿游戏3：嘲笑鸟(下)</a></li>
											<li><a href="http://qd.nuomi.com/film/9771"
												target="_top" class="" mon="element=我的少女时代">我的少女时代</a></li>
											<li><a href="http://qd.nuomi.com/film/9765"
												target="_top" class="" mon="element=玩命速递：重启之战 ">玩命速递：重启之战
											</a></li>
											<li><a href="http://qd.nuomi.com/film/9718"
												target="_top" class="" mon="element=007：幽灵党">007：幽灵党</a></li>
											<li><a href="http://qd.nuomi.com/film/9741"
												target="_top" class="" mon="element=火星救援">火星救援</a></li>
											<li><a href="http://qd.nuomi.com/film/9655"
												target="_top" class="" mon="element=一个勺子">一个勺子</a></li>
											<li><a href="http://qd.nuomi.com/film/9770"
												target="_top" class="" mon="element=十月初五的月光">十月初五的月光</a></li>
											<li><a href="http://qd.nuomi.com/film/9773"
												target="_top" class="" mon="element=灵臆事件">灵臆事件</a></li>
											<li><a href="http://qd.nuomi.com/film/9614"
												target="_top" class="" mon="element=前任2：备胎反击战">前任2：备胎反击战</a></li>
											<li><a href="http://qd.nuomi.com/film/9721"
												target="_top" class="" mon="element=精灵旅社2">精灵旅社2</a></li>
											<li><a href="http://qd.nuomi.com/film/9729"
												target="_top" class="" mon="element=史努比：花生大电影">史努比：花生大电影</a></li>
											<li><a href="http://qd.nuomi.com/film/9548"
												target="_top" class="" mon="element=陪安东尼度过漫长岁月">陪安东尼度过漫长岁月</a></li>
											<li><a href="http://qd.nuomi.com/film/9752"
												target="_top" class="" mon="element=消失的凶手">消失的凶手</a></li>
											<li><a href="http://qd.nuomi.com/film/9764"
												target="_top" class="" mon="element=遭遇海明威">遭遇海明威</a></li>
											<li><a href="http://qd.nuomi.com/film/9706"
												target="_top" class="" mon="element=移动迷宫：烧痕审判">移动迷宫：烧痕审判</a></li>
											<li><a href="http://qd.nuomi.com/film/9732"
												target="_top" class="" mon="element=藏羚王之雪域精灵">藏羚王之雪域精灵</a></li>
											<li><a href="http://qd.nuomi.com/film/9769"
												target="_top" class="" mon="element=昆塔：盒子总动员">昆塔：盒子总动员</a></li>
											<li><a href="http://qd.nuomi.com/film/9607"
												target="_top" class="" mon="element=夏洛特烦恼">夏洛特烦恼</a></li>
											<li><a href="http://qd.nuomi.com/film/9599"
												target="_top" class="" mon="element=半夜叫你别回头">半夜叫你别回头</a></li>
											<li><a href="http://qd.nuomi.com/film/9444"
												target="_top" class="" mon="element=年少轻狂">年少轻狂</a></li>
											<li><a href="http://qd.nuomi.com/film/9600"
												target="_top" class="" mon="element=我是证人">我是证人</a></li>
											<li><a href="http://qd.nuomi.com/film/9651"
												target="_top" class="" mon="element=龙在哪里？">龙在哪里？</a></li>
											<li><a href="http://qd.nuomi.com/film/9758"
												target="_top" class="" mon="element=我的青春期">我的青春期</a></li>
											<li><a href="http://qd.nuomi.com/film/9652"
												target="_top" class="" mon="element=笔仙魔咒">笔仙魔咒</a></li>
										</ul>
									</div>
									<div class="section-item clearfix">
										<h3>热门院线</h3>
										<ul>
											<li><a
												href="http://qd.nuomi.com/cinema/c36bc51cf22561406ca3cc34"
												target="_top" class="" mon="element=星美国际影城(即墨宝龙店)">星美国际影城(即墨宝龙店)</a></li>
											<li><a
												href="http://qd.nuomi.com/cinema/cc788fde8394a39389fc06a3"
												target="_top" class="" mon="element=阳光星美国际影城">阳光星美国际影城</a></li>
											<li><a
												href="http://qd.nuomi.com/cinema/e85e25273f8dee4a95f08c65"
												target="_top" class="" mon="element=青岛17.5影城(青特店)">青岛17.5影城(青特店)</a></li>
											<li><a
												href="http://qd.nuomi.com/cinema/f633606ae44115570b69d96b"
												target="_top" class="" mon="element=青岛海逸影城">青岛海逸影城</a></li>
										</ul>
									</div>
								</div>
							</div>
						</div>
						<div class="level-item" catg-id="320">
							<div data-index="2" class="first-level j-catg-row"
								mon="area=catg_320">
								<dl>
									<dt class="title">
										<a href="http://qd.nuomi.com/320" target="_top"
											mon="element=休闲娱乐">休闲娱乐</a>
									</dt>
									<dd>
										<a href="http://qd.nuomi.com/341" target="_top" class=""
											mon="element=KTV">KTV</a>
									</dd>
									<dd>
										<a href="http://qd.nuomi.com/338" target="_top" class=""
											mon="element=温泉洗浴">温泉洗浴</a>
									</dd>
									<dd>
										<a href="http://qd.nuomi.com/347" target="_top" class=""
											mon="element=足疗按摩">足疗按摩</a>
									</dd>
								</dl>
							</div>
							<div class="second-level with-min" mon="area=catg_hover_320">
								<div class="section clearfix">
									<div class="section-item clearfix">
										<ul>
											<li><a href="http://qd.nuomi.com/338" target="_top"
												class="" mon="element=温泉洗浴">温泉洗浴</a></li>
											<li><a href="http://qd.nuomi.com/341" target="_top"
												class="" mon="element=KTV">KTV</a></li>
											<li><a href="http://qd.nuomi.com/347" target="_top"
												class="" mon="element=足疗按摩">足疗按摩</a></li>
											<li><a href="http://qd.nuomi.com/349" target="_top"
												class="" mon="element=文化艺术">文化艺术</a></li>
											<li><a href="http://qd.nuomi.com/528" target="_top"
												class="" mon="element=其他娱乐">其他娱乐</a></li>
											<li><a href="http://qd.nuomi.com/700" target="_top"
												class="" mon="element=采摘">采摘</a></li>
											<li><a href="http://qd.nuomi.com/891" target="_top"
												class="" mon="element=4D/5D电影">4D/5D电影</a></li>
											<li><a href="http://qd.nuomi.com/895" target="_top"
												class="" mon="element=桌游">桌游</a></li>
											<li><a href="http://qd.nuomi.com/896" target="_top"
												class="" mon="element=电玩/游戏币">电玩/游戏币</a></li>
											<li><a href="http://qd.nuomi.com/897" target="_top"
												class="" mon="element=DIY手工">DIY手工</a></li>
											<li><a href="http://qd.nuomi.com/898" target="_top"
												class="" mon="element=密室逃脱">密室逃脱</a></li>
											<li><a href="http://qd.nuomi.com/899" target="_top"
												class="" mon="element=真人CS">真人CS</a></li>
											<li><a href="http://qd.nuomi.com/900" target="_top"
												class="" mon="element=卡丁车">卡丁车</a></li>
											<li><a href="http://qd.nuomi.com/901" target="_top"
												class="" mon="element=其他娱乐活动">其他娱乐活动</a></li>
											<li><a href="http://qd.nuomi.com/911" target="_top"
												class="" mon="element=游泳">游泳</a></li>
										</ul>
										<ul>
											<li><a href="http://qd.nuomi.com/914" target="_top"
												class="" mon="element=滑雪/滑冰">滑雪/滑冰</a></li>
											<li><a href="http://qd.nuomi.com/919" target="_top"
												class="" mon="element=其他养生保健">其他养生保健</a></li>
											<li><a href="http://qd.nuomi.com/920" target="_top"
												class="" mon="element=游乐园/水上乐园">游乐园/水上乐园</a></li>
											<li><a href="http://qd.nuomi.com/922" target="_top"
												class="" mon="element=录音棚">录音棚</a></li>
											<li><a href="http://qd.nuomi.com/952" target="_top"
												class="" mon="element=运动健身">运动健身</a></li>
											<li><a href="http://qd.nuomi.com/953" target="_top"
												class="" mon="element=演出/展览">演出/展览</a></li>
											<li><a href="http://qd.nuomi.com/1000003" target="_top"
												class="" mon="element=今日新单">今日新单</a></li>
										</ul>
									</div>
								</div>
							</div>
						</div>
						<div class="level-item" catg-id="330">
							<div data-index="3" class="first-level j-catg-row"
								mon="area=catg_330">
								<dl>
									<dt class="title">
										<a href="http://mall.baidu.com/?from=nuomi_pc_mu"
											target="_blank" mon="element=购物">购物</a>
									</dt>
									<dd>
										<a
											href="http://mall.baidu.com/category?catidList=1&from=nuomi_pc_sm1"
											target="_blank" mon="element=食品">食品</a>
									</dd>
									<dd>
										<a
											href="http://mall.baidu.com/category?catidList=1232&from=nuomi_pc_sm2"
											target="_blank" mon="element=母婴">母婴</a>
									</dd>
								</dl>
							</div>
						</div>
						<div class="level-item" catg-id="316">
							<div data-index="4" class="first-level j-catg-row"
								mon="area=catg_316">
								<dl>
									<dt class="title">
										<a href="http://qd.nuomi.com/316" target="_top"
											mon="element=生活服务">生活服务</a>
									</dt>
									<dd>
										<a href="http://qd.nuomi.com/703" target="_top" class=""
											mon="element=配镜">配镜</a>
									</dd>
									<dd>
										<a href="http://qd.nuomi.com/956" target="_top" class=""
											mon="element=丽人">丽人</a>
									</dd>
									<dd>
										<a href="http://qd.nuomi.com/930" target="_top" class=""
											mon="element=鲜花">鲜花</a>
									</dd>
								</dl>
							</div>
							<div class="second-level with-min" mon="area=catg_hover_316">
								<div class="section clearfix">
									<div class="section-item clearfix">
										<ul>
											<li><a href="http://qd.nuomi.com/319" target="_top"
												class="" mon="element=快照冲印">快照冲印</a></li>
											<li><a href="http://qd.nuomi.com/367" target="_top"
												class="" mon="element=宠物服务">宠物服务</a></li>
											<li><a href="http://qd.nuomi.com/375" target="_top"
												class="" mon="element=教育培训">教育培训</a></li>
											<li><a href="http://qd.nuomi.com/428" target="_top"
												class="" mon="element=儿童摄影">儿童摄影</a></li>
											<li><a href="http://qd.nuomi.com/459" target="_top"
												class="" mon="element=口腔">口腔</a></li>
											<li><a href="http://qd.nuomi.com/540" target="_top"
												class="" mon="element=其他生活服务">其他生活服务</a></li>
											<li><a href="http://qd.nuomi.com/565" target="_top"
												class="" mon="element=婚纱摄影">婚纱摄影</a></li>
											<li><a href="http://qd.nuomi.com/614" target="_top"
												class="" mon="element=个性写真">个性写真</a></li>
											<li><a href="http://qd.nuomi.com/670" target="_top"
												class="" mon="element=体检">体检</a></li>
											<li><a href="http://qd.nuomi.com/702" target="_top"
												class="" mon="element=亲子">亲子</a></li>
											<li><a href="http://qd.nuomi.com/703" target="_top"
												class="" mon="element=配镜">配镜</a></li>
											<li><a href="http://qd.nuomi.com/704" target="_top"
												class="" mon="element=服装定制">服装定制</a></li>
											<li><a href="http://qd.nuomi.com/705" target="_top"
												class="" mon="element=洗衣店">洗衣店</a></li>
											<li><a href="http://qd.nuomi.com/706" target="_top"
												class="" mon="element=汽车养护">汽车养护</a></li>
											<li><a href="http://qd.nuomi.com/709" target="_top"
												class="" mon="element=婚庆服务">婚庆服务</a></li>
										</ul>
										<ul>
											<li><a href="http://qd.nuomi.com/875" target="_top"
												class="" mon="element=本地购物">本地购物</a></li>
											<li><a href="http://qd.nuomi.com/923" target="_top"
												class="" mon="element=证件照">证件照</a></li>
											<li><a href="http://qd.nuomi.com/924" target="_top"
												class="" mon="element=照片冲印">照片冲印</a></li>
											<li><a href="http://qd.nuomi.com/927" target="_top"
												class="" mon="element=家政服务">家政服务</a></li>
											<li><a href="http://qd.nuomi.com/928" target="_top"
												class="" mon="element=驾校/陪练">驾校/陪练</a></li>
											<li><a href="http://qd.nuomi.com/930" target="_top"
												class="" mon="element=鲜花">鲜花</a></li>
											<li><a href="http://qd.nuomi.com/932" target="_top"
												class="" mon="element=送水/送奶">送水/送奶</a></li>
											<li><a href="http://qd.nuomi.com/956" target="_top"
												class="" mon="element=丽人">丽人</a></li>
											<li><a href="http://qd.nuomi.com/1000004" target="_top"
												class="" mon="element=今日新单">今日新单</a></li>
										</ul>
									</div>
								</div>
							</div>
						</div>
						<div class="level-item" catg-id="642">
							<div data-index="5" class="first-level j-catg-row"
								mon="area=catg_642">
								<dl>
									<dt class="title">
										<a href="http://t.nuomi.com/" target="_top" mon="element=酒店">酒店</a>
									</dt>
									<dd>
										<a href="http://t.nuomi.com/qd" target="_top" class=""
											mon="element=青岛">青岛</a>
									</dd>
									<dd>
										<a href="http://t.nuomi.com/bj" target="_top" class=""
											mon="element=北京">北京</a>
									</dd>
									<dd>
										<a href="http://t.nuomi.com/sh" target="_top" class=""
											mon="element=上海">上海</a>
									</dd>
								</dl>
							</div>
						</div>
						<div class="level-item" catg-id="708">
							<div data-index="6" class="first-level j-catg-row"
								mon="area=catg_708">
								<dl>
									<dt class="title">
										<a href="http://v.nuomi.com/" target="_top" mon="element=本地生活">本地生活</a>
									</dt>
									<dd>
										<a href="http://v.nuomi.com/1000338" target="_top" class=""
											mon="element=温泉洗浴">温泉洗浴</a>
									</dd>
									<dd>
										<a href="http://v.nuomi.com/1000700" target="_top" class=""
											mon="element=采摘">采摘</a>
									</dd>
								</dl>
							</div>
							<div class="second-level with-min" mon="area=catg_hover_708">
								<div class="section clearfix">
									<div class="section-item clearfix">
										<ul>
											<li><a href="http://v.nuomi.com/1000338" target="_top"
												class="" mon="element=温泉洗浴">温泉洗浴</a></li>
											<li><a href="http://v.nuomi.com/1000700" target="_top"
												class="" mon="element=采摘">采摘</a></li>
										</ul>
									</div>
								</div>
							</div>
						</div>
						<div class="level-item" catg-id="955">
							<div data-index="7"
								class="first-level j-catg-row  first-level-last"
								mon="area=catg_955">
								<dl>
									<dt class="title">
										<a href="http://qd.nuomi.com/955" target="_top"
											mon="element=丽人">丽人</a>
									</dt>
									<dd>
										<a href="http://qd.nuomi.com/646" target="_top" class=""
											mon="element=美发">美发</a>
									</dd>
									<dd>
										<a href="http://qd.nuomi.com/707" target="_top" class=""
											mon="element=美容SPA">美容SPA</a>
									</dd>
									<dd>
										<a href="http://qd.nuomi.com/556" target="_top" class=""
											mon="element=美甲">美甲</a>
									</dd>
								</dl>
							</div>
							<div class="second-level with-min" mon="area=catg_hover_955">
								<div class="section clearfix">
									<div class="section-item clearfix">
										<ul>
											<li><a href="http://qd.nuomi.com/556" target="_top"
												class="" mon="element=美甲">美甲</a></li>
											<li><a href="http://qd.nuomi.com/646" target="_top"
												class="" mon="element=美发">美发</a></li>
											<li><a href="http://qd.nuomi.com/707" target="_top"
												class="" mon="element=美容SPA">美容SPA</a></li>
											<li><a href="http://qd.nuomi.com/925" target="_top"
												class="" mon="element=化妆">化妆</a></li>
											<li><a href="http://qd.nuomi.com/926" target="_top"
												class="" mon="element=其他丽人">其他丽人</a></li>
										</ul>
									</div>
								</div>
							</div>
						</div>
					</div></li>
				<li class="nav-item nav-item-first"><a
					href="http://qd.nuomi.com/" target="_top" class="item first "
					mon="element=首页">首页</a></li>
				<li class="nav-item hot-item-l"><a
					href="http://t10.nuomi.com/pc/t10/index" target="_top"
					class="item " mon="element=精选品牌">精选品牌</a><i class="iconfont"></i></li>
				<li class="nav-item hot-item-s"><a
					href="http://qd.nuomi.com/movie" target="_top" class="item "
					mon="element=电影">电影</a><i class="iconfont"></i></li>
				<li class="nav-item"><a href="http://t.nuomi.com/"
					target="_top" class="item " mon="element=酒店">酒店</a></li>
				<li class="nav-item"><a href="http://qd.nuomi.com/new"
					target="_top" class="item " mon="element=今日新单">今日新单</a></li>
				<li class="nav-item"><a
					href="http://mall.baidu.com/?from=nuomi_pc_ba" target="_blank"
					class="item active" mon="element=购物">去购物</a></li>
				<li class="nav-item"><a
					href="http://waimai.baidu.com/?utm_source=bainuo&utm_medium=nav&utm_content=toububiaoqian&utm_term=default&utm_campaign=qingdao&cid=PC_%E5%93%81%E7%89%8C%E6%8E%A8%E5%B9%BF_940766"
					target="_blank" class="item last" mon="element=外卖">去外卖</a></li>
			</ul>
		</div>
	</div>

	<div class="p-wanggou-wrapper clearfix">
		<div class="navbox">
			<div class="container">
				<div class="nav-box">
					<div class="w-sub-category" mon="element_type=nav"
						alog-alias="bainuo-wanggou-sub-category"
						alog-group="bainuo-wanggou-sub-category">
						<div class="sub-category" style="position: relative;">
							<div class="item order j-sub-item" data-item="order">
								<div class="item-desc">
									<span class="mark"></span> <a class="item-name"
										href="http://www.nuomi.com/330/release"
										mon="area=wCatg&amp;element=今日新单">今日新单</a>
								</div>
							</div>
							<div class="item nuomi j-sub-item" data-item="nuomi">
								<div class="item-desc">
									<span class="mark"></span> <a class="item-name"
										href="http://www.nuomi.com/search/%E7%B3%AF%E7%B1%B3%E4%BC%98%E9%80%89/1/0/wanggou-1000001-0-0-pd-0-0"
										mon="area=wCatg&amp;element=糯米优选">糯米优选</a>
								</div>
							</div>
							<div class="item catg-353 j-sub-item" data-item="catg-353">
								<div class="item-desc">
									<span class="mark"></span> <a class="item-name"
										href="http://w.nuomi.com/353-0/0-f-gn"
										mon="area=wCatg&amp;element=353">服装/内衣</a>
								</div>
								<div class="category-content clearfix">
									<div class="w-category-item"
										alog-alias="bainuo-wanggou-category-item"
										alog-group="bainuo-wanggou-category-item">
										<div class="title">糯米优选</div>
										<div class="detail">
											<a class="detail-item" target="_blank"
												href="http://w.nuomi.com/353-805/0-f-gn"
												mon="area=wCatgHover&amp;element=805">女装</a> <a
												class="detail-item" target="_blank"
												href="http://w.nuomi.com/353-806/0-f-gn"
												mon="area=wCatgHover&amp;element=806">男装</a> <a
												class="detail-item" target="_blank"
												href="http://w.nuomi.com/353-854/0-f-gn"
												mon="area=wCatgHover&amp;element=854">内衣/袜品</a> <a
												class="detail-item" target="_blank"
												href="http://w.nuomi.com/353-855/0-f-gn"
												mon="area=wCatgHover&amp;element=855">服饰配件</a>
										</div>
									</div>
									<div class="w-category-item"
										alog-alias="bainuo-wanggou-category-item"
										alog-group="bainuo-wanggou-category-item">
										<div class="title">品牌推荐</div>
										<div class="detail">
											<a class="detail-item" target="_blank"
												href="http://www.nuomi.com/search/%E5%8D%97%E6%9E%81%E4%BA%BA/1/0/wanggou-0-0-0-pd-0-0"
												mon="area=wCatgHoverBrand&amp;element=8">南极人</a> <a
												class="detail-item" target="_blank"
												href="http://www.nuomi.com/search/%E5%8C%97%E6%9E%81%E7%BB%92/1/0/wanggou-0-0-0-pd-0-0"
												mon="area=wCatgHoverBrand&amp;element=9">北极绒</a> <a
												class="detail-item" target="_blank"
												href="http://www.nuomi.com/search?k=%E6%81%92%E6%BA%90%E7%A5%A5+%E7%BD%91%E8%B4%AD"
												mon="area=wCatgHoverBrand&amp;element=120">恒源祥</a> <a
												class="detail-item" target="_blank"
												href="http://www.nuomi.com/search?k=%E4%B8%83%E5%8C%B9%E7%8B%BC+%E7%BD%91%E8%B4%AD"
												mon="area=wCatgHoverBrand&amp;element=122">七匹狼</a> <a
												class="detail-item" target="_blank"
												href="http://www.nuomi.com/search?k=%E9%9B%85%E6%88%88%E5%B0%94+%E7%BD%91%E8%B4%AD"
												mon="area=wCatgHoverBrand&amp;element=123">雅戈尔</a> <a
												class="detail-item" target="_blank"
												href="http://www.nuomi.com/search?k=%E5%A9%B7%E7%BE%8E+%E7%BD%91%E8%B4%AD"
												mon="area=wCatgHoverBrand&amp;element=125">婷美</a> <a
												class="detail-item" target="_blank"
												href="http://www.nuomi.com/search?k=afs+jeep+%E7%BD%91%E8%B4%AD"
												mon="area=wCatgHoverBrand&amp;element=126">战地吉普</a>
										</div>
									</div>
								</div>
							</div>
							<div class="item catg-357 j-sub-item" data-item="catg-357">
								<div class="item-desc">
									<span class="mark"></span> <a class="item-name"
										href="http://w.nuomi.com/357-0/0-f-gn"
										mon="area=wCatg&amp;element=357">家居家纺</a>
								</div>
								<div class="category-content clearfix" style="top: -105px;">
									<div class="w-category-item"
										alog-alias="bainuo-wanggou-category-item"
										alog-group="bainuo-wanggou-category-item">
										<div class="title">糯米优选</div>
										<div class="detail">
											<a class="detail-item" target="_blank"
												href="http://w.nuomi.com/357-823/0-f-gn"
												mon="area=wCatgHover&amp;element=823">居家日用</a> <a
												class="detail-item" target="_blank"
												href="http://w.nuomi.com/357-825/0-f-gn"
												mon="area=wCatgHover&amp;element=825">厨房餐饮</a> <a
												class="detail-item" target="_blank"
												href="http://w.nuomi.com/357-826/0-f-gn"
												mon="area=wCatgHover&amp;element=826">家纺</a> <a
												class="detail-item" target="_blank"
												href="http://w.nuomi.com/357-827/0-f-gn"
												mon="area=wCatgHover&amp;element=827">家具家饰</a> <a
												class="detail-item" target="_blank"
												href="http://w.nuomi.com/357-859/0-f-gn"
												mon="area=wCatgHover&amp;element=859">宠物</a>
										</div>
									</div>
									<div class="w-category-item"
										alog-alias="bainuo-wanggou-category-item"
										alog-group="bainuo-wanggou-category-item">
										<div class="title">品牌推荐</div>
										<div class="detail">
											<a class="detail-item" target="_blank"
												href="http://www.nuomi.com/search/%E4%B8%8A%E4%B8%96/1/0/wanggou-0-0-0-pd-0-0"
												mon="area=wCatgHoverBrand&amp;element=78">上世</a> <a
												class="detail-item" target="_blank"
												href="http://www.nuomi.com/search?k=%E5%AE%B6%E4%B8%96%E6%AF%94"
												mon="area=wCatgHoverBrand&amp;element=83">家世比</a> <a
												class="detail-item" target="_blank"
												href="http://www.nuomi.com/search?k=%E7%B4%A2%E5%B0%94%E8%AF%BA"
												mon="area=wCatgHoverBrand&amp;element=79">索尔诺</a> <a
												class="detail-item" target="_blank"
												href="http://www.nuomi.com/search?k=%E7%BE%8E%E8%8F%B1"
												mon="area=wCatgHoverBrand&amp;element=81">美菱</a> <a
												class="detail-item" target="_blank"
												href="http://www.nuomi.com/search?k=%E5%AA%9B%E5%B0%9A%E5%AE%85%E5%93%81"
												mon="area=wCatgHoverBrand&amp;element=84">媛尚宅品</a> <a
												class="detail-item" target="_blank"
												href="http://www.nuomi.com/search?k=%E4%B9%85%E9%87%8F+%E7%BD%91%E8%B4%AD"
												mon="area=wCatgHoverBrand&amp;element=137">久量</a> <a
												class="detail-item" target="_blank"
												href="http://www.nuomi.com/search?k=%E4%BE%9D%E6%9F%8F%E6%81%8B"
												mon="area=wCatgHoverBrand&amp;element=198">依柏恋</a> <a
												class="detail-item" target="_blank"
												href="http://www.nuomi.com/search?k=%E5%98%89%E4%BF%A1"
												mon="area=wCatgHoverBrand&amp;element=199">嘉信</a> <a
												class="detail-item" target="_blank"
												href="http://www.nuomi.com/search?k=%E5%8D%9A%E6%B4%8B%E5%AE%B6%E7%BA%BA"
												mon="area=wCatgHoverBrand&amp;element=200">博洋家纺</a> <a
												class="detail-item" target="_blank"
												href="http://www.nuomi.com/search?k=%E6%81%90%E9%BE%99%E7%BA%BA%E7%BB%87"
												mon="area=wCatgHoverBrand&amp;element=201">DINOSAUR/恐龙纺织</a>
											<a class="detail-item" target="_blank"
												href="http://www.nuomi.com/search?k=%E6%B3%B0%E7%A1%95"
												mon="area=wCatgHoverBrand&amp;element=202">泰硕</a> <a
												class="detail-item" target="_blank"
												href="http://www.nuomi.com/search?k=%E7%9A%8E%E6%B4%81"
												mon="area=wCatgHoverBrand&amp;element=203">皎洁</a> <a
												class="detail-item" target="_blank"
												href="http://www.nuomi.com/search?k=%E5%8D%8E%E5%B7%9D"
												mon="area=wCatgHoverBrand&amp;element=204">华川</a> <a
												class="detail-item" target="_blank"
												href="http://www.nuomi.com/search?k=%E8%9C%9C%E8%9C%9C%E8%8A%B1"
												mon="area=wCatgHoverBrand&amp;element=205">蜜蜜花</a> <a
												class="detail-item" target="_blank"
												href="http://www.nuomi.com/search?k=%E8%B5%9B%E5%98%89"
												mon="area=wCatgHoverBrand&amp;element=206">赛嘉</a> <a
												class="detail-item" target="_blank"
												href="http://www.nuomi.com/search?k=%E6%98%93%E5%AE%B6%E5%AE%9C"
												mon="area=wCatgHoverBrand&amp;element=207">易家宜</a> <a
												class="detail-item" target="_blank"
												href="http://www.nuomi.com/search?k=%E6%81%92%E6%BA%90%E7%A5%A5%E5%AE%B6%E7%BA%BA"
												mon="area=wCatgHoverBrand&amp;element=217">恒源祥家纺</a> <a
												class="detail-item" target="_blank"
												href="http://www.nuomi.com/search?k=%E6%BA%A2%E5%BD%A9%E5%B9%B4%E5%8D%8E"
												mon="area=wCatgHoverBrand&amp;element=218">溢彩年华</a> <a
												class="detail-item" target="_blank"
												href="http://www.nuomi.com/search?k=%E5%A8%81%E9%9C%B2%E5%A3%AB"
												mon="area=wCatgHoverBrand&amp;element=219">威露士</a>
										</div>
									</div>
								</div>
							</div>
							<div class="item catg-675 j-sub-item" data-item="catg-675">
								<div class="item-desc">
									<span class="mark"></span> <a class="item-name"
										href="http://w.nuomi.com/675-0/0-f-gn"
										mon="area=wCatg&amp;element=675">食品保健</a>
								</div>
								<div class="category-content clearfix">
									<div class="w-category-item"
										alog-alias="bainuo-wanggou-category-item"
										alog-group="bainuo-wanggou-category-item">
										<div class="title">糯米优选</div>
										<div class="detail">
											<a class="detail-item" target="_blank"
												href="http://w.nuomi.com/675-801/0-f-gn"
												mon="area=wCatgHover&amp;element=801">休闲零食</a> <a
												class="detail-item" target="_blank"
												href="http://w.nuomi.com/675-802/0-f-gn"
												mon="area=wCatgHover&amp;element=802">酒水冲调</a> <a
												class="detail-item" target="_blank"
												href="http://w.nuomi.com/675-803/0-f-gn"
												mon="area=wCatgHover&amp;element=803">保健品</a> <a
												class="detail-item" target="_blank"
												href="http://w.nuomi.com/675-804/0-f-gn"
												mon="area=wCatgHover&amp;element=804">礼券/其他</a> <a
												class="detail-item" target="_blank"
												href="http://w.nuomi.com/675-853/0-f-gn"
												mon="area=wCatgHover&amp;element=853">粮油干货</a>
										</div>
									</div>
									<div class="w-category-item"
										alog-alias="bainuo-wanggou-category-item"
										alog-group="bainuo-wanggou-category-item">
										<div class="title">品牌推荐</div>
										<div class="detail">
											<a class="detail-item" target="_blank"
												href="http://www.nuomi.com/search?k=%E8%8B%8F%E7%A6%BE+%E7%BD%91%E8%B4%AD"
												mon="area=wCatgHoverBrand&amp;element=111">苏禾</a> <a
												class="detail-item" target="_blank"
												href="http://www.nuomi.com/search?k=%E5%A5%BD%E6%83%B3%E4%BD%A0+%E7%BD%91%E8%B4%AD"
												mon="area=wCatgHoverBrand&amp;element=113">好想你</a> <a
												class="detail-item" target="_blank"
												href="http://www.nuomi.com/search?k=%E5%85%BB%E7%94%9F%E5%A0%82+%E7%BD%91%E8%B4%AD"
												mon="area=wCatgHoverBrand&amp;element=115">养生堂</a> <a
												class="detail-item" target="_blank"
												href="http://www.nuomi.com/search?k=%E7%9A%87%E4%B8%8A%E7%9A%87+%E7%BD%91%E8%B4%AD"
												mon="area=wCatgHoverBrand&amp;element=114">皇上皇</a> <a
												class="detail-item" target="_blank"
												href="http://www.nuomi.com/search?k=%E8%B4%B9%E5%88%97%E7%BD%97+%E7%BD%91%E8%B4%AD"
												mon="area=wCatgHoverBrand&amp;element=116">费列罗</a> <a
												class="detail-item" target="_blank"
												href="http://www.nuomi.com/search?k=%E5%A5%BD%E5%AE%9C%E5%BE%B7+%E7%BD%91%E8%B4%AD"
												mon="area=wCatgHoverBrand&amp;element=118">好宜德</a>
										</div>
									</div>
								</div>
							</div>
							<div class="item catg-356 j-sub-item" data-item="catg-356">
								<div class="item-desc">
									<span class="mark"></span> <a class="item-name"
										href="http://w.nuomi.com/356-0/0-f-gn"
										mon="area=wCatg&amp;element=356">个护化妆</a>
								</div>
								<div class="category-content clearfix" style="top: -175px;">
									<div class="w-category-item"
										alog-alias="bainuo-wanggou-category-item"
										alog-group="bainuo-wanggou-category-item">
										<div class="title">糯米优选</div>
										<div class="detail">
											<a class="detail-item" target="_blank"
												href="http://w.nuomi.com/356-818/0-f-gn"
												mon="area=wCatgHover&amp;element=818">面部护肤</a> <a
												class="detail-item" target="_blank"
												href="http://w.nuomi.com/356-820/0-f-gn"
												mon="area=wCatgHover&amp;element=820">彩妆香水</a> <a
												class="detail-item" target="_blank"
												href="http://w.nuomi.com/356-821/0-f-gn"
												mon="area=wCatgHover&amp;element=821">男士</a> <a
												class="detail-item" target="_blank"
												href="http://w.nuomi.com/356-858/0-f-gn"
												mon="area=wCatgHover&amp;element=858">个人护理</a> <a
												class="detail-item" target="_blank"
												href="http://w.nuomi.com/356-872/0-f-gn"
												mon="area=wCatgHover&amp;element=872">美容工具</a>
										</div>
									</div>
									<div class="w-category-item"
										alog-alias="bainuo-wanggou-category-item"
										alog-group="bainuo-wanggou-category-item">
										<div class="title">品牌推荐</div>
										<div class="detail">
											<a class="detail-item" target="_blank"
												href="http://www.nuomi.com/search?k=%E6%AC%A7%E7%8F%80%E8%8E%B1+%E7%BD%91%E8%B4%AD"
												mon="area=wCatgHoverBrand&amp;element=145">欧珀莱</a> <a
												class="detail-item" target="_blank"
												href="http://www.nuomi.com/search?k=%E4%B8%B9%E5%A7%BF+%E7%BD%91%E8%B4%AD"
												mon="area=wCatgHoverBrand&amp;element=138">丹姿</a> <a
												class="detail-item" target="_blank"
												href="http://www.nuomi.com/search?k=%E6%AC%A7%E8%8E%B1%E9%9B%85+%E7%BD%91%E8%B4%AD"
												mon="area=wCatgHoverBrand&amp;element=146">欧莱雅</a> <a
												class="detail-item" target="_blank"
												href="http://www.nuomi.com/search?k=%E7%8E%89%E5%85%B0%E6%B2%B9+%E7%BD%91%E8%B4%AD"
												mon="area=wCatgHoverBrand&amp;element=144">玉兰油</a> <a
												class="detail-item" target="_blank"
												href="http://www.nuomi.com/search?k=%E9%9B%AA%E8%82%8C%E7%B2%BE"
												mon="area=wCatgHoverBrand&amp;element=196">高丝</a> <a
												class="detail-item" target="_blank"
												href="http://www.nuomi.com/search?k=%E5%BE%A1%E6%B3%A5%E5%9D%8A+%E7%BD%91%E8%B4%AD"
												mon="area=wCatgHoverBrand&amp;element=143">御泥坊</a> <a
												class="detail-item" target="_blank"
												href="http://www.nuomi.com/search?k=%E7%99%BE%E9%9B%80%E7%BE%9A+%E7%BD%91%E8%B4%AD"
												mon="area=wCatgHoverBrand&amp;element=142">百雀羚</a> <a
												class="detail-item" target="_blank"
												href="http://www.nuomi.com/search?k=%E8%8A%B1%E5%8D%B0+%E7%BD%91%E8%B4%AD"
												mon="area=wCatgHoverBrand&amp;element=141">花印</a> <a
												class="detail-item" target="_blank"
												href="http://www.nuomi.com/search?k=%E6%9C%B5%E6%8B%89%E6%9C%B5%E5%B0%9A+%E7%BD%91%E8%B4%AD"
												mon="area=wCatgHoverBrand&amp;element=140">朵拉朵尚</a> <a
												class="detail-item" target="_blank"
												href="http://www.nuomi.com/search?k=%E5%B8%88%E5%A4%B7%E5%AE%B6+%E7%BD%91%E8%B4%AD"
												mon="area=wCatgHoverBrand&amp;element=139">师夷家</a> <a
												class="detail-item" target="_blank"
												href="http://www.nuomi.com/search?k=%E8%87%AA%E7%84%B6%E5%A0%82"
												mon="area=wCatgHoverBrand&amp;element=213">自然堂</a> <a
												class="detail-item" target="_blank"
												href="http://www.nuomi.com/search?k=%E7%BE%8E%E8%82%A4%E5%AE%9D&rid=6e0728b5df4d580b5b0d4ddafce65339"
												mon="area=wCatgHoverBrand&amp;element=192">美肤宝</a> <a
												class="detail-item" target="_blank"
												href="http://www.nuomi.com/search?k=%E9%9F%A9%E6%9D%9F&rid=dfd808998cbf0b2fc3d608369f7e6513"
												mon="area=wCatgHoverBrand&amp;element=194">韩束</a> <a
												class="detail-item" target="_blank"
												href="http://www.nuomi.com/search?k=%E5%8D%A1%E5%A7%BF%E5%85%B0&rid=9ac6fd51035ddbbb47904b7f83c56766"
												mon="area=wCatgHoverBrand&amp;element=193">卡姿兰</a> <a
												class="detail-item" target="_blank"
												href="http://www.nuomi.com/search?k=%E7%8F%80%E8%8E%B1%E9%9B%85"
												mon="area=wCatgHoverBrand&amp;element=197">珀莱雅</a> <a
												class="detail-item" target="_blank"
												href="http://www.nuomi.com/search?k=%E6%BD%98%E5%A9%B7"
												mon="area=wCatgHoverBrand&amp;element=224">潘婷</a> <a
												class="detail-item" target="_blank"
												href="http://www.nuomi.com/search?k=%E4%BD%B3%E6%B4%81%E5%A3%AB"
												mon="area=wCatgHoverBrand&amp;element=225">佳洁士</a> <a
												class="detail-item" target="_blank"
												href="http://www.nuomi.com/search?k=%E6%8A%A4%E8%88%92%E5%AE%9D"
												mon="area=wCatgHoverBrand&amp;element=226">护舒宝</a> <a
												class="detail-item" target="_blank"
												href="http://www.nuomi.com/search?k=%E7%89%87%E4%BB%94%E7%99%80"
												mon="area=wCatgHoverBrand&amp;element=227">片仔癀</a> <a
												class="detail-item" target="_blank"
												href="http://www.nuomi.com/search?k=YangSang"
												mon="area=wCatgHoverBrand&amp;element=228">YangSang</a> <a
												class="detail-item" target="_blank"
												href="http://www.nuomi.com/search?k=%E5%8D%83%E4%BB%9F%E8%8D%89"
												mon="area=wCatgHoverBrand&amp;element=229">千仟草</a>
										</div>
									</div>
								</div>
							</div>
							<div class="item catg-403 j-sub-item" data-item="catg-403">
								<div class="item-desc">
									<span class="mark"></span> <a class="item-name"
										href="http://w.nuomi.com/403-0/0-f-gn"
										mon="area=wCatg&amp;element=403">鞋/箱包</a>
								</div>
								<div class="category-content clearfix" style="top: -43px;">
									<div class="w-category-item"
										alog-alias="bainuo-wanggou-category-item"
										alog-group="bainuo-wanggou-category-item">
										<div class="title">糯米优选</div>
										<div class="detail">
											<a class="detail-item" target="_blank"
												href="http://w.nuomi.com/403-860/0-f-gn"
												mon="area=wCatgHover&amp;element=860">女鞋</a> <a
												class="detail-item" target="_blank"
												href="http://w.nuomi.com/403-861/0-f-gn"
												mon="area=wCatgHover&amp;element=861">男鞋</a> <a
												class="detail-item" target="_blank"
												href="http://w.nuomi.com/403-862/0-f-gn"
												mon="area=wCatgHover&amp;element=862">拖鞋</a> <a
												class="detail-item" target="_blank"
												href="http://w.nuomi.com/403-863/0-f-gn"
												mon="area=wCatgHover&amp;element=863">箱包</a> <a
												class="detail-item" target="_blank"
												href="http://w.nuomi.com/403-864/0-f-gn"
												mon="area=wCatgHover&amp;element=864">皮具</a> <a
												class="detail-item" target="_blank"
												href="http://w.nuomi.com/403-873/0-f-gn"
												mon="area=wCatgHover&amp;element=873">时尚女包</a>
										</div>
									</div>
									<div class="w-category-item"
										alog-alias="bainuo-wanggou-category-item"
										alog-group="bainuo-wanggou-category-item">
										<div class="title">品牌推荐</div>
										<div class="detail">
											<a class="detail-item" target="_blank"
												href="http://www.nuomi.com/search?k=%E8%BE%BE%E8%8A%99%E5%A6%AE&rid=4ac7a3b18edd514f313ae24a3d6d7e2c"
												mon="area=wCatgHoverBrand&amp;element=231">达芙妮</a> <a
												class="detail-item" target="_blank"
												href="http://bj.nuomi.com/search/%E4%B8%83%E5%8C%B9%E7%8B%BC/1/0/wanggou-403-0-0-pd-0-0"
												mon="area=wCatgHoverBrand&amp;element=156">七匹狼</a> <a
												class="detail-item" target="_blank"
												href="http://bj.nuomi.com/search?k=%E8%BF%AA%E8%8F%B2%E8%8E%B1"
												mon="area=wCatgHoverBrand&amp;element=95">迪菲莱</a> <a
												class="detail-item" target="_blank"
												href="http://www.nuomi.com/search?k=%E5%A8%81%E6%88%88wenger&rid=3e6942f51d3a7fb9e2bfe03a38561828"
												mon="area=wCatgHoverBrand&amp;element=232">威戈wenger</a> <a
												class="detail-item" target="_blank"
												href="http://bj.nuomi.com/search?k=%E8%80%81%E4%BA%BA%E5%A4%B4"
												mon="area=wCatgHoverBrand&amp;element=182">老人头</a> <a
												class="detail-item" target="_blank"
												href="http://www.nuomi.com/search?k=%E4%BE%9D%E6%80%9DQ"
												mon="area=wCatgHoverBrand&amp;element=230">依思Q</a>
										</div>
									</div>
								</div>
							</div>
							<div class="item catg-355 j-sub-item" data-item="catg-355">
								<div class="item-desc">
									<span class="mark"></span> <a class="item-name"
										href="http://w.nuomi.com/355-0/0-f-gn"
										mon="area=wCatg&amp;element=355">运动户外</a>
								</div>
								<div class="category-content clearfix" style="top: -198px;">
									<div class="w-category-item"
										alog-alias="bainuo-wanggou-category-item"
										alog-group="bainuo-wanggou-category-item">
										<div class="title">糯米优选</div>
										<div class="detail">
											<a class="detail-item" target="_blank"
												href="http://w.nuomi.com/355-832/0-f-gn"
												mon="area=wCatgHover&amp;element=832">户外/旅行</a> <a
												class="detail-item" target="_blank"
												href="http://w.nuomi.com/355-865/0-f-gn"
												mon="area=wCatgHover&amp;element=865">运动鞋服</a> <a
												class="detail-item" target="_blank"
												href="http://w.nuomi.com/355-866/0-f-gn"
												mon="area=wCatgHover&amp;element=866">运动用品</a> <a
												class="detail-item" target="_blank"
												href="http://w.nuomi.com/355-867/0-f-gn"
												mon="area=wCatgHover&amp;element=867">汽车</a>
										</div>
									</div>
									<div class="w-category-item"
										alog-alias="bainuo-wanggou-category-item"
										alog-group="bainuo-wanggou-category-item">
										<div class="title">品牌推荐</div>
										<div class="detail">
											<a class="detail-item" target="_blank"
												href="http://www.nuomi.com/search?k=%E6%9D%8E%E5%AE%81+%E7%BD%91%E8%B4%AD"
												mon="area=wCatgHoverBrand&amp;element=170">李宁</a> <a
												class="detail-item" target="_blank"
												href="http://www.nuomi.com/search?k=%E8%8B%94%E5%8E%9F%E5%9C%B0%E5%B8%A6"
												mon="area=wCatgHoverBrand&amp;element=67">苔原地带</a> <a
												class="detail-item" target="_blank"
												href="http://bj.nuomi.com/search/%E7%BE%8E%E9%AA%86%E4%B8%96%E5%AE%B6/1/0/wanggou-0-0-0-pd-0-0"
												mon="area=wCatgHoverBrand&amp;element=24">美骆世家</a> <a
												class="detail-item" target="_blank"
												href="http://www.nuomi.com/search/%E5%87%AF%E9%80%9F/1/0/wanggou-0-0-0-pd-0-0"
												mon="area=wCatgHoverBrand&amp;element=66">凯速</a> <a
												class="detail-item" target="_blank"
												href="http://www.nuomi.com/search/%E5%B0%9A%E9%BE%99/1/0/wanggou-0-0-0-pd-0-0"
												mon="area=wCatgHoverBrand&amp;element=65">尚龙</a> <a
												class="detail-item" target="_blank"
												href="http://www.nuomi.com/search?k=%E7%8C%8E%E9%B9%B0%E8%AE%A1%E5%88%92"
												mon="area=wCatgHoverBrand&amp;element=68">猎鹰计划</a> <a
												class="detail-item" target="_blank"
												href="http://www.nuomi.com/search/%E6%8E%A2%E8%B7%AF%E8%80%85/1/0/wanggou-0-0-0-pd-0-0"
												mon="area=wCatgHoverBrand&amp;element=107">探路者</a> <a
												class="detail-item" target="_blank"
												href="http://www.nuomi.com/search/%E9%A2%82%E6%8B%93/1/0/wanggou-0-0-0-pd-0-0"
												mon="area=wCatgHoverBrand&amp;element=108">颂拓</a> <a
												class="detail-item" target="_blank"
												href="http://bj.nuomi.com/search?k=%E7%BA%A2%E5%8F%8C%E5%96%9C+%E7%BD%91%E8%B4%AD"
												mon="area=wCatgHoverBrand&amp;element=147">红双喜</a> <a
												class="detail-item" target="_blank"
												href="http://bj.nuomi.com/search?k=%E8%BF%9C%E8%A1%8C%E5%AE%A2"
												mon="area=wCatgHoverBrand&amp;element=174"> Topsky 远行客</a> <a
												class="detail-item" target="_blank"
												href="http://bj.nuomi.com/search?k=%E5%AE%89%E6%88%88%E6%B4%9B"
												mon="area=wCatgHoverBrand&amp;element=178">安戈洛</a>
										</div>
									</div>
								</div>
							</div>
							<div class="item catg-397 j-sub-item" data-item="catg-397">
								<div class="item-desc">
									<span class="mark"></span> <a class="item-name"
										href="http://w.nuomi.com/397-0/0-f-gn"
										mon="area=wCatg&amp;element=397">数码家电</a>
								</div>
								<div class="category-content clearfix">
									<div class="w-category-item"
										alog-alias="bainuo-wanggou-category-item"
										alog-group="bainuo-wanggou-category-item">
										<div class="title">糯米优选</div>
										<div class="detail">
											<a class="detail-item" target="_blank"
												href="http://w.nuomi.com/397-840/0-f-gn"
												mon="area=wCatgHover&amp;element=840">数码及配件</a> <a
												class="detail-item" target="_blank"
												href="http://w.nuomi.com/397-841/0-f-gn"
												mon="area=wCatgHover&amp;element=841">小家电</a> <a
												class="detail-item" target="_blank"
												href="http://w.nuomi.com/397-842/0-f-gn"
												mon="area=wCatgHover&amp;element=842">健康护理</a> <a
												class="detail-item" target="_blank"
												href="http://w.nuomi.com/397-843/0-f-gn"
												mon="area=wCatgHover&amp;element=843">办公/文具</a>
										</div>
									</div>
									<div class="w-category-item"
										alog-alias="bainuo-wanggou-category-item"
										alog-group="bainuo-wanggou-category-item">
										<div class="title">品牌推荐</div>
										<div class="detail">
											<a class="detail-item" target="_blank"
												href="http://bj.nuomi.com/search?k=%E8%8B%B9%E6%9E%9C+ipad"
												mon="area=wCatgHoverBrand&amp;element=180">苹果ipad</a> <a
												class="detail-item" target="_blank"
												href="http://bj.nuomi.com/search?k=%E9%87%91%E5%A3%AB%E9%A1%BF"
												mon="area=wCatgHoverBrand&amp;element=181">金士顿 </a> <a
												class="detail-item" target="_blank"
												href="http://www.nuomi.com/search/%E5%A5%94%E8%85%BE/1/0/wanggou-0-0-0-pd-0-0"
												mon="area=wCatgHoverBrand&amp;element=18">奔腾</a> <a
												class="detail-item" target="_blank"
												href="http://www.nuomi.com/search?k=%E9%A3%9E%E7%A7%91"
												mon="area=wCatgHoverBrand&amp;element=85">飞科</a> <a
												class="detail-item" target="_blank"
												href="http://www.nuomi.com/search?k=%E7%BE%8E%E7%9A%84%20%E7%BD%91%E8%B4%AD"
												mon="area=wCatgHoverBrand&amp;element=214">美的</a> <a
												class="detail-item" target="_blank"
												href="http://www.nuomi.com/search?k=%E9%A3%9E%E5%88%A9%E6%B5%A6"
												mon="area=wCatgHoverBrand&amp;element=91">飞利浦</a> <a
												class="detail-item" target="_blank"
												href="http://www.nuomi.com/search?k=%E9%9B%B7%E6%8A%80"
												mon="area=wCatgHoverBrand&amp;element=89">雷技</a> <a
												class="detail-item" target="_blank"
												href="http://www.nuomi.com/search?k=%E5%BA%B7%E4%BD%B3%20%E7%BD%91%E8%B4%AD"
												mon="area=wCatgHoverBrand&amp;element=215">康佳</a> <a
												class="detail-item" target="_blank"
												href="http://www.nuomi.com/search/%E7%88%B1%E5%9B%BD%E8%80%85/1/0/wanggou-397-0-0-pd-0-0"
												mon="area=wCatgHoverBrand&amp;element=86">爱国者</a> <a
												class="detail-item" target="_blank"
												href="http://www.nuomi.com/search?k=%E9%A3%9E%E6%AF%9B%E8%85%BF"
												mon="area=wCatgHoverBrand&amp;element=87">飞毛腿</a> <a
												class="detail-item" target="_blank"
												href="http://www.nuomi.com/search?k=%E8%8D%A3%E4%BA%8B%E8%BE%BE+%E7%BD%91%E8%B4%AD"
												mon="area=wCatgHoverBrand&amp;element=133">荣事达</a>
										</div>
									</div>
								</div>
							</div>
							<div class="item catg-354 j-sub-item" data-item="catg-354">
								<div class="item-desc">
									<span class="mark"></span> <a class="item-name"
										href="http://w.nuomi.com/354-0/0-f-gn"
										mon="area=wCatg&amp;element=354">手表饰品</a>
								</div>
								<div class="category-content clearfix">
									<div class="w-category-item"
										alog-alias="bainuo-wanggou-category-item"
										alog-group="bainuo-wanggou-category-item">
										<div class="title">糯米优选</div>
										<div class="detail">
											<a class="detail-item" target="_blank"
												href="http://w.nuomi.com/354-811/0-f-gn"
												mon="area=wCatgHover&amp;element=811">饰品</a> <a
												class="detail-item" target="_blank"
												href="http://w.nuomi.com/354-812/0-f-gn"
												mon="area=wCatgHover&amp;element=812">眼镜</a> <a
												class="detail-item" target="_blank"
												href="http://w.nuomi.com/354-813/0-f-gn"
												mon="area=wCatgHover&amp;element=813">手表</a> <a
												class="detail-item" target="_blank"
												href="http://w.nuomi.com/354-856/0-f-gn"
												mon="area=wCatgHover&amp;element=856">珠宝黄金</a> <a
												class="detail-item" target="_blank"
												href="http://w.nuomi.com/354-857/0-f-gn"
												mon="area=wCatgHover&amp;element=857">礼品</a>
										</div>
									</div>
									<div class="w-category-item"
										alog-alias="bainuo-wanggou-category-item"
										alog-group="bainuo-wanggou-category-item">
										<div class="title">品牌推荐</div>
										<div class="detail">
											<a class="detail-item" target="_blank"
												href="http://www.nuomi.com/search?k=%E6%96%AF%E6%B2%83%E7%90%AA"
												mon="area=wCatgHoverBrand&amp;element=208">SWATCH斯沃琪</a> <a
												class="detail-item" target="_blank"
												href="http://bj.nuomi.com/search?k=%E5%A4%A9%E6%A2%AD+%E7%BD%91%E8%B4%AD"
												mon="area=wCatgHoverBrand&amp;element=158">天梭</a> <a
												class="detail-item" target="_blank"
												href="http://bj.nuomi.com/search?k=ODM&p=1"
												mon="area=wCatgHoverBrand&amp;element=183">ODM</a> <a
												class="detail-item" target="_blank"
												href="http://www.nuomi.com/search/%E6%9D%8E%E7%BB%B4%E6%96%AF/1/0/wanggou-0-0-0-pd-0-0"
												mon="area=wCatgHoverBrand&amp;element=105">李维斯Levi's</a> <a
												class="detail-item" target="_blank"
												href="http://bj.nuomi.com/search?k=%E8%8E%B1%E8%AF%97%E7%91%9E+%E7%BD%91%E8%B4%AD"
												mon="area=wCatgHoverBrand&amp;element=162">莱诗瑞</a> <a
												class="detail-item" target="_blank"
												href="http://www.nuomi.com/search/%E5%98%89%E5%B9%B4%E5%8D%8E/1/0/wanggou-0-0-0-pd-0-0"
												mon="area=wCatgHoverBrand&amp;element=209">嘉年华</a> <a
												class="detail-item" target="_blank"
												href="http://www.nuomi.com/search?k=%E8%AF%97%E8%94%93"
												mon="area=wCatgHoverBrand&amp;element=210">诗蔓</a> <a
												class="detail-item" target="_blank"
												href="http://www.nuomi.com/search?k=%E9%93%B6%E7%94%9F"
												mon="area=wCatgHoverBrand&amp;element=211">银生</a>
										</div>
									</div>
								</div>
							</div>
							<div class="item catg-351 j-sub-item" data-item="catg-351">
								<div class="item-desc">
									<span class="mark"></span> <a class="item-name"
										href="http://w.nuomi.com/351-0/0-f-gn"
										mon="area=wCatg&amp;element=351">母婴玩具</a>
								</div>
								<div class="category-content clearfix" style="top: -327px;">
									<div class="w-category-item"
										alog-alias="bainuo-wanggou-category-item"
										alog-group="bainuo-wanggou-category-item">
										<div class="title">糯米优选</div>
										<div class="detail">
											<a class="detail-item" target="_blank"
												href="http://w.nuomi.com/351-833/0-f-gn"
												mon="area=wCatgHover&amp;element=833">玩具/早教</a> <a
												class="detail-item" target="_blank"
												href="http://w.nuomi.com/351-868/0-f-gn"
												mon="area=wCatgHover&amp;element=868">童装童鞋</a> <a
												class="detail-item" target="_blank"
												href="http://w.nuomi.com/351-869/0-f-gn"
												mon="area=wCatgHover&amp;element=869">孕婴幼食品</a> <a
												class="detail-item" target="_blank"
												href="http://w.nuomi.com/351-870/0-f-gn"
												mon="area=wCatgHover&amp;element=870">孕婴幼用品</a>
										</div>
									</div>
									<div class="w-category-item"
										alog-alias="bainuo-wanggou-category-item"
										alog-group="bainuo-wanggou-category-item">
										<div class="title">品牌推荐</div>
										<div class="detail">
											<a class="detail-item" target="_blank"
												href="http://www.nuomi.com/search/%E8%BF%AA%E5%A3%AB%E5%B0%BC/1/0/wanggou-0-0-0-pd-0-0"
												mon="area=wCatgHoverBrand&amp;element=2">迪士尼</a> <a
												class="detail-item" target="_blank"
												href="http://www.nuomi.com/search/%E5%AD%95%E7%BE%8E/1/0/wanggou-0-0-0-pd-0-0"
												mon="area=wCatgHoverBrand&amp;element=6">孕美</a> <a
												class="detail-item" target="_blank"
												href="http://bj.nuomi.com/search/%E6%83%A0%E6%B0%8F/1/0/wanggou-0-0-0-pd-0-0"
												mon="area=wCatgHoverBrand&amp;element=195">惠氏</a> <a
												class="detail-item" target="_blank"
												href="http://www.nuomi.com/search?k=%E6%89%98%E9%A9%AC%E6%96%AF"
												mon="area=wCatgHoverBrand&amp;element=44">托马斯</a> <a
												class="detail-item" target="_blank"
												href="http://www.nuomi.com/search?k=%E4%BA%B2%E4%BA%B2%E6%88%91%20%E7%BD%91%E8%B4%AD"
												mon="area=wCatgHoverBrand&amp;element=216">亲亲我</a> <a
												class="detail-item" target="_blank"
												href="http://www.nuomi.com/search?k=%E5%A5%BD%E5%A5%87+%E7%BD%91%E8%B4%AD"
												mon="area=wCatgHoverBrand&amp;element=131">好奇</a> <a
												class="detail-item" target="_blank"
												href="http://bj.nuomi.com/search?k=%E5%A5%BD%E5%AD%A9%E5%AD%90"
												mon="area=wCatgHoverBrand&amp;element=175">好孩子</a> <a
												class="detail-item" target="_blank"
												href="http://www.nuomi.com/search?k=%E5%A6%AE%E9%A3%98Nepia&rid=31177bee1b245168c69718b4dd58f663"
												mon="area=wCatgHoverBrand&amp;element=190">妮飘Nepia</a> <a
												class="detail-item" target="_blank"
												href="http://www.nuomi.com/search?k=%E5%8D%81%E6%9C%88%E5%A6%88%E5%92%AA"
												mon="area=wCatgHoverBrand&amp;element=220">十月妈咪</a> <a
												class="detail-item" target="_blank"
												href="http://www.nuomi.com/search?k=%E6%BE%B3%E8%B4%9D"
												mon="area=wCatgHoverBrand&amp;element=221">澳贝</a> <a
												class="detail-item" target="_blank"
												href="http://www.nuomi.com/search?k=%E5%A5%A5%E8%BF%AA%E5%8F%8C%E9%92%BB"
												mon="area=wCatgHoverBrand&amp;element=222">奥迪双钻</a> <a
												class="detail-item" target="_blank"
												href="http://www.nuomi.com/search?k=%E6%84%A4%E6%80%92%E7%9A%84%E5%B0%8F%E9%B8%9F"
												mon="area=wCatgHoverBrand&amp;element=223">愤怒的小鸟</a>
										</div>
									</div>
								</div>
							</div>
							<div class="item catg-360 j-sub-item" data-item="catg-360">
								<div class="item-desc">
									<span class="mark"></span> <a class="item-name"
										href="http://w.nuomi.com/360-0/0-f-gn"
										mon="area=wCatg&amp;element=360">图书杂志</a>
								</div>
								<div class="category-content clearfix">
									<div class="w-category-item"
										alog-alias="bainuo-wanggou-category-item"
										alog-group="bainuo-wanggou-category-item">
										<div class="title">糯米优选</div>
										<div class="detail">
											<a class="detail-item" target="_blank"
												href="http://w.nuomi.com/360-851/0-f-gn"
												mon="area=wCatgHover&amp;element=851">图书</a> <a
												class="detail-item" target="_blank"
												href="http://w.nuomi.com/360-852/0-f-gn"
												mon="area=wCatgHover&amp;element=852">音像</a> <a
												class="detail-item" target="_blank"
												href="http://w.nuomi.com/360-871/0-f-gn"
												mon="area=wCatgHover&amp;element=871">杂志</a>
										</div>
									</div>
									<div class="w-category-item"
										alog-alias="bainuo-wanggou-category-item"
										alog-group="bainuo-wanggou-category-item">
										<div class="title">品牌推荐</div>
										<div class="detail">
											<a class="detail-item" target="_blank"
												href="http://bj.nuomi.com/search?k=%E8%A7%86%E9%A2%91%E6%95%99%E7%A8%8B"
												mon="area=wCatgHoverBrand&amp;element=165">育碟软件</a> <a
												class="detail-item" target="_blank"
												href="http://www.nuomi.com/search?k=%E5%A5%BD%E5%A9%B4%E7%AB%A5"
												mon="area=wCatgHoverBrand&amp;element=167">好婴童</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="focus-pic-box" mon="element_type=nav"
					alog-alias="bainuo-wanggou-focus-pic-box"
					alog-group="bainuo-wanggou-focus-pic-box">
					<div class="w-focus-pic" mon="area=banner&amp;element_type=nav">
						<ul class="banner-shopping clearfix" id="j-focus-img">
							<li bn_box="banner&amp;position"
								class="item 1 hover j-sliderbar-hover"
								style="display: block; opacity: 1;">
								<div class="sub-banner">
									<div>
										<a class="main-item-href"
											href="http://activity.nuomi.com/mis/activity/common/short_url/gwmzjx"
											title="" target="_blank"
											mon="element=adver_1774&amp;position=adver_1"> <img
											data-original="http://g.hiphotos.baidu.com/lbs/pic/item/a044ad345982b2b7c601587c34adcbef77099bef.jpg"
											alt="" src="./index_files/lazy-loading_2689268.png">
										</a>
									</div>
									<ul class="sub-item" id="j-subitem">
										<li><a
											href="http://activity.nuomi.com/mis/activity/common/short_url/gwcjhfzc"
											title=""
											mon="element=http%3A%2F%2Factivity.nuomi.com%2Fmis%2Factivity%2Fcommon%2Fshort_url%2Fgwcjhfzc&amp;position=11"><img
												data-original="http://d.hiphotos.baidu.com/lbs/pic/item/5d6034a85edf8db1f8db2fd80c23dd54574e7490.jpg"
												alt=""
												src="./index_files/5d6034a85edf8db1f8db2fd80c23dd54574e7490.jpg"
												style="display: block;"><i></i></a></li>
										<li><a
											href="http://activity.nuomi.com/mis/activity/common/short_url/gwqlyxzc"
											title=""
											mon="element=http%3A%2F%2Factivity.nuomi.com%2Fmis%2Factivity%2Fcommon%2Fshort_url%2Fgwcjhfzc&amp;position=12"><img
												data-original="http://b.hiphotos.baidu.com/lbs/pic/item/ae51f3deb48f8c54b5ee9d993f292df5e0fe7f42.jpg"
												alt=""
												src="./index_files/ae51f3deb48f8c54b5ee9d993f292df5e0fe7f42.jpg"
												style="display: block;"><i></i></a></li>
										<li><a
											href="http://www.nuomi.com/search/%E6%B0%B4%E6%9E%9C/1/0/wanggou-0-0-0-pd-0-0"
											title=""
											mon="element=http%3A%2F%2Factivity.nuomi.com%2Fmis%2Factivity%2Fcommon%2Fshort_url%2Fgwcjhfzc&amp;position=13"><img
												data-original="http://e.hiphotos.baidu.com/lbs/pic/item/a08b87d6277f9e2fab5f40ab1c30e924b899f32f.jpg"
												alt=""
												src="./index_files/a08b87d6277f9e2fab5f40ab1c30e924b899f32f.jpg"
												style="display: block;"><i></i></a></li>
									</ul>
								</div>
							</li>
						</ul>
						<ul class="slider-num" id="j-slider-num">
							<li class="hover"></li>
						</ul>
					</div>
					<div class="w-slider-pic"
						mon="area=bannerTurn&amp;element_type=nav">
						<div class="box">
							<div class="prev prev-d" id="j-slider-prev"></div>
							<div class="swiper-container">
								<ul class="slider-list swiper-wrapper" id="j-slider">
									<li class="swiper-slide j-sliderbar-hover"
										bn_slide="bannerTurn&amp;position"
										bn_box="bannerTurn&amp;position" style="left: 0px;"><a
										href="http://activity.nuomi.com/mis/activity/common/short_url/gwtydxfqj"
										target="_blank" title=""
										style="background: url(http://d.hiphotos.baidu.com/lbs/pic/item/48540923dd54564ea122bb38b5de9c82d1584f6f.jpg)"
										mon="element=adver_451&amp;position=adver_1"></a> <a
										href="http://activity.nuomi.com/mis/activity/common/short_url/gwsdfh"
										target="_blank" title=""
										style="background: url(http://h.hiphotos.baidu.com/lbs/pic/item/b8014a90f603738db637db6bb61bb051f819ec7e.jpg)"
										mon="element=adver_452&amp;position=adver_2"><hr></a> <a
										href="http://activity.nuomi.com/mis/activity/common/short_url/bcjgw"
										target="_blank" title=""
										style="background: url(http://f.hiphotos.baidu.com/lbs/pic/item/91ef76c6a7efce1b30c92683aa51f3deb58f659d.jpg)"
										mon="element=adver_453&amp;position=adver_3"><hr></a> <a
										href="http://activity.nuomi.com/mis/activity/common/short_url/gwczsd"
										target="_blank" title=""
										style="background: url(http://d.hiphotos.baidu.com/lbs/pic/item/a2cc7cd98d1001e91ae372b3bd0e7bec55e797aa.jpg)"
										mon="element=adver_454&amp;position=adver_4"><hr></a></li>
									<li class="swiper-slide" bn_slide="bannerTurn&amp;position">
										<a
										href="http://activity.nuomi.com/mis/activity/common/short_url/gwmbfszc"
										target="_blank" title=""
										style="background: url(http://h.hiphotos.baidu.com/lbs/pic/item/267f9e2f07082838c036dfeabc99a9014c08f111.jpg)"
										mon="element=adver_455&amp;position=adver_5"></a> <a
										href="http://activity.nuomi.com/mis/activity/common/short_url/gwlnzc"
										target="_blank" title=""
										style="background: url(http://c.hiphotos.baidu.com/lbs/pic/item/b03533fa828ba61e7ae021814234970a304e5916.jpg)"
										mon="element=adver_456&amp;position=adver_6"><hr></a> <a
										href="http://activity.nuomi.com/mis/activity/common/short_url/gwhdzc"
										target="_blank" title=""
										style="background: url(http://h.hiphotos.baidu.com/lbs/pic/item/2e2eb9389b504fc2ba5e9795e1dde71190ef6d18.jpg)"
										mon="element=adver_457&amp;position=adver_7"><hr></a> <a
										href="http://activity.nuomi.com/mis/activity/common/short_url/gudwj"
										target="_blank" title=""
										style="background: url(http://a.hiphotos.baidu.com/lbs/pic/item/314e251f95cad1c8f702adbc7a3e6709c83d51eb.jpg)"
										mon="element=adver_458&amp;position=adver_8"><hr></a>
									</li>
								</ul>
							</div>
							<div class="next" id="j-slider-next"></div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<script>
			void function(e, t) {
				for (var n = t.getElementsByTagName("img"), a = +new Date, i = [], o = function() {
					this.removeEventListener
							&& this.removeEventListener("load", o, !1), i
							.push({
								img : this,
								time : +new Date
							})
				}, s = 0; s < n.length; s++)
					!function() {
						var e = n[s];
						e.addEventListener ? !e.complete
								&& e.addEventListener("load", o, !1)
								: e.attachEvent
										&& e.attachEvent("onreadystatechange",
												function() {
													"complete" == e.readyState
															&& o.call(e, o)
												})
					}();
				alog("speed.set", {
					fsItems : i,
					fs : a
				})
			}(window, document);
		</script>
		<div class="container">
			<div class="w-goods-item clearfix">
				<div class="goods goods-"
					mon="area=popItemList&amp;element_type=item&amp;s=1441edaf97ca1f994859837258703f91"
					bn_box="popItemList&amp;position"
					alog-alias="bainuo-wanggou-hot-deal"
					alog-group="bainuo-wanggou-hot-deal">
					<div class="w-index-title">
						<div class="">
							<h2>
								<span class="h2"><span class="index">F</span><a
									href="javascript:void(0);" title="" class="t">人气商品</a></span><span
									class="good" alog-alias="bainuo-wanggou-index-title-good"
									alog-group="bainuo-wanggou-index-title-good"><a
									href="javascript:void(0);" title="" class="hover">热销</a><a
									href="javascript:void(0);" title="">新品</a><a
									href="javascript:void(0);" title="" class="no">品牌特卖</a></span>
							</h2>
						</div>
					</div>
					<div class="w-good-items">
						<div class="items-c items-">
							<div class="box j-item-c">
								<ul class="item-c clearfix j-sliderbar-hover"
									style="opacity: 1; display: block;">

									<!--最新产品开始-->
									<%
										for (int i = 0; i < latestProducts.size(); i++) {
											Product product = latestProducts.get(i);
									%>
									<li class="w-item w-item-" style=""><a class="w-item-box"
										href="productdetailshow.jsp?id=<%=product.getId()%>"
										"
										mon="element=3155766&amp;position=1"
										data-item-st="{&quot;s&quot;:&quot;1441edaf97ca1f994859837258703f91&quot;}"><div
												class="itemc">
												<img src="./images/product/<%=product.getId()%>.jpg"
													data-original="http://S0.nuomi.bdimg.com/upload/mfs201508/deal/2015/3/V_L/3155766-8p55iwipsw-48693930304125051.jpg"
													alt="" style="display: inline;">
												<div class="bt">
													<h5 class="title"><%=product.getName()%></h5>
													<ul class="ot clearfix">
														<li class="fl cur">¥<span class="cur-price"><%=product.getMemberPrice()%></span></li>
														<li class="fl text">价值<span class="old-price">¥<%=product.getNormalPrice()%></span></li>
														<li class="fr text"><span class="part_in">8371</span>人已参与</li>
													</ul>
												</div>
											</div>
											<div class="s-icon-box">
												<span class="s-xindan"></span>
											</div></a></li>
									<%
										}
									%>
									<!--最新产品结束-->

								</ul>
								<ul class="item-c clearfix" style="opacity: 0; display: none;">
									<li class="w-item w-item-" style=""><a class="w-item-box"
										href="http://www.nuomi.com/deal/fcsmhc0u.html" target="_blank"
										mon="element=2732257&amp;position=7"
										data-item-st="{&quot;s&quot;:&quot;1441edaf97ca1f994859837258703f91&quot;}"><div
												class="itemc">
												<img
													src="./index_files/2732257-g94gbs9b7p-11395675545850624.jpg"
													data-original="http://S1.nuomi.bdimg.com/upload/deal/2014/12/V_L/2732257-g94gbs9b7p-11395675545850624.jpg"
													alt="" style="display: inline;">
												<div class="bt">
													<h5 class="title">【碳墨轩行楷练字普及版】高效神奇行楷练字贴！反复书写，21天速成练字！包邮</h5>
													<ul class="ot clearfix">
														<li class="fl cur">¥<span class="cur-price">25.8</span></li>
														<li class="fl text">价值<span class="old-price">¥99</span></li>
														<li class="fr text"><span class="part_in">7106</span>人已参与</li>
													</ul>
												</div>
											</div>
											<div class="s-icon-box">
												<span class="s-xindan"></span>
											</div></a></li>
									<li class="w-item w-item-" style=""><a class="w-item-box"
										href="http://www.nuomi.com/deal/t3gstbdy.html" target="_blank"
										mon="element=2923547&amp;position=8"
										data-item-st="{&quot;s&quot;:&quot;1441edaf97ca1f994859837258703f91&quot;}"><div
												class="itemc">
												<img
													src="./index_files/2923547-zkk7r8ygns-31859886427459926.jpg"
													data-original="http://S2.nuomi.bdimg.com/upload/mfs201501/deal/2015/1/V_L/2923547-zkk7r8ygns-31859886427459926.jpg"
													alt="" style="display: inline;">
												<div class="bt">
													<h5 class="title">【萌宝宝超轻粘土套装】36色超轻粘土套装！彩泥橡皮泥无毒，送工具！包邮！</h5>
													<ul class="ot clearfix">
														<li class="fl cur">¥<span class="cur-price">29.9</span></li>
														<li class="fl text">价值<span class="old-price">¥72</span></li>
														<li class="fr text"><span class="part_in">2319</span>人已参与</li>
													</ul>
												</div>
											</div>
											<div class="s-icon-box">
												<span class="s-xindan"></span>
											</div></a></li>
									<li class="w-item w-item-" style=""><a class="w-item-box"
										href="http://www.nuomi.com/deal/zavlaesr.html" target="_blank"
										mon="element=1011652&amp;position=9"
										data-item-st="{&quot;s&quot;:&quot;1441edaf97ca1f994859837258703f91&quot;}"><div
												class="itemc">
												<img
													src="./index_files/1011652-bx4hnh3j72-17781260541386431.jpg"
													data-original="http://S0.nuomi.bdimg.com/upload/deal/2014/5/V_L/1011652-bx4hnh3j72-17781260541386431.jpg"
													alt="" style="display: inline;">
												<div class="bt">
													<h5 class="title">【双拉链多用功能包中包】双拉链多功能包中包！自由扩容！9色可选，3个包邮！</h5>
													<ul class="ot clearfix">
														<li class="fl cur">¥<span class="cur-price">10.9</span></li>
														<li class="fl text">价值<span class="old-price">¥49</span></li>
														<li class="fr text"><span class="part_in">5102</span>人已参与</li>
													</ul>
												</div>
											</div>
											<div class="s-icon-box"></div></a></li>
									<li class="w-item w-item-" style=""><a class="w-item-box"
										href="http://www.nuomi.com/deal/3v64ns4k.html" target="_blank"
										mon="element=2619867&amp;position=10"
										data-item-st="{&quot;s&quot;:&quot;1441edaf97ca1f994859837258703f91&quot;}"><div
												class="itemc">
												<img
													src="./index_files/2619867-tmawsu89ic-27806434959709727.jpg"
													data-original="http://S1.nuomi.bdimg.com/upload/deal/2014/12/V_L/2619867-tmawsu89ic-27806434959709727.jpg"
													alt="" style="display: inline;">
												<div class="bt">
													<h5 class="title">【百搭长款女毛衣链项链】百搭长款女士猫眼石毛衣链！48款可选，包邮！</h5>
													<ul class="ot clearfix">
														<li class="fl cur">¥<span class="cur-price">9.9</span></li>
														<li class="fl text">价值<span class="old-price">¥88</span></li>
														<li class="fr text"><span class="part_in">1767</span>人已参与</li>
													</ul>
												</div>
											</div>
											<div class="s-icon-box">
												<span class="s-xindan"></span>
											</div></a></li>
									<li class="w-item w-item-" style=""><a class="w-item-box"
										href="http://www.nuomi.com/deal/npzgtobo.html" target="_blank"
										mon="element=3204188&amp;position=11"
										data-item-st="{&quot;s&quot;:&quot;1441edaf97ca1f994859837258703f91&quot;}"><div
												class="itemc">
												<img
													src="./index_files/3204188-2nqbmbacvk-18385141696454575.jpg"
													data-original="http://S0.nuomi.bdimg.com/upload/mfs201503/deal/2015/3/V_L/3204188-2nqbmbacvk-18385141696454575.jpg"
													alt="" style="display: inline;">
												<div class="bt">
													<h5 class="title">【熙梓薇半身裙】高腰百搭打底短裙半身裙百褶裙！5色可选，包邮！</h5>
													<ul class="ot clearfix">
														<li class="fl cur">¥<span class="cur-price">29</span></li>
														<li class="fl text">价值<span class="old-price">¥298</span></li>
														<li class="fr text"><span class="part_in">406</span>人已参与</li>
													</ul>
												</div>
											</div>
											<div class="s-icon-box">
												<span class="s-xindan"></span>
											</div></a></li>
									<li class="w-item w-item-" style=""><a class="w-item-box"
										href="http://www.nuomi.com/deal/vazsc1be.html" target="_blank"
										mon="element=3660202&amp;position=12"
										data-item-st="{&quot;s&quot;:&quot;1441edaf97ca1f994859837258703f91&quot;}"><div
												class="itemc">
												<img
													src="./index_files/3660202-usgfsyrqme-40928096750156063.jpg"
													data-original="http://S1.nuomi.bdimg.com/upload/mfs201505/deal/2015/5/V_L/3660202-usgfsyrqme-40928096750156063.jpg"
													alt="" style="display: inline;">
												<div class="bt">
													<h5 class="title">【大容量旅游双肩包】大容量旅游双肩包！宽大厚实手提！5色任选，包邮！</h5>
													<ul class="ot clearfix">
														<li class="fl cur">¥<span class="cur-price">99</span></li>
														<li class="fl text">价值<span class="old-price">¥199</span></li>
														<li class="fr text"><span class="part_in">150</span>人已参与</li>
													</ul>
												</div>
											</div>
											<div class="s-icon-box">
												<span class="s-xindan"></span>
											</div></a></li>
								</ul>
								<ul class="item-c clearfix" style="opacity: 0; display: none;">
									<li class="w-item w-item-" style=""><a class="w-item-box"
										href="http://www.nuomi.com/deal/qtzvrwp7.html" target="_blank"
										mon="element=842029&amp;position=13"
										data-item-st="{&quot;s&quot;:&quot;1441edaf97ca1f994859837258703f91&quot;}"><div
												class="itemc">
												<img src="./index_files/842029-1398245882304.jpg"
													data-original="http://S1.nuomi.bdimg.com/upload/deal/2014/4/V_L/842029-1398245882304.jpg"
													alt="" style="display: inline;">
												<div class="bt">
													<h5 class="title">【双驱动神奇旋转拖把】双驱动神奇旋转顶配拖把！双驱动手压式，超省力！包邮！</h5>
													<ul class="ot clearfix">
														<li class="fl cur">¥<span class="cur-price">69</span></li>
														<li class="fl text">价值<span class="old-price">¥198</span></li>
														<li class="fr text"><span class="part_in">7314</span>人已参与</li>
													</ul>
												</div>
											</div>
											<div class="s-icon-box"></div></a></li>
									<li class="w-item w-item-" style=""><a class="w-item-box"
										href="http://www.nuomi.com/deal/sto6em2n.html" target="_blank"
										mon="element=3563932&amp;position=14"
										data-item-st="{&quot;s&quot;:&quot;1441edaf97ca1f994859837258703f91&quot;}"><div
												class="itemc">
												<img src="./index_files/lazy-loading_2689268.png"
													data-original="http://S1.nuomi.bdimg.com/upload/mfs201508/deal/2015/4/V_L/3563932-8m2h8cnj6h-17135263588905001.jpg"
													alt="">
												<div class="bt">
													<h5 class="title">【娇姿曲线九分裤】九分裤！高弹显瘦，外穿打底！11色任选，包邮！</h5>
													<ul class="ot clearfix">
														<li class="fl cur">¥<span class="cur-price">49</span></li>
														<li class="fl text">价值<span class="old-price">¥298</span></li>
														<li class="fr text"><span class="part_in">799</span>人已参与</li>
													</ul>
												</div>
											</div>
											<div class="s-icon-box">
												<span class="s-xindan"></span>
											</div></a></li>
									<li class="w-item w-item-" style=""><a class="w-item-box"
										href="http://www.nuomi.com/deal/iqa3e0xl.html" target="_blank"
										mon="element=1307235&amp;position=15"
										data-item-st="{&quot;s&quot;:&quot;1441edaf97ca1f994859837258703f91&quot;}"><div
												class="itemc">
												<img
													src="./index_files/1307235-dkze9hi8ty-34713846361342612.jpg"
													data-original="http://S0.nuomi.bdimg.com/upload/mfs201503/deal/2014/7/V_L/1307235-dkze9hi8ty-34713846361342612.jpg"
													alt="" style="display: inline;">
												<div class="bt">
													<h5 class="title">【修复保湿紧致蚕丝面膜】修复保湿紧致蚕丝面膜21片/套！紧肤修复，美白补水！包邮！</h5>
													<ul class="ot clearfix">
														<li class="fl cur">¥<span class="cur-price">80</span></li>
														<li class="fl text">价值<span class="old-price">¥333.9</span></li>
														<li class="fr text"><span class="part_in">4820</span>人已参与</li>
													</ul>
												</div>
											</div>
											<div class="s-icon-box">
												<span class="s-xindan"></span>
											</div></a></li>
									<li class="w-item w-item-" style=""><a class="w-item-box"
										href="http://www.nuomi.com/deal/wy58lr8h.html" target="_blank"
										mon="element=1404259&amp;position=16"
										data-item-st="{&quot;s&quot;:&quot;1441edaf97ca1f994859837258703f91&quot;}"><div
												class="itemc">
												<img
													src="./index_files/1404259-5z4neuzzdy-17873060767471832.jpg"
													data-original="http://S2.nuomi.bdimg.com/upload/mfs201503/deal/2014/7/V_L/1404259-5z4neuzzdy-17873060767471832.jpg"
													alt="" style="display: inline;">
												<div class="bt">
													<h5 class="title">【九阳全自动豆浆机】多功能全自动豆浆机！不锈钢杯体，全国联保！包邮！</h5>
													<ul class="ot clearfix">
														<li class="fl cur">¥<span class="cur-price">189</span></li>
														<li class="fl text">价值<span class="old-price">¥399</span></li>
														<li class="fr text"><span class="part_in">1674</span>人已参与</li>
													</ul>
												</div>
											</div>
											<div class="s-icon-box">
												<span class="s-xindan"></span>
											</div></a></li>
									<li class="w-item w-item-" style=""><a class="w-item-box"
										href="http://www.nuomi.com/deal/vigu9y2k.html" target="_blank"
										mon="element=2838894&amp;position=17"
										data-item-st="{&quot;s&quot;:&quot;1441edaf97ca1f994859837258703f91&quot;}"><div
												class="itemc">
												<img
													src="./index_files/2838894-9h76e9d9h2-30227223824810128.jpg"
													data-original="http://S1.nuomi.bdimg.com/upload/deal/2015/1/V_L/2838894-9h76e9d9h2-30227223824810128.jpg"
													alt="" style="display: inline;">
												<div class="bt">
													<h5 class="title">【耐拓大容量减负书包】大容量小学生减负书包！大容量！4色可选，包邮！</h5>
													<ul class="ot clearfix">
														<li class="fl cur">¥<span class="cur-price">32</span></li>
														<li class="fl text">价值<span class="old-price">¥128</span></li>
														<li class="fr text"><span class="part_in">8351</span>人已参与</li>
													</ul>
												</div>
											</div>
											<div class="s-icon-box">
												<span class="s-xindan"></span>
											</div></a></li>
									<li class="w-item w-item-" style=""><a class="w-item-box"
										href="http://www.nuomi.com/deal/gg6iogwl.html" target="_blank"
										mon="element=1597102&amp;position=18"
										data-item-st="{&quot;s&quot;:&quot;1441edaf97ca1f994859837258703f91&quot;}"><div
												class="itemc">
												<img
													src="./index_files/1597102-nkiq86k5mm-20184028457193309.jpg"
													data-original="http://S1.nuomi.bdimg.com/upload/deal/2014/8/V_L/1597102-nkiq86k5mm-20184028457193309.jpg"
													alt="" style="display: inline;">
												<div class="bt">
													<h5 class="title">【680升级真跟瘦腿袜】680D美尔挺瘦腿袜！包邮！</h5>
													<ul class="ot clearfix">
														<li class="fl cur">¥<span class="cur-price">32.9</span></li>
														<li class="fl text">价值<span class="old-price">¥179</span></li>
														<li class="fr text"><span class="part_in">1971</span>人已参与</li>
													</ul>
												</div>
											</div>
											<div class="s-icon-box">
												<span class="s-xindan"></span>
											</div></a></li>
								</ul>
								<ul class="item-c clearfix" style="opacity: 0; display: none;">
									<li class="w-item w-item-" style=""><a class="w-item-box"
										href="http://www.nuomi.com/deal/uqp1aan3.html" target="_blank"
										mon="element=3974480&amp;position=19"
										data-item-st="{&quot;s&quot;:&quot;1441edaf97ca1f994859837258703f91&quot;}"><div
												class="itemc">
												<img
													src="./index_files/3974480-vtc78hqqqe-11084796117776732.jpg"
													data-original="http://S0.nuomi.bdimg.com/upload/mfs201506/deal/2015/6/V_L/3974480-vtc78hqqqe-11084796117776732.jpg"
													alt="" style="display: inline;">
												<div class="bt">
													<h5 class="title">【男女休闲运动鞋】男女休闲运动鞋！轻便柔软！4色任选，包邮！</h5>
													<ul class="ot clearfix">
														<li class="fl cur">¥<span class="cur-price">109</span></li>
														<li class="fl text">价值<span class="old-price">¥519</span></li>
														<li class="fr text"><span class="part_in">156</span>人已参与</li>
													</ul>
												</div>
											</div>
											<div class="s-icon-box">
												<span class="s-xindan"></span>
											</div></a></li>
									<li class="w-item w-item-" style=""><a class="w-item-box"
										href="http://www.nuomi.com/deal/flikheik.html" target="_blank"
										mon="element=660316&amp;position=20"
										data-item-st="{&quot;s&quot;:&quot;1441edaf97ca1f994859837258703f91&quot;}"><div
												class="itemc">
												<img src="./index_files/660316-1393484865901.jpg"
													data-original="http://S2.nuomi.bdimg.com/upload/deal/2014/2/V_L/660316-1393484865901.jpg"
													alt="" style="display: inline;">
												<div class="bt">
													<h5 class="title">【妮琪大规格巴厘纱围巾】大规格巴厘纱围巾丝巾！炫彩24色可选，3条包邮！</h5>
													<ul class="ot clearfix">
														<li class="fl cur">¥<span class="cur-price">9.9</span></li>
														<li class="fl text">价值<span class="old-price">¥139</span></li>
														<li class="fr text"><span class="part_in">14100</span>人已参与</li>
													</ul>
												</div>
											</div>
											<div class="s-icon-box"></div></a></li>
									<li class="w-item w-item-" style=""><a class="w-item-box"
										href="http://www.nuomi.com/deal/431artpr.html" target="_blank"
										mon="element=3429561&amp;position=21"
										data-item-st="{&quot;s&quot;:&quot;1441edaf97ca1f994859837258703f91&quot;}"><div
												class="itemc">
												<img
													src="./index_files/3429561-j8vc8zr9qp-39030221103199337.jpg"
													data-original="http://S1.nuomi.bdimg.com/upload/mfs201504/deal/2015/4/V_L/3429561-j8vc8zr9qp-39030221103199337.jpg"
													alt="" style="display: inline;">
												<div class="bt">
													<h5 class="title">【韩熙贞气垫BB霜】无暇矿物质气垫BB霜15g/个×2个！多效合一！2色可选，包邮！</h5>
													<ul class="ot clearfix">
														<li class="fl cur">¥<span class="cur-price">38</span></li>
														<li class="fl text">价值<span class="old-price">¥199</span></li>
														<li class="fr text"><span class="part_in">2217</span>人已参与</li>
													</ul>
												</div>
											</div>
											<div class="s-icon-box">
												<span class="s-xindan"></span>
											</div></a></li>
									<li class="w-item w-item-" style=""><a class="w-item-box"
										href="http://www.nuomi.com/deal/jigbmffw.html" target="_blank"
										mon="element=1549385&amp;position=22"
										data-item-st="{&quot;s&quot;:&quot;1441edaf97ca1f994859837258703f91&quot;}"><div
												class="itemc">
												<img
													src="./index_files/1549385-ia7cvm7krg-28312723691346065.jpg"
													data-original="http://S2.nuomi.bdimg.com/upload/deal/2014/8/V_L/1549385-ia7cvm7krg-28312723691346065.jpg"
													alt="" style="display: inline;">
												<div class="bt">
													<h5 class="title">【瑞士军刀时尚双肩包】时尚双肩包！旅行电脑包，大容量，大空间！2色任选，包邮！</h5>
													<ul class="ot clearfix">
														<li class="fl cur">¥<span class="cur-price">98</span></li>
														<li class="fl text">价值<span class="old-price">¥799</span></li>
														<li class="fr text"><span class="part_in">1652</span>人已参与</li>
													</ul>
												</div>
											</div>
											<div class="s-icon-box">
												<span class="s-xindan"></span>
											</div></a></li>
									<li class="w-item w-item-" style=""><a class="w-item-box"
										href="http://www.nuomi.com/deal/tfn1criy.html" target="_blank"
										mon="element=1833698&amp;position=23"
										data-item-st="{&quot;s&quot;:&quot;1441edaf97ca1f994859837258703f91&quot;}"><div
												class="itemc">
												<img
													src="./index_files/1833698-z7295qmag3-2402509734821358.jpg"
													data-original="http://S0.nuomi.bdimg.com/upload/deal/2014/9/V_L/1833698-z7295qmag3-2402509734821358.jpg"
													alt="" style="display: inline;">
												<div class="bt">
													<h5 class="title">【大号有盖整理箱储物盒】收纳箱大小号有盖储物盒2件套！多色可选，2套包邮！</h5>
													<ul class="ot clearfix">
														<li class="fl cur">¥<span class="cur-price">13.9</span></li>
														<li class="fl text">价值<span class="old-price">¥66</span></li>
														<li class="fr text"><span class="part_in">1602</span>人已参与</li>
													</ul>
												</div>
											</div>
											<div class="s-icon-box">
												<span class="s-xindan"></span>
											</div></a></li>
									<li class="w-item w-item-" style=""><a class="w-item-box"
										href="http://www.nuomi.com/deal/tebfxl84.html" target="_blank"
										mon="element=4007989&amp;position=24"
										data-item-st="{&quot;s&quot;:&quot;1441edaf97ca1f994859837258703f91&quot;}"><div
												class="itemc">
												<img
													src="./index_files/4007989-epdgfzvv4c-45086160006571394.jpg"
													data-original="http://S2.nuomi.bdimg.com/upload/mfs201506/deal/2015/6/V_L/4007989-epdgfzvv4c-45086160006571394.jpg"
													alt="" style="display: inline;">
												<div class="bt">
													<h5 class="title">【XM203五层架】XM203多功能五层架！落地置物架！结实耐用！包邮！</h5>
													<ul class="ot clearfix">
														<li class="fl cur">¥<span class="cur-price">139</span></li>
														<li class="fl text">价值<span class="old-price">¥799</span></li>
														<li class="fr text"><span class="part_in">156</span>人已参与</li>
													</ul>
												</div>
											</div>
											<div class="s-icon-box">
												<span class="s-xindan"></span>
											</div></a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="w-goods-item clearfix">
				<div class="goods goods-"
					mon="area=newItemList&amp;element_type=item&amp;s=1441edaf97ca1f994859837258703f91"
					bn_box="newItemList&amp;position"
					alog-alias="bainuo-wanggou-new-deal"
					alog-group="bainuo-wanggou-new-deal">
					<div class="w-index-title">
						<div class="">
							<h2>
								<span class="h2"><span class="index">F</span><a
									href="javascript:void(0);" title="" class="t">今日新单</a></span><span
									class="good" alog-alias="bainuo-wanggou-index-title-good"
									alog-group="bainuo-wanggou-index-title-good"><a
									href="javascript:void(0);" title="" class="hover">热销</a><a
									href="javascript:void(0);" title="">新品</a><a
									href="javascript:void(0);" title="" class="no">品牌特卖</a></span>
							</h2>
							<ul class="num" alog-alias="bainuo-wanggou-index-title-num"
								alog-group="bainuo-wanggou-index-title-num">
								<li class="">1</li>
								<li class="hover">2</li>
								<li class="">3</li>
								<li class="">4</li>
							</ul>
						</div>
					</div>
					<div class="w-good-items">
						<div class="items-c items-">
							<div class="box j-item-c">
								<ul class="item-c clearfix" style="opacity: 0; display: none;">
									<li class="w-item w-item-" style=""><a class="w-item-box"
										href="http://www.nuomi.com/deal/jior6qhr.html" target="_blank"
										mon="element=3926949&amp;position=1"
										data-item-st="{&quot;s&quot;:&quot;1441edaf97ca1f994859837258703f91&quot;}"><div
												class="itemc">
												<img src="./index_files/776314-1397019674469.jpg"
													data-original="http://S2.nuomi.bdimg.com/upload/deal/2014/4/V_G/776314-1397019674469.jpg"
													alt="" style="display: inline;">
												<div class="bt">
													<h5 class="title">【普视康眼镜配镜套餐】配镜套餐！专业技师，先进设备，年轻色彩、时尚大气，闪动心灵之窗，尽显无限魅力！</h5>
													<ul class="ot clearfix">
														<li class="fl cur">¥<span class="cur-price">98</span></li>
														<li class="fl text">价值<span class="old-price">¥488</span></li>
														<li class="fr text"><span class="part_in">0</span>人已参与</li>
													</ul>
												</div>
											</div>
											<div class="s-icon-box"></div></a></li>
									<li class="w-item w-item-" style=""><a class="w-item-box"
										href="http://www.nuomi.com/deal/qtv77sj7.html" target="_blank"
										mon="element=4015924&amp;position=2"
										data-item-st="{&quot;s&quot;:&quot;1441edaf97ca1f994859837258703f91&quot;}"><div
												class="itemc">
												<img
													src="./index_files/4015924-eps4f6jyz9-50184593876096505.jpg"
													data-original="http://S0.nuomi.bdimg.com/upload/mfs201508/deal/2015/6/V_L/4015924-eps4f6jyz9-50184593876096505.jpg"
													alt="" style="display: inline;">
												<div class="bt">
													<h5 class="title">【石榴】新鲜石榴500g/份！鲜甜甘蜜！5份包邮！</h5>
													<ul class="ot clearfix">
														<li class="fl cur">¥<span class="cur-price">6.9</span></li>
														<li class="fl text">价值<span class="old-price">¥15</span></li>
														<li class="fr text"><span class="part_in">3711</span>人已参与</li>
													</ul>
												</div>
											</div>
											<div class="s-icon-box"></div></a></li>
									<li class="w-item w-item-" style=""><a class="w-item-box"
										href="http://www.nuomi.com/deal/8zdhdncf.html" target="_blank"
										mon="element=4027628&amp;position=3"
										data-item-st="{&quot;s&quot;:&quot;1441edaf97ca1f994859837258703f91&quot;}"><div
												class="itemc">
												<img
													src="./index_files/4027628-bdja58prih-12029916380919674.jpg"
													data-original="http://S1.nuomi.bdimg.com/upload/mfs201506/deal/2015/6/V_L/4027628-bdja58prih-12029916380919674.jpg"
													alt="" style="display: inline;">
												<div class="bt">
													<h5 class="title">【杨桑自然双头眉笔】自然双头眉笔！持久不脱妆！2色可选，包邮！</h5>
													<ul class="ot clearfix">
														<li class="fl cur">¥<span class="cur-price">17.9</span></li>
														<li class="fl text">价值<span class="old-price">¥59</span></li>
														<li class="fr text"><span class="part_in">190</span>人已参与</li>
													</ul>
												</div>
											</div>
											<div class="s-icon-box"></div></a></li>
									<li class="w-item w-item-" style=""><a class="w-item-box"
										href="http://www.nuomi.com/deal/qabrcuky.html" target="_blank"
										mon="element=4028827&amp;position=4"
										data-item-st="{&quot;s&quot;:&quot;1441edaf97ca1f994859837258703f91&quot;}"><div
												class="itemc">
												<img
													src="./index_files/4028827-m2c9248pc4-45676204321637354.jpg"
													data-original="http://S0.nuomi.bdimg.com/upload/mfs201507/deal/2015/6/V_L/4028827-m2c9248pc4-45676204321637354.jpg"
													alt="" style="display: inline;">
												<div class="bt">
													<h5 class="title">【水果时光罐头】黄桃罐头410g/罐×6罐！圆润Q滑，软中带甜！免运费！</h5>
													<ul class="ot clearfix">
														<li class="fl cur">¥<span class="cur-price">30</span></li>
														<li class="fl text">价值<span class="old-price">¥68</span></li>
														<li class="fr text"><span class="part_in">17607</span>人已参与</li>
													</ul>
												</div>
											</div>
											<div class="s-icon-box"></div></a></li>
									<li class="w-item w-item-" style=""><a class="w-item-box"
										href="http://www.nuomi.com/deal/wzusdjnx.html" target="_blank"
										mon="element=4030226&amp;position=5"
										data-item-st="{&quot;s&quot;:&quot;1441edaf97ca1f994859837258703f91&quot;}"><div
												class="itemc">
												<img
													src="./index_files/4030226-me3u23uyb5-44992932086760541.jpg"
													data-original="http://S1.nuomi.bdimg.com/upload/mfs201506/deal/2015/6/V_L/4030226-me3u23uyb5-44992932086760541.jpg"
													alt="" style="display: inline;">
												<div class="bt">
													<h5 class="title">【九阳多功能电烤箱】多功能电烤箱！30L黄金容量，多功能！包邮！</h5>
													<ul class="ot clearfix">
														<li class="fl cur">¥<span class="cur-price">195</span></li>
														<li class="fl text">价值<span class="old-price">¥599</span></li>
														<li class="fr text"><span class="part_in">110</span>人已参与</li>
													</ul>
												</div>
											</div>
											<div class="s-icon-box"></div></a></li>
									<li class="w-item w-item-" style=""><a class="w-item-box"
										href="http://www.nuomi.com/deal/ptbob9av.html" target="_blank"
										mon="element=4048526&amp;position=6"
										data-item-st="{&quot;s&quot;:&quot;1441edaf97ca1f994859837258703f91&quot;}"><div
												class="itemc">
												<img
													src="./index_files/4048526-zeuhaxqb3y-27539011277825502.jpg"
													data-original="http://S1.nuomi.bdimg.com/upload/mfs201506/deal/2015/6/V_L/4048526-zeuhaxqb3y-27539011277825502.jpg"
													alt="" style="display: inline;">
												<div class="bt">
													<h5 class="title">【恒源祥清雅凉席三件套】清雅凉席3件套！简约枕套，精细编织！包邮！</h5>
													<ul class="ot clearfix">
														<li class="fl cur">¥<span class="cur-price">89</span></li>
														<li class="fl text">价值<span class="old-price">¥650</span></li>
														<li class="fr text"><span class="part_in">589</span>人已参与</li>
													</ul>
												</div>
											</div>
											<div class="s-icon-box"></div></a></li>
								</ul>
								<ul class="item-c clearfix j-sliderbar-hover"
									style="opacity: 1; display: block;">
									<li class="w-item w-item-" style=""><a class="w-item-box"
										href="http://www.nuomi.com/deal/vlrqyqdf.html" target="_blank"
										mon="element=4050128&amp;position=7"
										data-item-st="{&quot;s&quot;:&quot;1441edaf97ca1f994859837258703f91&quot;}"><div
												class="itemc">
												<img
													src="./index_files/4050128-cw7gyquvzw-45083583183184708.jpg"
													data-original="http://S0.nuomi.bdimg.com/upload/mfs201506/deal/2015/6/V_L/4050128-cw7gyquvzw-45083583183184708.jpg"
													alt="" style="display: inline;">
												<div class="bt">
													<h5 class="title">【阿波罗背带腰凳】多功能双肩抱婴腰凳！四季通用！包邮！</h5>
													<ul class="ot clearfix">
														<li class="fl cur">¥<span class="cur-price">109</span></li>
														<li class="fl text">价值<span class="old-price">¥560</span></li>
														<li class="fr text"><span class="part_in">80</span>人已参与</li>
													</ul>
												</div>
											</div>
											<div class="s-icon-box"></div></a></li>
									<li class="w-item w-item-" style=""><a class="w-item-box"
										href="http://www.nuomi.com/deal/5jmxevhr.html" target="_blank"
										mon="element=4018538&amp;position=8"
										data-item-st="{&quot;s&quot;:&quot;1441edaf97ca1f994859837258703f91&quot;}"><div
												class="itemc">
												<img
													src="./index_files/4018538-scb4v66wz2-51900529741076444.jpg"
													data-original="http://S2.nuomi.bdimg.com/upload/mfs201509/deal/2015/6/V_L/4018538-scb4v66wz2-51900529741076444.jpg"
													alt="" style="display: inline;">
												<div class="bt">
													<h5 class="title">【山东沾化冬枣1斤装】山东沾化冬枣500g/份！5份包邮！</h5>
													<ul class="ot clearfix">
														<li class="fl cur">¥<span class="cur-price">6.5</span></li>
														<li class="fl text">价值<span class="old-price">¥28</span></li>
														<li class="fr text"><span class="part_in">16463</span>人已参与</li>
													</ul>
												</div>
											</div>
											<div class="s-icon-box"></div></a></li>
									<li class="w-item w-item-" style=""><a class="w-item-box"
										href="http://www.nuomi.com/deal/wfhd9xrv.html" target="_blank"
										mon="element=4028485&amp;position=9"
										data-item-st="{&quot;s&quot;:&quot;1441edaf97ca1f994859837258703f91&quot;}"><div
												class="itemc">
												<img
													src="./index_files/4028485-kzheu86tja-45323350308951625.jpg"
													data-original="http://S0.nuomi.bdimg.com/upload/mfs201507/deal/2015/6/V_L/4028485-kzheu86tja-45323350308951625.jpg"
													alt="" style="display: inline;">
												<div class="bt">
													<h5 class="title">【环球帆布鞋6638】低帮帆布女鞋！涂鸦平底单鞋！2款可选，包邮！</h5>
													<ul class="ot clearfix">
														<li class="fl cur">¥<span class="cur-price">49</span></li>
														<li class="fl text">价值<span class="old-price">¥129</span></li>
														<li class="fr text"><span class="part_in">232</span>人已参与</li>
													</ul>
												</div>
											</div>
											<div class="s-icon-box"></div></a></li>
									<li class="w-item w-item-" style=""><a class="w-item-box"
										href="http://www.nuomi.com/deal/v67inta6.html" target="_blank"
										mon="element=4007954&amp;position=10"
										data-item-st="{&quot;s&quot;:&quot;1441edaf97ca1f994859837258703f91&quot;}"><div
												class="itemc">
												<img
													src="./index_files/4007954-t7y3gpsi55-45314878147750809.jpg"
													data-original="http://S0.nuomi.bdimg.com/upload/mfs201507/deal/2015/6/V_L/4007954-t7y3gpsi55-45314878147750809.jpg"
													alt="" style="display: inline;">
												<div class="bt">
													<h5 class="title">【XM112晾晒架】可折叠晾晒架！阳台晾晒，方便收纳！2色可选，包邮！</h5>
													<ul class="ot clearfix">
														<li class="fl cur">¥<span class="cur-price">99</span></li>
														<li class="fl text">价值<span class="old-price">¥569</span></li>
														<li class="fr text"><span class="part_in">75</span>人已参与</li>
													</ul>
												</div>
											</div>
											<div class="s-icon-box"></div></a></li>
									<li class="w-item w-item-" style=""><a class="w-item-box"
										href="http://www.nuomi.com/deal/izskfwmz.html" target="_blank"
										mon="element=4008194&amp;position=11"
										data-item-st="{&quot;s&quot;:&quot;1441edaf97ca1f994859837258703f91&quot;}"><div
												class="itemc">
												<img
													src="./index_files/4008194-ux7jphhv7d-45323385961768011.jpg"
													data-original="http://S0.nuomi.bdimg.com/upload/mfs201507/deal/2015/6/V_L/4008194-ux7jphhv7d-45323385961768011.jpg"
													alt="" style="display: inline;">
												<div class="bt">
													<h5 class="title">【XM412三层推车】可移动加宽三层推车！居家收纳必备！2色可选，包邮！</h5>
													<ul class="ot clearfix">
														<li class="fl cur">¥<span class="cur-price">99</span></li>
														<li class="fl text">价值<span class="old-price">¥499</span></li>
														<li class="fr text"><span class="part_in">61</span>人已参与</li>
													</ul>
												</div>
											</div>
											<div class="s-icon-box"></div></a></li>
									<li class="w-item w-item-" style=""><a class="w-item-box"
										href="http://www.nuomi.com/deal/sivk3qov.html" target="_blank"
										mon="element=4007931&amp;position=12"
										data-item-st="{&quot;s&quot;:&quot;1441edaf97ca1f994859837258703f91&quot;}"><div
												class="itemc">
												<img
													src="./index_files/4007931-auq3nvwxjf-12273243289150417.jpg"
													data-original="http://S0.nuomi.bdimg.com/upload/mfs201507/deal/2015/6/V_L/4007931-auq3nvwxjf-12273243289150417.jpg"
													alt="" style="display: inline;">
												<div class="bt">
													<h5 class="title">【XM100衣帽架】XM100实木衣帽架！材质优良，稳固耐用！2色任选，包邮！</h5>
													<ul class="ot clearfix">
														<li class="fl cur">¥<span class="cur-price">99</span></li>
														<li class="fl text">价值<span class="old-price">¥569</span></li>
														<li class="fr text"><span class="part_in">82</span>人已参与</li>
													</ul>
												</div>
											</div>
											<div class="s-icon-box"></div></a></li>
								</ul>
								<ul class="item-c clearfix" style="opacity: 0; display: none;">
									<li class="w-item w-item-" style=""><a class="w-item-box"
										href="http://www.nuomi.com/deal/tebfxl84.html" target="_blank"
										mon="element=4007989&amp;position=13"
										data-item-st="{&quot;s&quot;:&quot;1441edaf97ca1f994859837258703f91&quot;}"><div
												class="itemc">
												<img
													src="./index_files/4007989-epdgfzvv4c-45086160006571394.jpg"
													data-original="http://S2.nuomi.bdimg.com/upload/mfs201506/deal/2015/6/V_L/4007989-epdgfzvv4c-45086160006571394.jpg"
													alt="" style="display: inline;">
												<div class="bt">
													<h5 class="title">【XM203五层架】XM203多功能五层架！落地置物架！结实耐用！包邮！</h5>
													<ul class="ot clearfix">
														<li class="fl cur">¥<span class="cur-price">139</span></li>
														<li class="fl text">价值<span class="old-price">¥799</span></li>
														<li class="fr text"><span class="part_in">156</span>人已参与</li>
													</ul>
												</div>
											</div>
											<div class="s-icon-box"></div></a></li>
									<li class="w-item w-item-" style=""><a class="w-item-box"
										href="http://www.nuomi.com/deal/s9giunx3.html" target="_blank"
										mon="element=4017852&amp;position=14"
										data-item-st="{&quot;s&quot;:&quot;1441edaf97ca1f994859837258703f91&quot;}"><div
												class="itemc">
												<img
													src="./index_files/4017852-t3q3irgup9-44722416515041674.jpg"
													data-original="http://S2.nuomi.bdimg.com/upload/mfs201506/deal/2015/6/V_L/4017852-t3q3irgup9-44722416515041674.jpg"
													alt="" style="display: inline;">
												<div class="bt">
													<h5 class="title">【旺旺雪饼仙贝任选】仙贝/雪饼540g/袋！2款任选，2袋包邮！</h5>
													<ul class="ot clearfix">
														<li class="fl cur">¥<span class="cur-price">19.9</span></li>
														<li class="fl text">价值<span class="old-price">¥29.9</span></li>
														<li class="fr text"><span class="part_in">711</span>人已参与</li>
													</ul>
												</div>
											</div>
											<div class="s-icon-box"></div></a></li>
									<li class="w-item w-item-" style=""><a class="w-item-box"
										href="http://www.nuomi.com/deal/4unhnyfp.html" target="_blank"
										mon="element=4011302&amp;position=15"
										data-item-st="{&quot;s&quot;:&quot;1441edaf97ca1f994859837258703f91&quot;}"><div
												class="itemc">
												<img
													src="./index_files/4011302-z863dbst98-27206664810904707.jpg"
													data-original="http://S0.nuomi.bdimg.com/upload/mfs201506/deal/2015/6/V_L/4011302-z863dbst98-27206664810904707.jpg"
													alt="" style="display: inline;">
												<div class="bt">
													<h5 class="title">【御泥坊玫瑰滋养洁面乳】玫瑰滋养洁面乳100ml/支！温和清洁，补水锁水！包邮！</h5>
													<ul class="ot clearfix">
														<li class="fl cur">¥<span class="cur-price">19.9</span></li>
														<li class="fl text">价值<span class="old-price">¥29.9</span></li>
														<li class="fr text"><span class="part_in">374</span>人已参与</li>
													</ul>
												</div>
											</div>
											<div class="s-icon-box"></div></a></li>
									<li class="w-item w-item-" style=""><a class="w-item-box"
										href="http://www.nuomi.com/deal/0qwgu7do.html" target="_blank"
										mon="element=4018761&amp;position=16"
										data-item-st="{&quot;s&quot;:&quot;1441edaf97ca1f994859837258703f91&quot;}"><div
												class="itemc">
												<img
													src="./index_files/4018761-q95wmn97sn-51642806185557095.jpg"
													data-original="http://S1.nuomi.bdimg.com/upload/mfs201509/deal/2015/6/V_L/4018761-q95wmn97sn-51642806185557095.jpg"
													alt="" style="display: inline;">
												<div class="bt">
													<h5 class="title">【陕西周至徐香猕猴桃】猕猴桃2500g/份！清香鲜美，细腻多汁！包邮！</h5>
													<ul class="ot clearfix">
														<li class="fl cur">¥<span class="cur-price">29.9</span></li>
														<li class="fl text">价值<span class="old-price">¥78</span></li>
														<li class="fr text"><span class="part_in">6359</span>人已参与</li>
													</ul>
												</div>
											</div>
											<div class="s-icon-box"></div></a></li>
									<li class="w-item w-item-" style=""><a class="w-item-box"
										href="http://www.nuomi.com/deal/re5vmnp8.html" target="_blank"
										mon="element=3928666&amp;position=17"
										data-item-st="{&quot;s&quot;:&quot;1441edaf97ca1f994859837258703f91&quot;}"><div
												class="itemc">
												<img
													src="./index_files/3928666-3thmq6qwcm-16862411669548876.jpg"
													data-original="http://S0.nuomi.bdimg.com/upload/mfs201508/deal/2015/6/V_L/3928666-3thmq6qwcm-16862411669548876.jpg"
													alt="" style="display: inline;">
												<div class="bt">
													<h5 class="title">【绿心猕猴桃100】陕西周至猕猴桃100-120g/个！30个包邮！</h5>
													<ul class="ot clearfix">
														<li class="fl cur">¥<span class="cur-price">1.6</span></li>
														<li class="fl text">价值<span class="old-price">¥6.9</span></li>
														<li class="fr text"><span class="part_in">142541</span>人已参与</li>
													</ul>
												</div>
											</div>
											<div class="s-icon-box"></div></a></li>
									<li class="w-item w-item-" style=""><a class="w-item-box"
										href="http://www.nuomi.com/deal/kgkgqhvd.html" target="_blank"
										mon="element=3952342&amp;position=18"
										data-item-st="{&quot;s&quot;:&quot;1441edaf97ca1f994859837258703f91&quot;}"><div
												class="itemc">
												<img
													src="./index_files/3952342-z4rz8u2v4c-48594133623572373.jpg"
													data-original="http://S2.nuomi.bdimg.com/upload/mfs201508/deal/2015/6/V_L/3952342-z4rz8u2v4c-48594133623572373.jpg"
													alt="" style="display: inline;">
												<div class="bt">
													<h5 class="title">【四川红心猕猴桃大】红心猕猴桃约120g/个！20个包邮！</h5>
													<ul class="ot clearfix">
														<li class="fl cur">¥<span class="cur-price">3.9</span></li>
														<li class="fl text">价值<span class="old-price">¥10</span></li>
														<li class="fr text"><span class="part_in">14056</span>人已参与</li>
													</ul>
												</div>
											</div>
											<div class="s-icon-box"></div></a></li>
								</ul>
								<ul class="item-c clearfix" style="opacity: 0; display: none;">
									<li class="w-item w-item-" style=""><a class="w-item-box"
										href="http://www.nuomi.com/deal/gtk2kydd.html" target="_blank"
										mon="element=3952389&amp;position=19"
										data-item-st="{&quot;s&quot;:&quot;1441edaf97ca1f994859837258703f91&quot;}"><div
												class="itemc">
												<img
													src="./index_files/3952389-8znrm5ttcp-48602902767756382.jpg"
													data-original="http://S2.nuomi.bdimg.com/upload/mfs201508/deal/2015/6/V_L/3952389-8znrm5ttcp-48602902767756382.jpg"
													alt="" style="display: inline;">
												<div class="bt">
													<h5 class="title">【四川红心猕猴桃中】红心猕猴桃约80-100g/个！20个包邮！</h5>
													<ul class="ot clearfix">
														<li class="fl cur">¥<span class="cur-price">2.9</span></li>
														<li class="fl text">价值<span class="old-price">¥8</span></li>
														<li class="fr text"><span class="part_in">17194</span>人已参与</li>
													</ul>
												</div>
											</div>
											<div class="s-icon-box"></div></a></li>
									<li class="w-item w-item-" style=""><a class="w-item-box"
										href="http://www.nuomi.com/deal/8wo5n1cg.html" target="_blank"
										mon="element=4002026&amp;position=20"
										data-item-st="{&quot;s&quot;:&quot;1441edaf97ca1f994859837258703f91&quot;}"><div
												class="itemc">
												<img
													src="./index_files/4002026-wqsvtb7skz-27019481766270329.jpg"
													data-original="http://S0.nuomi.bdimg.com/upload/mfs201506/deal/2015/6/V_L/4002026-wqsvtb7skz-27019481766270329.jpg"
													alt="" style="display: inline;">
												<div class="bt">
													<h5 class="title">【哈密瓜】哈密瓜约4.5-5.5斤/个！包邮！</h5>
													<ul class="ot clearfix">
														<li class="fl cur">¥<span class="cur-price">25.9</span></li>
														<li class="fl text">价值<span class="old-price">¥60</span></li>
														<li class="fr text"><span class="part_in">424</span>人已参与</li>
													</ul>
												</div>
											</div>
											<div class="s-icon-box"></div></a></li>
									<li class="w-item w-item-" style=""><a class="w-item-box"
										href="http://www.nuomi.com/deal/uqp1aan3.html" target="_blank"
										mon="element=3974480&amp;position=21"
										data-item-st="{&quot;s&quot;:&quot;1441edaf97ca1f994859837258703f91&quot;}"><div
												class="itemc">
												<img
													src="./index_files/3974480-vtc78hqqqe-11084796117776732.jpg"
													data-original="http://S0.nuomi.bdimg.com/upload/mfs201506/deal/2015/6/V_L/3974480-vtc78hqqqe-11084796117776732.jpg"
													alt="" style="display: inline;">
												<div class="bt">
													<h5 class="title">【男女休闲运动鞋】男女休闲运动鞋！轻便柔软！4色任选，包邮！</h5>
													<ul class="ot clearfix">
														<li class="fl cur">¥<span class="cur-price">109</span></li>
														<li class="fl text">价值<span class="old-price">¥519</span></li>
														<li class="fr text"><span class="part_in">156</span>人已参与</li>
													</ul>
												</div>
											</div>
											<div class="s-icon-box"></div></a></li>
									<li class="w-item w-item-" style=""><a class="w-item-box"
										href="http://www.nuomi.com/deal/ntrblgzh.html" target="_blank"
										mon="element=3982240&amp;position=22"
										data-item-st="{&quot;s&quot;:&quot;1441edaf97ca1f994859837258703f91&quot;}"><div
												class="itemc">
												<img
													src="./index_files/3982240-u4wz99gzk4-44133046610103884.jpg"
													data-original="http://S0.nuomi.bdimg.com/upload/mfs201506/deal/2015/6/V_L/3982240-u4wz99gzk4-44133046610103884.jpg"
													alt="" style="display: inline;">
												<div class="bt">
													<h5 class="title">【发绳100件套装】发绳100件套装！超弹力，不易拉断！包邮！</h5>
													<ul class="ot clearfix">
														<li class="fl cur">¥<span class="cur-price">18.8</span></li>
														<li class="fl text">价值<span class="old-price">¥88</span></li>
														<li class="fr text"><span class="part_in">453</span>人已参与</li>
													</ul>
												</div>
											</div>
											<div class="s-icon-box"></div></a></li>
									<li class="w-item w-item-" style=""><a class="w-item-box"
										href="http://www.nuomi.com/deal/p8byyn32.html" target="_blank"
										mon="element=3520356&amp;position=23"
										data-item-st="{&quot;s&quot;:&quot;1441edaf97ca1f994859837258703f91&quot;}"><div
												class="itemc">
												<img
													src="./index_files/3520356-izengc9h6q-39721365673426864.jpg"
													data-original="http://S1.nuomi.bdimg.com/upload/mfs201504/deal/2015/4/V_L/3520356-izengc9h6q-39721365673426864.jpg"
													alt="" style="display: inline;">
												<div class="bt">
													<h5 class="title">【云南白药牙膏3支装】牙膏3支装！防蛀固齿，美白牙齿，去除口腔异味！包邮！</h5>
													<ul class="ot clearfix">
														<li class="fl cur">¥<span class="cur-price">75</span></li>
														<li class="fl text">价值<span class="old-price">¥102.2</span></li>
														<li class="fr text"><span class="part_in">375</span>人已参与</li>
													</ul>
												</div>
											</div>
											<div class="s-icon-box"></div></a></li>
									<li class="w-item w-item-" style=""><a class="w-item-box"
										href="http://www.nuomi.com/deal/fgwzgxxe.html" target="_blank"
										mon="element=3900858&amp;position=24"
										data-item-st="{&quot;s&quot;:&quot;1441edaf97ca1f994859837258703f91&quot;}"><div
												class="itemc">
												<img
													src="./index_files/3900858-xqs6n92e9k-45692066634069709.jpg"
													data-original="http://S2.nuomi.bdimg.com/upload/mfs201507/deal/2015/6/V_L/3900858-xqs6n92e9k-45692066634069709.jpg"
													alt="" style="display: inline;">
												<div class="bt">
													<h5 class="title">【攀枝花凯特芒果】四川攀枝花凯特芒果500g/份，5份包邮！</h5>
													<ul class="ot clearfix">
														<li class="fl cur">¥<span class="cur-price">7.9</span></li>
														<li class="fl text">价值<span class="old-price">¥20</span></li>
														<li class="fr text"><span class="part_in">17331</span>人已参与</li>
													</ul>
												</div>
											</div>
											<div class="s-icon-box"></div></a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="w-goods-item clearfix"></div>
			<div class="w-goods-item clearfix"></div>
			<div class="w-goods-item clearfix">
				<div class="side-img-icon fr">
					<div class="w-side-img-category clearfix"
						mon="area=adsFloor5&amp;element_type=nav"
						alog-alias="bainuo-wanggou-side-img-category"
						alog-group="bainuo-wanggou-side-img-category"
						bn_box="ads_floor5&amp;position">
						<a class="item-img small-item" target="_blank"
							href="http://w.nuomi.com/397-840/0-f-gn" title=""
							mon="element=adver_448_s1&amp;position=adver_1"> <img
							data-original="http://a.hiphotos.baidu.com/lbs/pic/item/0df3d7ca7bcb0a467a00065e6863f6246b60afb3.jpg"
							alt=""
							src="./index_files/0df3d7ca7bcb0a467a00065e6863f6246b60afb3.jpg"
							style="display: inline;">
						</a> <a class="item-img small-item" target="_blank"
							href="http://w.nuomi.com/397-841/0-f-gn" title=""
							mon="element=adver_448_s2&amp;position=adver_2"> <img
							data-original="http://g.hiphotos.baidu.com/lbs/pic/item/adaf2edda3cc7cd933eeb9be3a01213fb90e9192.jpg"
							alt=""
							src="./index_files/adaf2edda3cc7cd933eeb9be3a01213fb90e9192.jpg"
							style="display: inline;">
						</a> <a class="item-img small-item" target="_blank"
							href="http://w.nuomi.com/397-842/0-f-gn" title=""
							mon="element=adver_448_s3&amp;position=adver_3"> <img
							data-original="http://b.hiphotos.baidu.com/lbs/pic/item/91ef76c6a7efce1b4c4344adac51f3deb48f6569.jpg"
							alt=""
							src="./index_files/91ef76c6a7efce1b4c4344adac51f3deb48f6569.jpg"
							style="display: inline;">
						</a> <a class="item-img small-item" target="_blank"
							href="http://activity.nuomi.com/mis/activity/common/short_url/gwybzc"
							title="羽博" mon="element=adver_448_s4&amp;position=adver_4"> <img
							data-original="http://g.hiphotos.baidu.com/lbs/pic/item/0ff41bd5ad6eddc417240d6f3cdbb6fd53663366.jpg"
							alt="羽博"
							src="./index_files/0ff41bd5ad6eddc417240d6f3cdbb6fd53663366.jpg"
							style="display: inline;">
						</a> <a class="item-img small-item" target="_blank"
							href="http://activity.nuomi.com/mis/activity/common/short_url/gwsbezc"
							title="苏泊尔" mon="element=adver_448_s5&amp;position=adver_5">
							<img
							data-original="http://f.hiphotos.baidu.com/lbs/pic/item/9358d109b3de9c82c42b411b6981800a18d843d3.jpg"
							alt="苏泊尔"
							src="./index_files/9358d109b3de9c82c42b411b6981800a18d843d3.jpg"
							style="display: inline;">
						</a> <a class="item-img small-item" target="_blank"
							href="http://www.nuomi.com/search?k=%E7%BE%8E%E7%9A%84&rid=5908026948ec2e457ae8c8515c02b5cf"
							title="美的" mon="element=adver_448_s6&amp;position=adver_6"> <img
							data-original="http://d.hiphotos.baidu.com/lbs/pic/item/95eef01f3a292df53b802072bf315c6034a87312.jpg"
							alt="美的"
							src="./index_files/95eef01f3a292df53b802072bf315c6034a87312.jpg"
							style="display: inline;">
						</a> <a class="item-img small-item" target="_blank"
							href="http://activity.nuomi.com/mis/activity/common/short_url/gwflp"
							title="飞利浦" mon="element=adver_448_s7&amp;position=adver_7">
							<img
							data-original="http://g.hiphotos.baidu.com/lbs/pic/item/2cf5e0fe9925bc3182ee8dff5ddf8db1cb137022.jpg"
							alt="飞利浦"
							src="./index_files/2cf5e0fe9925bc3182ee8dff5ddf8db1cb137022.jpg"
							style="display: inline;">
						</a> <a class="item-img small-item" target="_blank"
							href="http://activity.nuomi.com/mis/activity/common/short_url/gwjyzc"
							title="九阳" mon="element=adver_448_s8&amp;position=adver_8"> <img
							data-original="http://b.hiphotos.baidu.com/lbs/pic/item/b21c8701a18b87d67e872778040828381e30fd94.jpg"
							alt="九阳"
							src="./index_files/b21c8701a18b87d67e872778040828381e30fd94.jpg"
							style="display: inline;">
						</a> <a class="item-img small-item" target="_blank"
							href="http://bj.nuomi.com/search?k=%E9%A3%9E%E7%A7%91+%E7%BD%91%E8%B4%AD"
							title="飞科" mon="element=adver_448_s9&amp;position=adver_9"> <img
							data-original="http://b.hiphotos.baidu.com/lbs/pic/item/03087bf40ad162d99b04ee7b12dfa9ec8b13cdeb.jpg"
							alt="飞科"
							src="./index_files/03087bf40ad162d99b04ee7b12dfa9ec8b13cdeb.jpg"
							style="display: inline;">
						</a> <a class="item-img large-item" target="_blank"
							href="http://w.nuomi.com/397-840/0-f-gn" title="手机数码"
							mon="element=adver_448_l1&amp;position=adver_10"> <img
							data-original="http://f.hiphotos.baidu.com/lbs/pic/item/dbb44aed2e738bd4e6db3e56a28b87d6267ff9db.jpg"
							alt="手机数码"
							src="./index_files/dbb44aed2e738bd4e6db3e56a28b87d6267ff9db.jpg"
							style="display: inline;">
						</a> <a class="item-img large-item" target="_blank"
							href="http://w.nuomi.com/397-842/0-f-gn" title="个人护理"
							mon="element=adver_448_l2&amp;position=adver_11"> <img
							data-original="http://c.hiphotos.baidu.com/lbs/pic/item/c2fdfc039245d688c6f13ec3a7c27d1ed31b24e1.jpg"
							alt="个人护理"
							src="./index_files/c2fdfc039245d688c6f13ec3a7c27d1ed31b24e1.jpg"
							style="display: inline;">
						</a> <a class="item-img large-item" target="_blank"
							href="http://w.nuomi.com/397-841/0-f-gn" title="必备家电"
							mon="element=adver_448_l3&amp;position=adver_12"> <img
							data-original="http://a.hiphotos.baidu.com/lbs/pic/item/8c1001e93901213f7824c1bb57e736d12f2e9546.jpg"
							alt="必备家电"
							src="./index_files/8c1001e93901213f7824c1bb57e736d12f2e9546.jpg"
							style="display: inline;">
						</a>
					</div>
				</div>
				<div class="goods goods-f"
					mon="area=itemList5&amp;element_type=item&amp;s=1441edaf97ca1f994859837258703f91"
					bn_box="itemList5&amp;position" alog-alias="bainuo-wanggou-digital"
					alog-group="bainuo-wanggou-digital">
					<div class="w-index-title">
						<div class="f f5">
							<h2>
								<span class="h2"><span class="index">5F</span><a
									href="javascript:void(0);" title="" class="t">数码家电</a></span><span
									class="good" alog-alias="bainuo-wanggou-index-title-good"
									alog-group="bainuo-wanggou-index-title-good"><a
									href="javascript:void(0);" title="" class="hover">热销</a><a
									href="javascript:void(0);" title="">新品</a><a
									href="javascript:void(0);" title="" class="no">品牌特卖</a></span>
							</h2>
						</div>
					</div>
					<div class="w-good-items">
						<div class="items-c items-f">
							<div class="box j-item-c" j-data="floor">
								<ul class="item-c clearfix j-sliderbar-hover"
									style="opacity: 1;">
									<li class="w-item w-item-f" style=""><a class="w-item-box"
										href="http://www.nuomi.com/deal/wy58lr8h.html" target="_blank"
										mon="element=1404259&amp;position=1"
										data-item-st="{&quot;s&quot;:&quot;1441edaf97ca1f994859837258703f91&quot;}"><div
												class="itemc">
												<img
													src="./index_files/1404259-5z4neuzzdy-17873060767471832.jpg"
													data-original="http://S2.nuomi.bdimg.com/upload/mfs201503/deal/2014/7/V_L/1404259-5z4neuzzdy-17873060767471832.jpg"
													alt="" style="display: inline;">
												<div class="bt">
													<h5 class="title">【九阳全自动豆浆机】多功能全自动豆浆机！不锈钢杯体，全国联保！包邮！</h5>
													<ul class="ot clearfix">
														<li class="fl cur">¥<span class="cur-price">189</span></li>
														<li class="fl text">价值<span class="old-price">¥399</span></li>
														<li class="fr text"><span class="part_in">1674</span>人已参与</li>
													</ul>
												</div>
											</div>
											<div class="s-icon-box"></div></a></li>
									<li class="w-item w-item-f" style=""><a class="w-item-box"
										href="http://www.nuomi.com/deal/gq5zgnrd.html" target="_blank"
										mon="element=2956292&amp;position=2"
										data-item-st="{&quot;s&quot;:&quot;1441edaf97ca1f994859837258703f91&quot;}"><div
												class="itemc">
												<img
													src="./index_files/2956292-jm6nqterbr-18373388322760085.jpg"
													data-original="http://S0.nuomi.bdimg.com/upload/mfs201503/deal/2015/1/V_L/2956292-jm6nqterbr-18373388322760085.jpg"
													alt="" style="display: inline;">
												<div class="bt">
													<h5 class="title">【爱伊贝三层电饭盒】容量1.2升3层真空电饭盒！蒸、煮、热均可，经济实用！包邮！</h5>
													<ul class="ot clearfix">
														<li class="fl cur">¥<span class="cur-price">49</span></li>
														<li class="fl text">价值<span class="old-price">¥138</span></li>
														<li class="fr text"><span class="part_in">708</span>人已参与</li>
													</ul>
												</div>
											</div>
											<div class="s-icon-box"></div></a></li>
									<li class="w-item w-item-f" style=""><a class="w-item-box"
										href="http://www.nuomi.com/deal/v8mqyv9t.html" target="_blank"
										mon="element=3304279&amp;position=3"
										data-item-st="{&quot;s&quot;:&quot;1441edaf97ca1f994859837258703f91&quot;}"><div
												class="itemc">
												<img
													src="./index_files/3304279-8bvi8m9v2f-37119544340608724.jpg"
													data-original="http://S0.nuomi.bdimg.com/upload/mfs201503/deal/2015/3/V_L/3304279-8bvi8m9v2f-37119544340608724.jpg"
													alt="" style="display: inline;">
												<div class="bt">
													<h5 class="title">【iQi夹子款护眼灯】升级夹子款充电式LED台灯！照明360°，无辐射呵护双眼！包邮！</h5>
													<ul class="ot clearfix">
														<li class="fl cur">¥<span class="cur-price">39.9</span></li>
														<li class="fl text">价值<span class="old-price">¥119</span></li>
														<li class="fr text"><span class="part_in">604</span>人已参与</li>
													</ul>
												</div>
											</div>
											<div class="s-icon-box"></div></a></li>
									<li class="w-item w-item-f" style=""><a class="w-item-box"
										href="http://www.nuomi.com/deal/ndn6emjr.html" target="_blank"
										mon="element=3428502&amp;position=4"
										data-item-st="{&quot;s&quot;:&quot;1441edaf97ca1f994859837258703f91&quot;}"><div
												class="itemc">
												<img
													src="./index_files/3428502-58axq5mbhx-21055733415887105.jpg"
													data-original="http://S0.nuomi.bdimg.com/upload/mfs201504/deal/2015/4/V_L/3428502-58axq5mbhx-21055733415887105.jpg"
													alt="" style="display: inline;">
												<div class="bt">
													<h5 class="title">【M120联想光学鼠标】红点有线鼠标！简约商务，时尚内敛，更优滚轮！包邮！</h5>
													<ul class="ot clearfix">
														<li class="fl cur">¥<span class="cur-price">28.7</span></li>
														<li class="fl text">价值<span class="old-price">¥69</span></li>
														<li class="fr text"><span class="part_in">430</span>人已参与</li>
													</ul>
												</div>
											</div>
											<div class="s-icon-box"></div></a></li>
									<li class="w-item w-item-f" style=""><a class="w-item-box"
										href="http://www.nuomi.com/deal/rz30vphx.html" target="_blank"
										mon="element=3666495&amp;position=5"
										data-item-st="{&quot;s&quot;:&quot;1441edaf97ca1f994859837258703f91&quot;}"><div
												class="itemc">
												<img
													src="./index_files/3666495-k75i473jdu-41107094398258522.jpg"
													data-original="http://S1.nuomi.bdimg.com/upload/mfs201505/deal/2015/5/V_L/3666495-k75i473jdu-41107094398258522.jpg"
													alt="" style="display: inline;">
												<div class="bt">
													<h5 class="title">【爱国者充电宝k112】10000mAh锂离子充电宝！双USB充电！包邮！</h5>
													<ul class="ot clearfix">
														<li class="fl cur">¥<span class="cur-price">69</span></li>
														<li class="fl text">价值<span class="old-price">¥99</span></li>
														<li class="fr text"><span class="part_in">430</span>人已参与</li>
													</ul>
												</div>
											</div>
											<div class="s-icon-box"></div></a></li>
									<li class="w-item w-item-f" style=""><a class="w-item-box"
										href="http://www.nuomi.com/deal/tdciucex.html" target="_blank"
										mon="element=2676403&amp;position=6"
										data-item-st="{&quot;s&quot;:&quot;1441edaf97ca1f994859837258703f91&quot;}"><div
												class="itemc">
												<img
													src="./index_files/2676403-8a4thyjbjy-10856359441149774.jpg"
													data-original="http://S2.nuomi.bdimg.com/upload/deal/2014/12/V_L/2676403-8a4thyjbjy-10856359441149774.jpg"
													alt="" style="display: inline;">
												<div class="bt">
													<h5 class="title">【酷派电信版手机】4英寸3G双卡双待手机！双核处理器！2色可选，包邮！</h5>
													<ul class="ot clearfix">
														<li class="fl cur">¥<span class="cur-price">245</span></li>
														<li class="fl text">价值<span class="old-price">¥299</span></li>
														<li class="fr text"><span class="part_in">417</span>人已参与</li>
													</ul>
												</div>
											</div>
											<div class="s-icon-box"></div></a></li>
								</ul>
								<ul class="item-c clearfix" style="display: none">
									<li class="w-item w-item-f" style=""><a class="w-item-box"
										href="http://www.nuomi.com/deal/wzusdjnx.html" target="_blank"
										mon="element=4030226&amp;position=1"
										data-item-st="{&quot;s&quot;:&quot;1441edaf97ca1f994859837258703f91&quot;}"><div
												class="itemc">
												<img
													src="./index_files/4030226-me3u23uyb5-44992932086760541.jpg"
													data-original="http://S1.nuomi.bdimg.com/upload/mfs201506/deal/2015/6/V_L/4030226-me3u23uyb5-44992932086760541.jpg"
													alt="" style="display: inline;">
												<div class="bt">
													<h5 class="title">【九阳多功能电烤箱】多功能电烤箱！30L黄金容量，多功能！包邮！</h5>
													<ul class="ot clearfix">
														<li class="fl cur">¥<span class="cur-price">195</span></li>
														<li class="fl text">价值<span class="old-price">¥599</span></li>
														<li class="fr text"><span class="part_in">110</span>人已参与</li>
													</ul>
												</div>
											</div>
											<div class="s-icon-box"></div></a></li>
									<li class="w-item w-item-f" style=""><a class="w-item-box"
										href="http://www.nuomi.com/deal/7gkh1gu3.html" target="_blank"
										mon="element=3795601&amp;position=2"
										data-item-st="{&quot;s&quot;:&quot;1441edaf97ca1f994859837258703f91&quot;}"><div
												class="itemc">
												<img
													src="./index_files/3795601-vbtnvuk7ww-42236271538685697.jpg"
													data-original="http://S1.nuomi.bdimg.com/upload/mfs201505/deal/2015/5/V_L/3795601-vbtnvuk7ww-42236271538685697.jpg"
													alt="" style="display: inline;">
												<div class="bt">
													<h5 class="title">【TCL乐玩电信手机】乐玩电信4G5英寸手机！新品首发抄底价，四核极速流畅！包邮！</h5>
													<ul class="ot clearfix">
														<li class="fl cur">¥<span class="cur-price">505</span></li>
														<li class="fl text">价值<span class="old-price">¥599</span></li>
														<li class="fr text"><span class="part_in">30</span>人已参与</li>
													</ul>
												</div>
											</div>
											<div class="s-icon-box"></div></a></li>
									<li class="w-item w-item-f" style=""><a class="w-item-box"
										href="http://www.nuomi.com/deal/rz30vphx.html" target="_blank"
										mon="element=3666495&amp;position=3"
										data-item-st="{&quot;s&quot;:&quot;1441edaf97ca1f994859837258703f91&quot;}"><div
												class="itemc">
												<img
													src="./index_files/3666495-k75i473jdu-41107094398258522.jpg"
													data-original="http://S1.nuomi.bdimg.com/upload/mfs201505/deal/2015/5/V_L/3666495-k75i473jdu-41107094398258522.jpg"
													alt="" style="display: inline;">
												<div class="bt">
													<h5 class="title">【爱国者充电宝k112】10000mAh锂离子充电宝！双USB充电！包邮！</h5>
													<ul class="ot clearfix">
														<li class="fl cur">¥<span class="cur-price">69</span></li>
														<li class="fl text">价值<span class="old-price">¥99</span></li>
														<li class="fr text"><span class="part_in">430</span>人已参与</li>
													</ul>
												</div>
											</div>
											<div class="s-icon-box"></div></a></li>
									<li class="w-item w-item-f" style=""><a class="w-item-box"
										href="http://www.nuomi.com/deal/pjaxepmn.html" target="_blank"
										mon="element=3666579&amp;position=4"
										data-item-st="{&quot;s&quot;:&quot;1441edaf97ca1f994859837258703f91&quot;}"><div
												class="itemc">
												<img
													src="./index_files/3666579-fac3x7cstc-23489655829670484.jpg"
													data-original="http://S2.nuomi.bdimg.com/upload/mfs201505/deal/2015/5/V_L/3666579-fac3x7cstc-23489655829670484.jpg"
													alt="" style="display: inline;">
												<div class="bt">
													<h5 class="title">【充电宝KA110】11000mAh移动电源！A+级全新电芯！包邮！</h5>
													<ul class="ot clearfix">
														<li class="fl cur">¥<span class="cur-price">65</span></li>
														<li class="fl text">价值<span class="old-price">¥99</span></li>
														<li class="fr text"><span class="part_in">154</span>人已参与</li>
													</ul>
												</div>
											</div>
											<div class="s-icon-box"></div></a></li>
									<li class="w-item w-item-f" style=""><a class="w-item-box"
										href="http://www.nuomi.com/deal/huecnuo5.html" target="_blank"
										mon="element=3623169&amp;position=5"
										data-item-st="{&quot;s&quot;:&quot;1441edaf97ca1f994859837258703f91&quot;}"><div
												class="itemc">
												<img
													src="./index_files/3623169-tfnfxveux2-40846355506711419.jpg"
													data-original="http://S2.nuomi.bdimg.com/upload/mfs201505/deal/2015/5/V_L/3623169-tfnfxveux2-40846355506711419.jpg"
													alt="" style="display: inline;">
												<div class="bt">
													<h5 class="title">【华为C199电信手机】C199S电信4G手机！5.5寸全贴合高清屏！2色可选，包邮！</h5>
													<ul class="ot clearfix">
														<li class="fl cur">¥<span class="cur-price">1850</span></li>
														<li class="fl text">价值<span class="old-price">¥2299</span></li>
														<li class="fr text"><span class="part_in">16</span>人已参与</li>
													</ul>
												</div>
											</div>
											<div class="s-icon-box"></div></a></li>
									<li class="w-item w-item-f" style=""><a class="w-item-box"
										href="http://www.nuomi.com/deal/dg8s8dpa.html" target="_blank"
										mon="element=3605252&amp;position=6"
										data-item-st="{&quot;s&quot;:&quot;1441edaf97ca1f994859837258703f91&quot;}"><div
												class="itemc">
												<img
													src="./index_files/3605252-44bkskuak3-22974457695205355.jpg"
													data-original="http://S2.nuomi.bdimg.com/upload/mfs201505/deal/2015/5/V_L/3605252-44bkskuak3-22974457695205355.jpg"
													alt="" style="display: inline;">
												<div class="bt">
													<h5 class="title">【NS336】迷你USB随身Wifi发射器/接收器！两用型！2色可选，包邮！</h5>
													<ul class="ot clearfix">
														<li class="fl cur">¥<span class="cur-price">18.8</span></li>
														<li class="fl text">价值<span class="old-price">¥85</span></li>
														<li class="fr text"><span class="part_in">280</span>人已参与</li>
													</ul>
												</div>
											</div>
											<div class="s-icon-box"></div></a></li>
								</ul>
								<ul class="item-c clearfix" style="display: none">
								</ul>
								<ul class="item-c clearfix" style="display: none">
									<li class="w-item w-item-f" style=""><a class="w-item-box"
										href="" target="_blank" mon="element=&amp;position=1"
										data-item-st="{&quot;s&quot;:&quot;1441edaf97ca1f994859837258703f91&quot;}"><div
												class="itemc">
												<img src="./index_files/lazy-loading_2689268.png"
													data-original="" alt="">
												<div class="bt">
													<h5 class="title">【】</h5>
													<ul class="ot clearfix">
														<li class="fl cur">¥<span class="cur-price">0</span></li>
														<li class="fl text">价值<span class="old-price">¥0</span></li>
														<li class="fr text"><span class="part_in"></span>人已参与</li>
													</ul>
												</div>
											</div>
											<div class="s-icon-box"></div></a></li>
									<li class="w-item w-item-f" style=""><a class="w-item-box"
										href="" target="_blank" mon="element=&amp;position=2"
										data-item-st="{&quot;s&quot;:&quot;1441edaf97ca1f994859837258703f91&quot;}"><div
												class="itemc">
												<img src="./index_files/lazy-loading_2689268.png"
													data-original="" alt="">
												<div class="bt">
													<h5 class="title">【】</h5>
													<ul class="ot clearfix">
														<li class="fl cur">¥<span class="cur-price">0</span></li>
														<li class="fl text">价值<span class="old-price">¥0</span></li>
														<li class="fr text"><span class="part_in"></span>人已参与</li>
													</ul>
												</div>
											</div>
											<div class="s-icon-box"></div></a></li>
									<li class="w-item w-item-f" style=""><a class="w-item-box"
										href="" target="_blank" mon="element=&amp;position=3"
										data-item-st="{&quot;s&quot;:&quot;1441edaf97ca1f994859837258703f91&quot;}"><div
												class="itemc">
												<img src="./index_files/lazy-loading_2689268.png"
													data-original="" alt="">
												<div class="bt">
													<h5 class="title">【】</h5>
													<ul class="ot clearfix">
														<li class="fl cur">¥<span class="cur-price">0</span></li>
														<li class="fl text">价值<span class="old-price">¥0</span></li>
														<li class="fr text"><span class="part_in"></span>人已参与</li>
													</ul>
												</div>
											</div>
											<div class="s-icon-box"></div></a></li>
									<li class="w-item w-item-f" style=""><a class="w-item-box"
										href="" target="_blank" mon="element=&amp;position=4"
										data-item-st="{&quot;s&quot;:&quot;1441edaf97ca1f994859837258703f91&quot;}"><div
												class="itemc">
												<img src="./index_files/lazy-loading_2689268.png"
													data-original="" alt="">
												<div class="bt">
													<h5 class="title">【】</h5>
													<ul class="ot clearfix">
														<li class="fl cur">¥<span class="cur-price">0</span></li>
														<li class="fl text">价值<span class="old-price">¥0</span></li>
														<li class="fr text"><span class="part_in"></span>人已参与</li>
													</ul>
												</div>
											</div>
											<div class="s-icon-box"></div></a></li>
									<li class="w-item w-item-f" style=""><a class="w-item-box"
										href="" target="_blank" mon="element=&amp;position=5"
										data-item-st="{&quot;s&quot;:&quot;1441edaf97ca1f994859837258703f91&quot;}"><div
												class="itemc">
												<img src="./index_files/lazy-loading_2689268.png"
													data-original="" alt="">
												<div class="bt">
													<h5 class="title">【】</h5>
													<ul class="ot clearfix">
														<li class="fl cur">¥<span class="cur-price">0</span></li>
														<li class="fl text">价值<span class="old-price">¥0</span></li>
														<li class="fr text"><span class="part_in"></span>人已参与</li>
													</ul>
												</div>
											</div>
											<div class="s-icon-box"></div></a></li>
									<li class="w-item w-item-f" style=""><a class="w-item-box"
										href="" target="_blank" mon="element=&amp;position=6"
										data-item-st="{&quot;s&quot;:&quot;1441edaf97ca1f994859837258703f91&quot;}"><div
												class="itemc">
												<img src="./index_files/lazy-loading_2689268.png"
													data-original="" alt="">
												<div class="bt">
													<h5 class="title">【】</h5>
													<ul class="ot clearfix">
														<li class="fl cur">¥<span class="cur-price">0</span></li>
														<li class="fl text">价值<span class="old-price">¥0</span></li>
														<li class="fr text"><span class="part_in"></span>人已参与</li>
													</ul>
												</div>
											</div>
											<div class="s-icon-box"></div></a></li>
									<li class="w-item w-item-f" style=""><a class="w-item-box"
										href="" target="_blank" mon="element=&amp;position=7"
										data-item-st="{&quot;s&quot;:&quot;1441edaf97ca1f994859837258703f91&quot;}"><div
												class="itemc">
												<img src="./index_files/lazy-loading_2689268.png"
													data-original="" alt="">
												<div class="bt">
													<h5 class="title">【】</h5>
													<ul class="ot clearfix">
														<li class="fl cur">¥<span class="cur-price">0</span></li>
														<li class="fl text">价值<span class="old-price">¥0</span></li>
														<li class="fr text"><span class="part_in"></span>人已参与</li>
													</ul>
												</div>
											</div>
											<div class="s-icon-box"></div></a></li>
									<li class="w-item w-item-f" style=""><a class="w-item-box"
										href="" target="_blank" mon="element=&amp;position=8"
										data-item-st="{&quot;s&quot;:&quot;1441edaf97ca1f994859837258703f91&quot;}"><div
												class="itemc">
												<img src="./index_files/lazy-loading_2689268.png"
													data-original="" alt="">
												<div class="bt">
													<h5 class="title">【】</h5>
													<ul class="ot clearfix">
														<li class="fl cur">¥<span class="cur-price">0</span></li>
														<li class="fl text">价值<span class="old-price">¥0</span></li>
														<li class="fr text"><span class="part_in"></span>人已参与</li>
													</ul>
												</div>
											</div>
											<div class="s-icon-box"></div></a></li>
									<li class="w-item w-item-f" style=""><a class="w-item-box"
										href="" target="_blank" mon="element=&amp;position=9"
										data-item-st="{&quot;s&quot;:&quot;1441edaf97ca1f994859837258703f91&quot;}"><div
												class="itemc">
												<img src="./index_files/lazy-loading_2689268.png"
													data-original="" alt="">
												<div class="bt">
													<h5 class="title">【】</h5>
													<ul class="ot clearfix">
														<li class="fl cur">¥<span class="cur-price">0</span></li>
														<li class="fl text">价值<span class="old-price">¥0</span></li>
														<li class="fr text"><span class="part_in"></span>人已参与</li>
													</ul>
												</div>
											</div>
											<div class="s-icon-box"></div></a></li>
									<li class="w-item w-item-f" style=""><a class="w-item-box"
										href="" target="_blank" mon="element=&amp;position=10"
										data-item-st="{&quot;s&quot;:&quot;1441edaf97ca1f994859837258703f91&quot;}"><div
												class="itemc">
												<img src="./index_files/lazy-loading_2689268.png"
													data-original="" alt="">
												<div class="bt">
													<h5 class="title">【】</h5>
													<ul class="ot clearfix">
														<li class="fl cur">¥<span class="cur-price">0</span></li>
														<li class="fl text">价值<span class="old-price">¥0</span></li>
														<li class="fr text"><span class="part_in"></span>人已参与</li>
													</ul>
												</div>
											</div>
											<div class="s-icon-box"></div></a></li>
									<li class="w-item w-item-f" style=""><a class="w-item-box"
										href="" target="_blank" mon="element=&amp;position=11"
										data-item-st="{&quot;s&quot;:&quot;1441edaf97ca1f994859837258703f91&quot;}"><div
												class="itemc">
												<img src="./index_files/lazy-loading_2689268.png"
													data-original="" alt="">
												<div class="bt">
													<h5 class="title">【】</h5>
													<ul class="ot clearfix">
														<li class="fl cur">¥<span class="cur-price">0</span></li>
														<li class="fl text">价值<span class="old-price">¥0</span></li>
														<li class="fr text"><span class="part_in"></span>人已参与</li>
													</ul>
												</div>
											</div>
											<div class="s-icon-box"></div></a></li>
									<li class="w-item w-item-f" style=""><a class="w-item-box"
										href="" target="_blank" mon="element=&amp;position=12"
										data-item-st="{&quot;s&quot;:&quot;1441edaf97ca1f994859837258703f91&quot;}"><div
												class="itemc">
												<img src="./index_files/lazy-loading_2689268.png"
													data-original="" alt="">
												<div class="bt">
													<h5 class="title">【】</h5>
													<ul class="ot clearfix">
														<li class="fl cur">¥<span class="cur-price">0</span></li>
														<li class="fl text">价值<span class="old-price">¥0</span></li>
														<li class="fr text"><span class="part_in"></span>人已参与</li>
													</ul>
												</div>
											</div>
											<div class="s-icon-box"></div></a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="w-goods-item clearfix"></div>
		</div>
	</div>


	<script>
		/* 配置需要统计的模块 */
		window.alogObjectConfig = { // 配置各种统计模块，不需要的模块不配置即可
			product : '273', // 必须, DP平台产品线id
			page : "273_283", // 必须, DP平台页面id

			// 性能
			speed : {
				sample : '0.8' // 抽样率, 0~1
			//special_pages: [{id:34,sample:1}] // 特殊页面，和老的性能配置一致
			//custom_metrics : ['c_item1','p_item3'],//自定义的性能指标，自动上报，只有这些指标都统计完毕之后数据才会发送
			},

			// 访问、点击
			//monkey: {
			// sample: '0.3'      // 抽样率, 0~1  建议使采样的pv控制在50万以内
			//hid: ''       // 兼容老版本的monkey，monkey实验的ID
			//pageflag: ''  // 个别特殊产品线使用的老monkey的pageflag
			// },

			// js异常
			exception : { // 注意：需要异常统计时，必须引入上面head中的相应代码
				sample : '0.8' // 抽样率, 0~1  建议使采样的pv控制在50万以内
			},

			// 新特性
			feature : {
				sample : '0.8' // 抽样率, 0~1  建议使采样的pv控制在50万以内
			},

			// csp监控【跨站资源、XSS漏洞】，csp的配置说明见下文的“高级功能”
			csp : {
				sample : '0.8', // 抽样率, 0~1  建议使采样的pv控制在100万以内

				// 默认的跨站策略, 产品线可以根据自己的实际情况进行修改
				'default-src' : [
						{
							match : '*bae.baidu.com',
							target : 'Accept,Warn'
						},
						{
							match : '*.baidu.com,*.bdstatic.com,*.bdimg.com,localhost,*.hao123.com,*.hao123img.com',
							target : 'Accept'
						}, {
							match : /^(127|172|192|10)(\.\d+){3}$/,
							target : 'Accept'
						}, {
							match : '*',
							target : 'Accept,Warn'
						} ],

				// 元素内联事件配置，跟踪线上的 DOM-XSS
				'inline' : {
					'len-limit' : [ // 长度限制。超过match字符数可做相应处理
					{
						match : 400,
						target : 'Accept,Warn'
					} ],
					'key-limit' : [ // 关键字限制。匹配match正则可做相应处理
					{
						match : /fromCharCode|getScript|alert\(\/|alert\(\d+/,
						target : 'Accept,Warn'
					} ],
					'unsafe-eval' : 'Accept,Warn' // 在内联事件里调用eval函数，可做相应处理
				}
			}
		};

		// pc和mobile端会稍有不同，必须严格按照该文档来部署，该段代码必须放在上面的window.alogObjectConfig配置之后
		void function(e, t, n, a, r, o) {
			function c(t) {
				e.attachEvent ? e.attachEvent("onload", t, !1)
						: e.addEventListener && e.addEventListener("load", t)
			}
			function i(e, n, a) {
				a = a || 15;
				var r = new Date;
				r.setTime((new Date).getTime() + 1e3 * a), t.cookie = e + "="
						+ escape(n) + ";path=/;expires=" + r.toGMTString()
			}
			function s(e) {
				var n = t.cookie
						.match(new RegExp("(^| )" + e + "=([^;]*)(;|$)"));
				return null != n ? unescape(n[2]) : null
			}
			function d() {
				var e = s("PMS_JT");
				if (e) {
					i("PMS_JT", "", -1);
					try {
						e = eval(e)
					} catch (n) {
						e = {}
					}
					e.r && t.referrer.replace(/#.*/, "") != e.r
							|| alog("speed.set", "wt", e.s)
				}
			}
			c(function() {
				alog("speed.set", "lt", +new Date), r = t.createElement(n),
						r.async = !0, r.src = a + "?v=" + ~(new Date / 864e5),
						o = t.getElementsByTagName(n)[0], o.parentNode
								.insertBefore(r, o)
			}), d()
		}(window, document, "script",
				"http://img.baidu.com/hunter/alog/dp.min.js");
	</script>

	<script>
		var monkeyPageId = "bainuo-wanggou-page-index";
	</script>

	<script type="text/javascript">
	<!--
		(function(d) {
			(window.bd_cpro_rtid = window.bd_cpro_rtid || []).push({
				id : "nH0znjDv"
			});
			var s = d.createElement("script");
			s.type = "text/javascript";
			s.async = true;
			s.src = location.protocol + "//cpro.baidu.com/cpro/ui/rt.js";
			var s0 = d.getElementsByTagName("script")[0];
			s0.parentNode.insertBefore(s, s0);
		})(document);
	//-->
	</script>


	<script>
		alog("set", "alias", {
			monkey : "http://img.baidu.com/hunter/alog/monkey.min.js",
			element : "http://img.baidu.com/hunter/alog/element.min.js"
		});

		alog("require", [ "monkey", "element" ], function(monkey, element) {
			monkey.create({
				page : monkeyPageId, //填写页面的Monkey pageId，与创建实验时填写的页面pageId一致
				pid : "241", //固定的不用改，Monkey日志的pid
				p : "241", //log平台为每个产品线分的id，如果没有设为241
				hid : "2189", //Monkey实验的ID，Hunter系统实验管理页列表的第一列
				postUrl : "http://nsclick.baidu.com/u.gif",//固定值，上报统计的请求地址
				reports : {
					refer : 1, //统计页面来源
					staytime : 1
				//统计用户在该页面的停留时间
				}
			});
		});

		//发送PV统计请求
		alog("monkey.send", "pageview", {
			now : +new Date
		});
	</script>


	<script>
		(function() {
			try {
				if (!(!('performance' in window)
						|| !('getEntriesByType' in window.performance) || !(window.performance
						.getEntriesByType('resource') instanceof Array))) {
					var LOG_REQUEST_URL = window.location.host
							.indexOf('m.nuomi.com') !== -1 ? 'http://m.nuomi.com/s.gif?'
							: 'http://www.nuomi.com/s.gif?';
					window
							.addEventListener(
									'load',
									function() {
										setTimeout(
												function() {
													try {
														var events = [
																'navigationStart',
																'redirectStart',
																'redirectEnd',
																'fetchStart',
																'domainLookupStart',
																'domainLookupEnd',
																'connectStart',
																'connectEnd',
																'secureConnectionStart',
																'requestStart',
																'responseStart',
																'responseEnd',
																'domLoading',
																'domInteractive',
																'domContentLoadedEventStart',
																'domContentLoadedEventEnd',
																'domComplete',
																'loadEventStart',
																'loadEventEnd' ];
														var timing = window.performance.timing;
														var zero = timing.navigationStart;
														var mon = document.body
																.getAttribute('mon')
																|| 'page=unknown';
														var query = [
																'performance=1',
																'zero=' + zero,
																mon ];
														for (var i = 0; i < events.length; i++) {
															var event = events[i];
															var eventTime = timing[event];
															if (typeof eventTime !== 'undefined') {
																var delta = eventTime
																		- zero;
																query
																		.push(event
																				+ '='
																				+ (delta < 0 ? 0
																						: delta));
															}
														}
														var img = document
																.createElement('img');
														img.style.display = 'none';
														document.body
																.appendChild(img).src = LOG_REQUEST_URL
																+ query
																		.join('&');
													} catch (err) {
													}
												}, 100);
									});
				}
			} catch (err) {
			}
		})();
	</script>

	<script src="./index_files/jquery-1.10.2.min_f2fb5194.js"></script>
	<script type="text/javascript" src="./index_files/mod_e56bbba.js"></script>
	<script type="text/javascript">
		require
				.resourceMap({
					"res" : {
						"wanggou:widget/hot_goods/hot_goods.js" : {
							"url" : "http://newpc1.nuomi.bdimg.com/static/wanggou/widget/hot_goods/hot_goods_a4d6ef9.js",
							"pkg" : "wanggou:p0",
							"deps" : [ "common:widget/ui/sliderbar/sliderbar.js" ]
						},
						"wanggou:widget/hot_sell/hot_sell.js" : {
							"url" : "http://newpc1.nuomi.bdimg.com/static/wanggou/widget/hot_sell/hot_sell_40680a2.js",
							"pkg" : "wanggou:p0"
						},
						"wanggou:widget/sub_category/sub_category.js" : {
							"url" : "http://newpc2.nuomi.bdimg.com/static/wanggou/widget/sub_category/sub_category_909e89d.js",
							"pkg" : "wanggou:p0"
						},
						"wanggou:widget/sub_category_b/sub_category_b.js" : {
							"url" : "http://newpc0.nuomi.bdimg.com/static/wanggou/widget/sub_category_b/sub_category_b_04d0240.js",
							"pkg" : "wanggou:p0"
						}
					},
					"pkg" : {
						"wanggou:p0" : {
							"url" : "http://newpc2.nuomi.bdimg.com/static/wanggou/pkg/wanggou_9a9358b.js"
						}
					}
				});
	</script>
	<script type="text/javascript" src="./index_files/common_fc5c4eb.js"></script>
	<script type="text/javascript" src="./index_files/wanggou_9a9358b.js"></script>
	<script type="text/javascript">
		!function() {
			require.async([ 'common:widget/static/init.js' ], function(init) {
			});
		}();
		!function() {
			$(function() {
				alog && alog('speed.set', 'drt', +new Date);
			});
		}();
		!function() {
			F.context('staticController').run(function(data, tools) {
				//   
			});
		}();
		!function() {
			require.async([ 'common:widget/new_gotop/SideNav.js' ], function(
					SideNav) {
				var sideNav = new SideNav({
					main : '#j-go-top',
					triggerl : '.go-top-2'
				});
			});
		}();
		!function() {
			require.async([ 'common:widget/header/top-banner/top-banner.js' ]);
		}();
		!function() {
			F
					.context('staticController')
					.run(
							function() {
								require
										.async([ 'common:widget/new_header/bar/bar.js' ]);
								require
										.async(
												[ 'common:widget/new_header/bar/dropdown.js' ],
												function(Dropdown) {
													var nav = new Dropdown(
															{
																container : '#header-bar',
																containerClass : 'j-bar-dropdown'
															});
												});
							});
		}();
		!function() {
			F.context('staticController').run(
					function() {
						require.async(
								[ 'common:widget/new_header/nav/nav.js' ],
								function(Nav) {
									var nav = new Nav({
										selectedClass : 'selected',
										container : '#j-catg',
										navContainerClass : 'all-cate',
										navClass : 'j-catg-row'
									});
								});
					});
		}();
		!function() {
			F.context({
				isHotCity : '1', // 
				isIndex : '', // 
				erweimaCurrentTime : new Date(1448030733 * 1000)
			});
			F.context('staticController').run(function() {
				require.async([ 'common:widget/iot_header/header.js' ]);
			});
		}();
		!function() {
			require.async([ "wanggou:widget/sub_category/sub_category.js" ],
					function(category) {
						category.init();
					});
		}();
		!function() {
			$(function() {
				require
						.async(
								'common:widget/ui/sliderbar/sliderbar.js',
								function(Slider) {
									new Slider(
											{
												container : $('#j-focus-img'),
												pageNumber : $('#j-slider-num li'),
												direction : 'opacity',
												interval : 5000,
												exposureLog : true,
												callback : function() {
													$('#j-subitem li')
															.hover(
																	function() {
																		$(this)
																				.find(
																						'i')
																				.hide()
																				.end()
																				.siblings()
																				.find(
																						'i')
																				.each(
																						function() {
																							this.style.display = "block";
																						});
																	},
																	function() {
																		$(this)
																				.siblings()
																				.find(
																						'i')
																				.hide();
																	});
													this.pageNumber
															.hover(function() {
																$(this)
																		.trigger(
																				"click");
															});
												}
											});
								});
			});
		}();
		!function() {
			(function() {
				$(function() {
					if (!navigator.userAgent.match(/(iPad).*OS\s([\d_]+)/)) {
						require
								.async(
										'common:widget/ui/sliderbar/sliderbar.js',
										function(Slider) {
											new Slider(
													{
														container : $('#j-slider'),
														isStart : false,
														isPlay : false,
														exposureLog : true,
														callback : function() {
															var prev = $('#j-slider-prev'), _this = this, next = $('#j-slider-next');
															prev
																	.bind(
																			'click',
																			function() {
																				var index = _this
																						.getCurrentIndex() - 1;

																				if (index >= 0) {
																					_this
																							.go(
																									index,
																									'<');
																				}
																				if (index <= 1) {
																					$(
																							this)
																							.addClass(
																									'prev-d');
																					next
																							.removeClass('next-d');
																				}
																			});
															next
																	.bind(
																			'click',
																			function() {
																				var index = _this
																						.getCurrentIndex() + 1;
																				if (index < _this.len) {
																					_this
																							.go(
																									index,
																									'>');
																				}
																				if (index >= _this.len - 1) {
																					$(
																							this)
																							.addClass(
																									'next-d');
																					prev
																							.removeClass('prev-d');
																				}
																			});
														}
													});
										});
					} else {
						require.async('common:widget/ui/swiper/swiper.js',
								function(Swiper) {
									var mySwiper = new Swiper(
											'.swiper-container', {
												loop : true,
												grabCursor : true,
												paginationClickable : true,
												slideActiveClass : 'hover'
											});
									$('#j-slider-prev').removeClass('prev-d')
											.on('click', function(e) {
												e.preventDefault();
												mySwiper.swipePrev();
											});
									$('#j-slider-next').on('click',
											function(e) {
												e.preventDefault();
												mySwiper.swipeNext();
											});
								});
					}

					/*require.async('wanggou:static/lib/swiper.js',function(){
						  
						
					});*/

				});
			})();
		}();
		!function() {
			require.async([ "wanggou:widget/hot_goods/hot_goods.js" ],
					function(hotGoods) {
						hotGoods.init();
					});
		}();
		!function() {
			(function() {
				$(function() {
					require
							.async(
									'common:widget/ui/sliderbar/sliderbar.js',
									function(Slider) {
										$('.j-item-c')
												.each(
														function() {
															if (!this.__isSliderBar) {
																var jData = $(
																		this)
																		.attr(
																				'j-data')
																		&& $(
																				this)
																				.attr(
																						'j-data') != '';
																new Slider(
																		{
																			container : $(this),
																			pageNumber : jData ? $(
																					this)
																					.parents(
																							'.goods')
																					.find(
																							'.w-index-title .good a')
																					: $(
																							this)
																							.parents(
																									'.goods')
																							.find(
																									'.w-index-title .num li'),
																			direction : 'opacity',
																			interval : 5000,
																			isPlay : !jData,
																			isStart : !jData,
																			/*2014_08_11 zhangyijun02@baidu.com：由于设置动画持续时间会导致鼠标过于频繁滑动使控件来不及更新状态，造成不稳定复现豆腐块点击后的团单不一致的问题，故将原有的400ms延时取消*/
																			timer : jData ? 0
																					: 0,
																			beginCallback : function(
																					curItem,
																					nextItem) {
																				nextItem
																						.show();
																			},
																			endCallback : function(
																					curItem,
																					nextItem) {
																				curItem
																						.hide();
																			},
																			callback : function() {
																				this.pageNumber
																						.hover(function() {
																							$(
																									this)
																									.trigger(
																											"click");
																						});
																			}
																		});
																this.__isSliderBar = true;
															}
														});

									});
				});
			})();
		}();
		!function() {
			require.async([ "wanggou:widget/hot_sell/hot_sell.js" ], function(
					hotSell) {
				hotSell.init();
			});
		}();
		!function() {
			(function() {
				$(function() {
					require
							.async(
									'common:widget/ui/sliderbar/sliderbar.js',
									function(Slider) {
										$('.j-item-c')
												.each(
														function() {
															if (!this.__isSliderBar) {
																var jData = $(
																		this)
																		.attr(
																				'j-data')
																		&& $(
																				this)
																				.attr(
																						'j-data') != '';
																new Slider(
																		{
																			container : $(this),
																			pageNumber : jData ? $(
																					this)
																					.parents(
																							'.goods')
																					.find(
																							'.w-index-title .good a')
																					: $(
																							this)
																							.parents(
																									'.goods')
																							.find(
																									'.w-index-title .num li'),
																			direction : 'opacity',
																			interval : 5000,
																			isPlay : !jData,
																			isStart : !jData,
																			/*2014_08_11 zhangyijun02@baidu.com：由于设置动画持续时间会导致鼠标过于频繁滑动使控件来不及更新状态，造成不稳定复现豆腐块点击后的团单不一致的问题，故将原有的400ms延时取消*/
																			timer : jData ? 0
																					: 0,
																			beginCallback : function(
																					curItem,
																					nextItem) {
																				nextItem
																						.show();
																			},
																			endCallback : function(
																					curItem,
																					nextItem) {
																				curItem
																						.hide();
																			},
																			callback : function() {
																				this.pageNumber
																						.hover(function() {
																							$(
																									this)
																									.trigger(
																											"click");
																						});
																			}
																		});
																this.__isSliderBar = true;
															}
														});

									});
				});
			})();
		}();
		!function() {
			(function() {
				$(function() {
					require
							.async(
									'common:widget/ui/sliderbar/sliderbar.js',
									function(Slider) {
										$('.j-item-c')
												.each(
														function() {
															if (!this.__isSliderBar) {
																var jData = $(
																		this)
																		.attr(
																				'j-data')
																		&& $(
																				this)
																				.attr(
																						'j-data') != '';
																new Slider(
																		{
																			container : $(this),
																			pageNumber : jData ? $(
																					this)
																					.parents(
																							'.goods')
																					.find(
																							'.w-index-title .good a')
																					: $(
																							this)
																							.parents(
																									'.goods')
																							.find(
																									'.w-index-title .num li'),
																			direction : 'opacity',
																			interval : 5000,
																			isPlay : !jData,
																			isStart : !jData,
																			/*2014_08_11 zhangyijun02@baidu.com：由于设置动画持续时间会导致鼠标过于频繁滑动使控件来不及更新状态，造成不稳定复现豆腐块点击后的团单不一致的问题，故将原有的400ms延时取消*/
																			timer : jData ? 0
																					: 0,
																			beginCallback : function(
																					curItem,
																					nextItem) {
																				nextItem
																						.show();
																			},
																			endCallback : function(
																					curItem,
																					nextItem) {
																				curItem
																						.hide();
																			},
																			callback : function() {
																				this.pageNumber
																						.hover(function() {
																							$(
																									this)
																									.trigger(
																											"click");
																						});
																			}
																		});
																this.__isSliderBar = true;
															}
														});

									});
				});
			})();
		}();
		!function() {
			(function() {
				$(function() {
					require
							.async(
									'common:widget/ui/sliderbar/sliderbar.js',
									function(Slider) {
										$('.j-item-c')
												.each(
														function() {
															if (!this.__isSliderBar) {
																var jData = $(
																		this)
																		.attr(
																				'j-data')
																		&& $(
																				this)
																				.attr(
																						'j-data') != '';
																new Slider(
																		{
																			container : $(this),
																			pageNumber : jData ? $(
																					this)
																					.parents(
																							'.goods')
																					.find(
																							'.w-index-title .good a')
																					: $(
																							this)
																							.parents(
																									'.goods')
																							.find(
																									'.w-index-title .num li'),
																			direction : 'opacity',
																			interval : 5000,
																			isPlay : !jData,
																			isStart : !jData,
																			/*2014_08_11 zhangyijun02@baidu.com：由于设置动画持续时间会导致鼠标过于频繁滑动使控件来不及更新状态，造成不稳定复现豆腐块点击后的团单不一致的问题，故将原有的400ms延时取消*/
																			timer : jData ? 0
																					: 0,
																			beginCallback : function(
																					curItem,
																					nextItem) {
																				nextItem
																						.show();
																			},
																			endCallback : function(
																					curItem,
																					nextItem) {
																				curItem
																						.hide();
																			},
																			callback : function() {
																				this.pageNumber
																						.hover(function() {
																							$(
																									this)
																									.trigger(
																											"click");
																						});
																			}
																		});
																this.__isSliderBar = true;
															}
														});

									});
				});
			})();
		}();
		!function() {
			(function() {
				$(function() {
					require
							.async(
									'common:widget/ui/sliderbar/sliderbar.js',
									function(Slider) {
										$('.j-item-c')
												.each(
														function() {
															if (!this.__isSliderBar) {
																var jData = $(
																		this)
																		.attr(
																				'j-data')
																		&& $(
																				this)
																				.attr(
																						'j-data') != '';
																new Slider(
																		{
																			container : $(this),
																			pageNumber : jData ? $(
																					this)
																					.parents(
																							'.goods')
																					.find(
																							'.w-index-title .good a')
																					: $(
																							this)
																							.parents(
																									'.goods')
																							.find(
																									'.w-index-title .num li'),
																			direction : 'opacity',
																			interval : 5000,
																			isPlay : !jData,
																			isStart : !jData,
																			/*2014_08_11 zhangyijun02@baidu.com：由于设置动画持续时间会导致鼠标过于频繁滑动使控件来不及更新状态，造成不稳定复现豆腐块点击后的团单不一致的问题，故将原有的400ms延时取消*/
																			timer : jData ? 0
																					: 0,
																			beginCallback : function(
																					curItem,
																					nextItem) {
																				nextItem
																						.show();
																			},
																			endCallback : function(
																					curItem,
																					nextItem) {
																				curItem
																						.hide();
																			},
																			callback : function() {
																				this.pageNumber
																						.hover(function() {
																							$(
																									this)
																									.trigger(
																											"click");
																						});
																			}
																		});
																this.__isSliderBar = true;
															}
														});

									});
				});
			})();
		}();
		!function() {
			(function() {
				$(function() {
					require
							.async(
									'common:widget/ui/sliderbar/sliderbar.js',
									function(Slider) {
										$('.j-item-c')
												.each(
														function() {
															if (!this.__isSliderBar) {
																var jData = $(
																		this)
																		.attr(
																				'j-data')
																		&& $(
																				this)
																				.attr(
																						'j-data') != '';
																new Slider(
																		{
																			container : $(this),
																			pageNumber : jData ? $(
																					this)
																					.parents(
																							'.goods')
																					.find(
																							'.w-index-title .good a')
																					: $(
																							this)
																							.parents(
																									'.goods')
																							.find(
																									'.w-index-title .num li'),
																			direction : 'opacity',
																			interval : 5000,
																			isPlay : !jData,
																			isStart : !jData,
																			/*2014_08_11 zhangyijun02@baidu.com：由于设置动画持续时间会导致鼠标过于频繁滑动使控件来不及更新状态，造成不稳定复现豆腐块点击后的团单不一致的问题，故将原有的400ms延时取消*/
																			timer : jData ? 0
																					: 0,
																			beginCallback : function(
																					curItem,
																					nextItem) {
																				nextItem
																						.show();
																			},
																			endCallback : function(
																					curItem,
																					nextItem) {
																				curItem
																						.hide();
																			},
																			callback : function() {
																				this.pageNumber
																						.hover(function() {
																							$(
																									this)
																									.trigger(
																											"click");
																						});
																			}
																		});
																this.__isSliderBar = true;
															}
														});

									});
				});
			})();
		}();
		!function() {
			(function() {
				$(function() {
					require
							.async(
									'common:widget/ui/sliderbar/sliderbar.js',
									function(Slider) {
										$('.j-item-c')
												.each(
														function() {
															if (!this.__isSliderBar) {
																var jData = $(
																		this)
																		.attr(
																				'j-data')
																		&& $(
																				this)
																				.attr(
																						'j-data') != '';
																new Slider(
																		{
																			container : $(this),
																			pageNumber : jData ? $(
																					this)
																					.parents(
																							'.goods')
																					.find(
																							'.w-index-title .good a')
																					: $(
																							this)
																							.parents(
																									'.goods')
																							.find(
																									'.w-index-title .num li'),
																			direction : 'opacity',
																			interval : 5000,
																			isPlay : !jData,
																			isStart : !jData,
																			/*2014_08_11 zhangyijun02@baidu.com：由于设置动画持续时间会导致鼠标过于频繁滑动使控件来不及更新状态，造成不稳定复现豆腐块点击后的团单不一致的问题，故将原有的400ms延时取消*/
																			timer : jData ? 0
																					: 0,
																			beginCallback : function(
																					curItem,
																					nextItem) {
																				nextItem
																						.show();
																			},
																			endCallback : function(
																					curItem,
																					nextItem) {
																				curItem
																						.hide();
																			},
																			callback : function() {
																				this.pageNumber
																						.hover(function() {
																							$(
																									this)
																									.trigger(
																											"click");
																						});
																			}
																		});
																this.__isSliderBar = true;
															}
														});

									});
				});
			})();
		}();
		!function() {
			(function() {
				$(function() {
					require
							.async(
									'common:widget/ui/sliderbar/sliderbar.js',
									function(Slider) {
										$('.j-item-c')
												.each(
														function() {
															if (!this.__isSliderBar) {
																var jData = $(
																		this)
																		.attr(
																				'j-data')
																		&& $(
																				this)
																				.attr(
																						'j-data') != '';
																new Slider(
																		{
																			container : $(this),
																			pageNumber : jData ? $(
																					this)
																					.parents(
																							'.goods')
																					.find(
																							'.w-index-title .good a')
																					: $(
																							this)
																							.parents(
																									'.goods')
																							.find(
																									'.w-index-title .num li'),
																			direction : 'opacity',
																			interval : 5000,
																			isPlay : !jData,
																			isStart : !jData,
																			/*2014_08_11 zhangyijun02@baidu.com：由于设置动画持续时间会导致鼠标过于频繁滑动使控件来不及更新状态，造成不稳定复现豆腐块点击后的团单不一致的问题，故将原有的400ms延时取消*/
																			timer : jData ? 0
																					: 0,
																			beginCallback : function(
																					curItem,
																					nextItem) {
																				nextItem
																						.show();
																			},
																			endCallback : function(
																					curItem,
																					nextItem) {
																				curItem
																						.hide();
																			},
																			callback : function() {
																				this.pageNumber
																						.hover(function() {
																							$(
																									this)
																									.trigger(
																											"click");
																						});
																			}
																		});
																this.__isSliderBar = true;
															}
														});

									});
				});
			})();
		}();
		!function() {
			(function() {
				$(function() {
					require
							.async(
									'common:widget/ui/sliderbar/sliderbar.js',
									function(Slider) {
										$('.j-item-c')
												.each(
														function() {
															if (!this.__isSliderBar) {
																var jData = $(
																		this)
																		.attr(
																				'j-data')
																		&& $(
																				this)
																				.attr(
																						'j-data') != '';
																new Slider(
																		{
																			container : $(this),
																			pageNumber : jData ? $(
																					this)
																					.parents(
																							'.goods')
																					.find(
																							'.w-index-title .good a')
																					: $(
																							this)
																							.parents(
																									'.goods')
																							.find(
																									'.w-index-title .num li'),
																			direction : 'opacity',
																			interval : 5000,
																			isPlay : !jData,
																			isStart : !jData,
																			/*2014_08_11 zhangyijun02@baidu.com：由于设置动画持续时间会导致鼠标过于频繁滑动使控件来不及更新状态，造成不稳定复现豆腐块点击后的团单不一致的问题，故将原有的400ms延时取消*/
																			timer : jData ? 0
																					: 0,
																			beginCallback : function(
																					curItem,
																					nextItem) {
																				nextItem
																						.show();
																			},
																			endCallback : function(
																					curItem,
																					nextItem) {
																				curItem
																						.hide();
																			},
																			callback : function() {
																				this.pageNumber
																						.hover(function() {
																							$(
																									this)
																									.trigger(
																											"click");
																						});
																			}
																		});
																this.__isSliderBar = true;
															}
														});

									});
				});
			})();
		}();
		!function() {
			require
					.async(
							[ 'common:widget/ui/dialog/dialog.js' ],
							function(Dialog) {
								$('#j-tttel')
										.on(
												'click',
												function() {
													Dialog
															.confirm({
																width : 560,
																customClassName : "ui-confirm-lz",
																content : '<p>业务违规举报邮箱接受对团购业务违规方面的投诉和建议:<br />投诉邮箱：<a href="mailto:bdnm_jiancha@baidu.com" class="link">bdnm_jiancha@baidu.com</a><br />投诉电话：13269403604 <br/></p><p>廉政邮箱接受对百度糯米员工廉政违法行为、职业操守问题的举报及建议:<br/>举报邮箱：<a href="mailto:bdjb@baidu.com" class="link">bdjb@baidu.com</a><br />举报电话：010-56797369</p><p>以上邮箱和电话不接受用户咨询及商务合作。</p>',
																footer : [ '<a href="javascript:;" class="dialog-btn-cancel j-dialog-btn" data-event="cancel">关闭</a>' ]
																		.join('')
															});
												});
							});
		}();
		!function() {
			F
					.context('staticController')
					.run(
							function(data, tools) {
								var isStatic = this.isStatic;

								$.ajaxSetup({
									cache : false
								});

								//2014_10_11 zhangyijun02: 因增加广告轮播曝光日志逻辑，调整showtrack初始化方式
								require
										.async(
												[
														'common:widget/ui/usertrack/usertrack.js',
														'common:widget/ui/sidlog/pclog.js',
														'common:widget/ui/lazyload/lazyload.js',
														'common:widget/ui/cookie/cookie.js',
														'common:widget/ui/showtrack/showtrack.js',
														'common:widget/ui/items_post/items_post.js' ],
												function(usertrack, pclog,
														LazyLoad, Cookie,
														ShowTrack, itemsPost) {
													// 初始化点击监听
													usertrack.init();

													new LazyLoad(
															{
																lazy : $('img[data-original]'),
																expect : 250
															});

													itemsPost.init();

													var sendPv = (function(
															smartyData) {
														return function() {
															var logInfoExt = isStatic ? data
																	&& data.logInfoExt
																	: smartyData.dynamicData.logInfoExt;
															logInfoExt = logInfoExt
																	&& Object.prototype.toString
																			.call(logInfoExt) !== '[object Array]' ? logInfoExt
																	: {};
															logInfoExt.page = smartyData.staticData.page;
															pclog
																	.sendPv(logInfoExt);

															usertrack
																	.send({
																		da_src : encodeURIComponent($
																				.stringify({
																					page : smartyData.staticData.page
																				})),
																		element_type : 'pv'
																	});
														}
													})
															(
															// 
															{
																"staticData" : {
																	"page" : "wanggou_index"
																},
																"dynamicData" : {
																	"logInfoExt" : {
																		"search_key" : "[{\"s\":\"1441edaf97ca1f994859837258703f91\",\"s_name\":\"shoppinghome\"},{\"s\":\"8680f07724c1c7f92ee18601ddf12455\",\"s_name\":\"hotsale\"}]"
																	}
																}
															});

													function handleBaiduid() {
														var getBaiduidUrl = 'http://uid.nuomi.baidu.com/getbdid'; // 
														var retryCount = 1;
														getBaiduid();

														function getBaiduid() {
															$
																	.ajax(
																			getBaiduidUrl,
																			{
																				dataType : 'jsonp',
																				success : function(
																						json) {
																					if (json.errno == 0) {
																						var baiduid = json.data.baiduid;
																						if (baiduid) {
																							Cookie
																									.setRaw(
																											'BAIDUID',
																											baiduid,
																											365);
																						}
																						// 不管有没有baiduid，都发送pv
																						sendPv();
																					} else {
																						if (retryCount--) {
																							getBaiduid();
																						} else {
																							// 最后一次也获取失败
																							sendPv();
																						}
																					}
																				}
																			});
														}
													}

													handleBaiduid();

													//2014_10_11 zhangyijun02: 因增加广告轮播曝光日志逻辑，调整ShowTrack初始化方式
													//曝光日志统计
													ShowTrack.startShowTrack();
												});

							});
		}();
	</script>
	<!--27334673750804507658112022-->
	<script>
		var _trace_page_logid = 2733467375;
	</script>
</body>
</html>