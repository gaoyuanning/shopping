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

		stringBuffer.insert(0, "document.getElementById('c2').options[0].text='��ѡ�����Ŀ¼';\n");
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


<title>�����������Ϲ��ʡǮ��ʡ�� - �ٶ�Ŵ�׹���</title>
<meta name="description"
	content="�ٶ�Ŵ��Ϊ����ѡ������Ʒ�����ͼ۸�Ʒ������������С��ʳ����ֵŮװ���ͼ���װ��ʵ��С�ҵ硢��ֵЬ��������緢����������٣�����ʵ�ݣ������ݣ������ţ�">


<script>
	// pc��mobile�˻����в�ͬ�������ϸ��ո��ĵ�������
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
Ŀǰ������ʹ��ie6���������������Ѿ���ʱ�ˣ�Ϊ�˸��Ӱ�ȫ�ͷ���ؽ����Ź����ٶ�Ŵ���Ƽ���ʹ�������������<a href="http://www.microsoft.com/china/windows/IE/upgrade/index.aspx" class="kie-setup-IE8"  target="_blank" title="���������IE8�����">�������</a>������ʹ��<a href="http://browser.baidu.com/" class="kie-setup-baidu" target="_blank" title="�ٶ������">�ٶ������</a>�����鼫��������飡</div>
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
				class="gotop-ico inner-ico"><i class="iconfont">��</i></span><span
				class="inner-text">�ص�����</span></a></li>
		<li><div class="qrcode-side item">
				<i class="iconfont">��</i>
				<div class="qrcode-img">
					<a href="http://d.nuomi.com/?1009764s"
						mon="element=erweima&amp;position=1" target="_blank"><p
							class="img qrcode-discount">��ά��</p></a>
				</div>
			</div></li>
		<li><a target="_blank" class="item"
			href="http://uxsurvey.baidu.com/index.php?sid=58946&newtest=Y&lang=zh-Hans"><span
				class="question-ico inner-ico"><i class="iconfont">��</i></span><span
				class="inner-text">�ʾ����</span></a></li>
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
					document.getElementById('c2').options[0].text = '��ѡ�����Ŀ¼'
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
						document.getElementById('c2').options[0].text = '��ѡ�����Ŀ¼'
						document.getElementById('c2').options[0].value = '-1'
						document.getElementById('c2').selectedIndex = 0;
						return;
					}
					var categories = msg.split("-");
					document.getElementById('c2').options.length = categories.length + 1;
					document.getElementById('c2').options[0].text = '��ѡ�����Ŀ¼'
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

			<!-- ����ѡ��ʼ -->

			<table>
				<tr>
					<td><select name="category1" id="c1"
						onchange="changeCategory()">
							<option value="-1" selected="selected">�鿴һ������</option>
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
							<option value="-1" selected="selected">�鿴��������</option>
					</select></td>
				</tr>
			</table>

			<!-- ����ѡ�����-->


			<div class="uc-order-status" id="j-ucOrderStatus">
				<ul>
					<li>�м������ڵ�Ŵ��ȯ<a
						href="http://www.nuomi.com/uc/order/order?status=2"
						id="j-ucStatusLink-b">�鿴</a></li>
					<li><span></span>�ʶ���δ����<a
						href="http://www.nuomi.com/uc/comment/not" id="j-ucStatusLink-c">ȥ����</a></li>
					<li><span></span>�ʶ���δ����<a
						href="http://www.nuomi.com/uc/order/order?status=3"
						id="j-ucStatusLink-d">ȥ����</a></li>
					<li><span></span>���µ��̼һظ�<a
						href="http://www.nuomi.com/uc/comment/reply" id="j-ucStatusLink-e">�鿴</a></li>
				</ul>
				<a href="javascript:;" title="�ر���Ϣ��" class="close-button"
					id="j-ucStatusLink-a"></a>
			</div>
			<ul class="right-util first-level has-login" id="j-ucLoginList">
				<li class="welcome-text"><span class="welcome-tag"
					id="j-welcomeTag">Hi��fighter840</span></li>
				<li class="login"><a
					href="http://www.nuomi.com/pclogin/main/loginpage?u=http%3A%2F%2Fw.nuomi.com%2F%3Futm_souce%3Dhao123%26utm_medium%3Dgw_ny_mz%26utm_campaign%3Danchor%26cid%3D001650"
					id="j-barLoginBtn" mon="element=login">��¼</a><span
					class="sep-lines"></span></li>
				<li class="reg"><a
					href="http://passport.baidu.com/v2/?reg&tpl=nuomi&color=pink&u=http%3A%2F%2Fw.nuomi.com%2F%3Futm_souce%3Dhao123%26utm_medium%3Dgw_ny_mz%26utm_campaign%3Danchor%26cid%3D001650"
					id="j-barRegBtn" mon="element=register">ע��</a><span
					class="sep-lines"></span></li>
				<li class="logout"><a id="j-logout"
					href="https://passport.baidu.com/?logout" mon="element=logout">�˳�</a><span
					class="sep-lines"></span></li>
				<li class="qr-code j-bar-dropdown"><a
					href="http://d.nuomi.com/?1009764s" target="_blank">�ֻ�Ŵ��<span
						class="arrow-down-logo"></span></a><span class="sep-lines"></span>
					<p class="header-dropmenu">
						<a class="img qrcode-discount" href="http://d.nuomi.com/?1009764s"
							target="_blank">��ά��</a>
					</p></li>
				<li><a
					href="http://www.nuomi.com/uc/order/order?status=all&_=1448030733"
					mon="element=my_order">�ҵĶ���</a><span class="sep-lines"></span></li>
				<li class="j-bar-dropdown"><a
					href="http://www.nuomi.com/uc/order/order?status=all"
					mon="element=my_nuomi">�ҵ�Ŵ��<span class="arrow-down-logo"></span></a><span
					class="sep-lines"></span>
					<div class="uc-list header-dropmenu">
						<a
							href="http://www.nuomi.com/uc/order/order?status=all&_=1448030733"
							class="link">�ҵĶ���</a><a
							href="http://www.nuomi.com/uc/order/morders?orderStatus=all"
							class="link">ѡ������</a><a
							href="http://www.nuomi.com/uc/collection/online" class="link">�ҵ��ղ�</a><a
							href="http://www.nuomi.com/uc/comment/not" class="link">�ҵ�����</a><a
							href="http://baifubao.baidu.com/jump?uri=%2Fuser%2F0%2Fmy_bfb%2F0&domain=http%3A%2F%2Fwww.baifubao.com"
							class="link" target="_blank" style="display: none;">�ʻ����</a><a
							href="http://www.nuomi.com/uc/hongbao/list?status=1&type=2"
							class="link">�ҵ����</a><a
							href="http://www.nuomi.com/uc/giftcard/find?status=1"
							class="link">�ҵĵ���ȯ</a><a
							href="http://www.nuomi.com/uc/user/userinfo" class="link">�ʻ�����</a><a
							href="http://i.baidu.com/?from=nuomi" class="link"
							target="_blank">�ҵİٶ�</a>
					</div></li>
				<li id="j-visitedArea"><a
					href="http://w.nuomi.com/?utm_souce=hao123&utm_medium=gw_ny_mz&utm_campaign=anchor&cid=001650#"
					mon="element=recent_view"><span class="j-visitedArea-title">������</span><span
						class="arrow-down-logo"></span></a><span class="sep-lines"></span>
					<div class="header-dropmenu items right-side"
						id="j-visitedContainer">
						<div class="loading">����������...</div>
					</div></li>
				<li class="j-bar-dropdown"><a
					href="http://w.nuomi.com/?utm_souce=hao123&utm_medium=gw_ny_mz&utm_campaign=anchor&cid=001650#"><span>�����̼�</span><span
						class="arrow-down-logo"></span></a><span class="sep-lines"></span>
					<div class="merchant-list header-dropmenu">
						<a href="http://y.nuomi.com/" class="link" target="_blank">�̻�����</a><a
							href="http://cooperation.nuomi.com/clue/index" class="link"
							target="_blank">�������</a>
					</div></li>
				<li><a href="http://www.nuomi.com/help"
					mon="element=help_center">��������</a><span class="sep-lines"></span></li>
				<li class="j-bar-dropdown"><a
					href="http://w.nuomi.com/?utm_souce=hao123&utm_medium=gw_ny_mz&utm_campaign=anchor&cid=001650#"
					mon="element=notice"><span class="j-visitedArea-title">��ע</span><span
						class="arrow-down-logo"></span></a><span class="sep-lines"></span>
					<div class="notice-drop">
						<div class="new-erweima"></div>
						<h4>
							�ٶ�Ŵ��:<span class="hot">nuomivip</span>
						</h4>
					</div></li>
				<li class="no-right-border"><a
					href="http://w.nuomi.com/?utm_souce=hao123&utm_medium=gw_ny_mz&utm_campaign=anchor&cid=001650#"
					mon="element=collection" id="addFav">�ղ�</a></li>
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
				title="�ٶ�Ŵ��"><i class="iconfont logo-main">�K</i>
				<div class="logo-ext">
					<i class="iconfont logo-ext-my">�N</i><i
						class="iconfont logo-ext-dot">�Q</i><i
						class="iconfont logo-ext-life">�M</i><i
						class="iconfont logo-ext-address">�O</i>
				</div></a>
		</div>

		<div class="search-area clearfix">
			<div data-ui-id="main-searcher" class="form-wrap clearfix n-textbox"
				data-ctrl-context="default" data-ctrl-id="main-searcher">
				<form method="get" action="http://www.nuomi.com/search"
					id="j-searchForm">
					<input type="text" id="j-searchInput"
						class="searchinput input-placeholder" name="k" value=""
						data-placeholder="����" autocomplete="off"
						mon="element=search_input">
					<div class="searchbtn-wrap">
						<input type="submit" class="searchbtn" id="j-searchBtn" value=""
							mon="element=search_button"><i class="iconfont">��</i>
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
					<i class="iconfont refund">��</i>
					<div class="util-tip">δ���ѣ�����ˣ�</div>
				</div>
				<div class="util-item mid">
					<i class="iconfont pei">��</i>
					<div class="util-tip">���Ѳ����������⸶��</div>
				</div>
				<div class="util-item last">
					<i class="iconfont money">��</i>
					<div class="util-tip">�����Զ��ˣ�</div>
				</div></a>
		</div>
	</div>
	<script type="text/template" id="autocomplete-template">
    <!--for:${data} as ${suggestion}, ${index}-->
    <div data-index="${index}" class="j-suggestion-item n-textbox-autocomplete-item" mon="area=sug&element=${suggestion.relword}">
        <span class="word">${suggestion.relword}</span>
        <!--if:${suggestion.seg.length}--><span class="arrow"><i class="iconfont">&#xe61d;</i></span><!--/if-->
        <span class="sug-count">Լ<em class="count">${suggestion.count}</em>������</span>
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
				<li class="nav-item cate-row all-cate deep"><span class="item ">ȫ������</span><span
					class="arrow-down"></span>
					<div class="left-menu clearfix" id="j-catg-list">
						<div class="level-item" catg-id="326">
							<div data-index="0" class="first-level j-catg-row"
								mon="area=catg_326">
								<dl>
									<dt class="title">
										<a href="http://qd.nuomi.com/326" target="_top"
											mon="element=��ʳ">��ʳ</a>
									</dt>
									<dd>
										<a href="http://t10.nuomi.com/pc/t10/index" target="_top"
											class="" mon="element=��ѡƷ��">��ѡƷ��</a>
									</dd>
									<dd>
										<a href="http://qd.nuomi.com/380" target="_top" class=""
											mon="element=С�Կ��">С�Կ��</a>
									</dd>
									<dd>
										<a href="http://qd.nuomi.com/392" target="_top" class=""
											mon="element=������">������</a>
									</dd>
								</dl>
							</div>
							<div class="second-level with-min" mon="area=catg_hover_326">
								<div class="section clearfix">
									<div class="section-item clearfix  no-top-border ">
										<h3>���ŷ���</h3>
										<ul>
											<li><a href="http://t10.nuomi.com/pc/t10/index"
												target="_top" class="hot" mon="element=��ѡƷ��">��ѡƷ��</a></li>
											<li><a href="http://qd.nuomi.com/327" target="_top"
												class="" mon="element=������ʳ">������ʳ</a></li>
											<li><a href="http://qd.nuomi.com/364" target="_top"
												class="" mon="element=���">���</a></li>
											<li><a href="http://qd.nuomi.com/380" target="_top"
												class="" mon="element=С�Կ��">С�Կ��</a></li>
											<li><a href="http://qd.nuomi.com/392" target="_top"
												class="" mon="element=������">������</a></li>
											<li><a href="http://qd.nuomi.com/439" target="_top"
												class="" mon="element=����">����</a></li>
											<li><a href="http://qd.nuomi.com/460" target="_top"
												class="" mon="element=�տ�/����">�տ�/����</a></li>
											<li><a href="http://qd.nuomi.com/690" target="_top"
												class="" mon="element=�ɹ�/���">�ɹ�/���</a></li>
											<li><a href="http://qd.nuomi.com/691" target="_top"
												class="" mon="element=�ۻ�����">�ۻ�����</a></li>
											<li><a href="http://qd.nuomi.com/879" target="_top"
												class="" mon="element=��ζ��ʳ">��ζ��ʳ</a></li>
											<li><a href="http://qd.nuomi.com/880" target="_top"
												class="" mon="element=�����Ʒ">�����Ʒ</a></li>
											<li><a href="http://qd.nuomi.com/881" target="_top"
												class="" mon="element=����">����</a></li>
											<li><a href="http://qd.nuomi.com/954" target="_top"
												class="" mon="element=������/�ư�/����">������/�ư�/����</a></li>
											<li><a href="http://qd.nuomi.com/1000002" target="_top"
												class="" mon="element=�����µ�">�����µ�</a></li>
										</ul>
									</div>
									<div class="section-item clearfix ">
										<h3>�й���</h3>
										<ul>
											<li><a href="http://qd.nuomi.com/388" target="_top"
												class="" mon="element=����">����</a></li>
											<li><a href="http://qd.nuomi.com/393" target="_top"
												class="" mon="element=����">����</a></li>
											<li><a href="http://qd.nuomi.com/424" target="_top"
												class="" mon="element=�����">�����</a></li>
											<li><a href="http://qd.nuomi.com/450" target="_top"
												class="" mon="element=������">������</a></li>
											<li><a href="http://qd.nuomi.com/451" target="_top"
												class="" mon="element=�½�/�����">�½�/�����</a></li>
											<li><a href="http://qd.nuomi.com/454" target="_top"
												class="" mon="element=������">������</a></li>
											<li><a href="http://qd.nuomi.com/488" target="_top"
												class="" mon="element=���">���</a></li>
											<li><a href="http://qd.nuomi.com/504" target="_top"
												class="" mon="element=������">������</a></li>
											<li><a href="http://qd.nuomi.com/509" target="_top"
												class="" mon="element=���ϲ�">���ϲ�</a></li>
											<li><a href="http://qd.nuomi.com/652" target="_top"
												class="" mon="element=³��">³��</a></li>
											<li><a href="http://qd.nuomi.com/653" target="_top"
												class="" mon="element=������">������</a></li>
											<li><a href="http://qd.nuomi.com/654" target="_top"
												class="" mon="element=���ݲ�">���ݲ�</a></li>
											<li><a href="http://qd.nuomi.com/655" target="_top"
												class="" mon="element=��ʳ">��ʳ</a></li>
											<li><a href="http://qd.nuomi.com/692" target="_top"
												class="" mon="element=�����/˽����">�����/˽����</a></li>
											<li><a href="http://qd.nuomi.com/693" target="_top"
												class="" mon="element=������">������</a></li>
											<li><a href="http://qd.nuomi.com/694" target="_top"
												class="" mon="element=���ɲ�">���ɲ�</a></li>
											<li><a href="http://qd.nuomi.com/695" target="_top"
												class="" mon="element=�ͼҲ�">�ͼҲ�</a></li>
											<li><a href="http://qd.nuomi.com/696" target="_top"
												class="" mon="element=̨���">̨���</a></li>
											<li><a href="http://qd.nuomi.com/697" target="_top"
												class="" mon="element=����">����</a></li>
											<li><a href="http://qd.nuomi.com/874" target="_top"
												class="" mon="element=�ղ�">�ղ�</a></li>
											<li><a href="http://qd.nuomi.com/878" target="_top"
												class="" mon="element=����">����</a></li>
											<li><a href="http://qd.nuomi.com/883" target="_top"
												class="" mon="element=��Ѽ">��Ѽ</a></li>
											<li><a href="http://qd.nuomi.com/884" target="_top"
												class="" mon="element=������">������</a></li>
											<li><a href="http://qd.nuomi.com/885" target="_top"
												class="" mon="element=ɽ����">ɽ����</a></li>
											<li><a href="http://qd.nuomi.com/886" target="_top"
												class="" mon="element=���ϲ�">���ϲ�</a></li>
											<li><a href="http://qd.nuomi.com/887" target="_top"
												class="" mon="element=����">����</a></li>
											<li><a href="http://qd.nuomi.com/888" target="_top"
												class="" mon="element=���ϲ�">���ϲ�</a></li>
											<li><a href="http://qd.nuomi.com/889" target="_top"
												class="" mon="element=�ӱ���">�ӱ���</a></li>
											<li><a href="http://qd.nuomi.com/890" target="_top"
												class="" mon="element=�����в�">�����в�</a></li>
											<li><a href="http://qd.nuomi.com/962" target="_top"
												class="" mon="element=ȫ���в�">ȫ���в�</a></li>
										</ul>
									</div>
									<div class="section-item clearfix ">
										<h3>�����</h3>
										<ul>
											<li><a href="http://qd.nuomi.com/389" target="_top"
												class="" mon="element=�ձ�����">�ձ�����</a></li>
											<li><a href="http://qd.nuomi.com/390" target="_top"
												class="" mon="element=�����ǲ�">�����ǲ�</a></li>
											<li><a href="http://qd.nuomi.com/391" target="_top"
												class="" mon="element=����">����</a></li>
											<li><a href="http://qd.nuomi.com/501" target="_top"
												class="" mon="element=��������">��������</a></li>
											<li><a href="http://qd.nuomi.com/876" target="_top"
												class="" mon="element=�ж���">�ж���</a></li>
											<li><a href="http://qd.nuomi.com/877" target="_top"
												class="" mon="element=����">����</a></li>
											<li><a href="http://qd.nuomi.com/882" target="_top"
												class="" mon="element=�����������">�����������</a></li>
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
											mon="element=��Ӱ">��Ӱ</a>
									</dt>
									<dd>
										<a href="http://qd.nuomi.com/xuanzuo/" target="_top" class=""
											mon="element=���߶���">���߶���</a>
									</dd>
									<dd>
										<a href="http://qd.nuomi.com/film/" target="_top" class=""
											mon="element=��ӰƱ�Ź�">��ӰƱ�Ź�</a>
									</dd>
								</dl>
							</div>
							<div class="second-level with-min" mon="area=catg_hover_345">
								<div class="section clearfix">
									<div class="section-item clearfix no-top-border">
										<h3>����ӰƬ</h3>
										<ul>
											<li><a href="http://qd.nuomi.com/film/9762"
												target="_top" class="" mon="element=������Ϸ3����Ц��(��)">������Ϸ3����Ц��(��)</a></li>
											<li><a href="http://qd.nuomi.com/film/9771"
												target="_top" class="" mon="element=�ҵ���Ůʱ��">�ҵ���Ůʱ��</a></li>
											<li><a href="http://qd.nuomi.com/film/9765"
												target="_top" class="" mon="element=�����ٵݣ�����֮ս ">�����ٵݣ�����֮ս
											</a></li>
											<li><a href="http://qd.nuomi.com/film/9718"
												target="_top" class="" mon="element=007�����鵳">007�����鵳</a></li>
											<li><a href="http://qd.nuomi.com/film/9741"
												target="_top" class="" mon="element=���Ǿ�Ԯ">���Ǿ�Ԯ</a></li>
											<li><a href="http://qd.nuomi.com/film/9655"
												target="_top" class="" mon="element=һ������">һ������</a></li>
											<li><a href="http://qd.nuomi.com/film/9770"
												target="_top" class="" mon="element=ʮ�³�����¹�">ʮ�³�����¹�</a></li>
											<li><a href="http://qd.nuomi.com/film/9773"
												target="_top" class="" mon="element=�����¼�">�����¼�</a></li>
											<li><a href="http://qd.nuomi.com/film/9614"
												target="_top" class="" mon="element=ǰ��2����̥����ս">ǰ��2����̥����ս</a></li>
											<li><a href="http://qd.nuomi.com/film/9721"
												target="_top" class="" mon="element=��������2">��������2</a></li>
											<li><a href="http://qd.nuomi.com/film/9729"
												target="_top" class="" mon="element=ʷŬ�ȣ��������Ӱ">ʷŬ�ȣ��������Ӱ</a></li>
											<li><a href="http://qd.nuomi.com/film/9548"
												target="_top" class="" mon="element=�㰲����ȹ���������">�㰲����ȹ���������</a></li>
											<li><a href="http://qd.nuomi.com/film/9752"
												target="_top" class="" mon="element=��ʧ������">��ʧ������</a></li>
											<li><a href="http://qd.nuomi.com/film/9764"
												target="_top" class="" mon="element=����������">����������</a></li>
											<li><a href="http://qd.nuomi.com/film/9706"
												target="_top" class="" mon="element=�ƶ��Թ����պ�����">�ƶ��Թ����պ�����</a></li>
											<li><a href="http://qd.nuomi.com/film/9732"
												target="_top" class="" mon="element=������֮ѩ����">������֮ѩ����</a></li>
											<li><a href="http://qd.nuomi.com/film/9769"
												target="_top" class="" mon="element=�����������ܶ�Ա">�����������ܶ�Ա</a></li>
											<li><a href="http://qd.nuomi.com/film/9607"
												target="_top" class="" mon="element=�����ط���">�����ط���</a></li>
											<li><a href="http://qd.nuomi.com/film/9599"
												target="_top" class="" mon="element=��ҹ������ͷ">��ҹ������ͷ</a></li>
											<li><a href="http://qd.nuomi.com/film/9444"
												target="_top" class="" mon="element=�������">�������</a></li>
											<li><a href="http://qd.nuomi.com/film/9600"
												target="_top" class="" mon="element=����֤��">����֤��</a></li>
											<li><a href="http://qd.nuomi.com/film/9651"
												target="_top" class="" mon="element=�������">�������</a></li>
											<li><a href="http://qd.nuomi.com/film/9758"
												target="_top" class="" mon="element=�ҵ��ഺ��">�ҵ��ഺ��</a></li>
											<li><a href="http://qd.nuomi.com/film/9652"
												target="_top" class="" mon="element=����ħ��">����ħ��</a></li>
										</ul>
									</div>
									<div class="section-item clearfix">
										<h3>����Ժ��</h3>
										<ul>
											<li><a
												href="http://qd.nuomi.com/cinema/c36bc51cf22561406ca3cc34"
												target="_top" class="" mon="element=��������Ӱ��(��ī������)">��������Ӱ��(��ī������)</a></li>
											<li><a
												href="http://qd.nuomi.com/cinema/cc788fde8394a39389fc06a3"
												target="_top" class="" mon="element=������������Ӱ��">������������Ӱ��</a></li>
											<li><a
												href="http://qd.nuomi.com/cinema/e85e25273f8dee4a95f08c65"
												target="_top" class="" mon="element=�ൺ17.5Ӱ��(���ص�)">�ൺ17.5Ӱ��(���ص�)</a></li>
											<li><a
												href="http://qd.nuomi.com/cinema/f633606ae44115570b69d96b"
												target="_top" class="" mon="element=�ൺ����Ӱ��">�ൺ����Ӱ��</a></li>
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
											mon="element=��������">��������</a>
									</dt>
									<dd>
										<a href="http://qd.nuomi.com/341" target="_top" class=""
											mon="element=KTV">KTV</a>
									</dd>
									<dd>
										<a href="http://qd.nuomi.com/338" target="_top" class=""
											mon="element=��Ȫϴԡ">��Ȫϴԡ</a>
									</dd>
									<dd>
										<a href="http://qd.nuomi.com/347" target="_top" class=""
											mon="element=���ư�Ħ">���ư�Ħ</a>
									</dd>
								</dl>
							</div>
							<div class="second-level with-min" mon="area=catg_hover_320">
								<div class="section clearfix">
									<div class="section-item clearfix">
										<ul>
											<li><a href="http://qd.nuomi.com/338" target="_top"
												class="" mon="element=��Ȫϴԡ">��Ȫϴԡ</a></li>
											<li><a href="http://qd.nuomi.com/341" target="_top"
												class="" mon="element=KTV">KTV</a></li>
											<li><a href="http://qd.nuomi.com/347" target="_top"
												class="" mon="element=���ư�Ħ">���ư�Ħ</a></li>
											<li><a href="http://qd.nuomi.com/349" target="_top"
												class="" mon="element=�Ļ�����">�Ļ�����</a></li>
											<li><a href="http://qd.nuomi.com/528" target="_top"
												class="" mon="element=��������">��������</a></li>
											<li><a href="http://qd.nuomi.com/700" target="_top"
												class="" mon="element=��ժ">��ժ</a></li>
											<li><a href="http://qd.nuomi.com/891" target="_top"
												class="" mon="element=4D/5D��Ӱ">4D/5D��Ӱ</a></li>
											<li><a href="http://qd.nuomi.com/895" target="_top"
												class="" mon="element=����">����</a></li>
											<li><a href="http://qd.nuomi.com/896" target="_top"
												class="" mon="element=����/��Ϸ��">����/��Ϸ��</a></li>
											<li><a href="http://qd.nuomi.com/897" target="_top"
												class="" mon="element=DIY�ֹ�">DIY�ֹ�</a></li>
											<li><a href="http://qd.nuomi.com/898" target="_top"
												class="" mon="element=��������">��������</a></li>
											<li><a href="http://qd.nuomi.com/899" target="_top"
												class="" mon="element=����CS">����CS</a></li>
											<li><a href="http://qd.nuomi.com/900" target="_top"
												class="" mon="element=������">������</a></li>
											<li><a href="http://qd.nuomi.com/901" target="_top"
												class="" mon="element=�������ֻ">�������ֻ</a></li>
											<li><a href="http://qd.nuomi.com/911" target="_top"
												class="" mon="element=��Ӿ">��Ӿ</a></li>
										</ul>
										<ul>
											<li><a href="http://qd.nuomi.com/914" target="_top"
												class="" mon="element=��ѩ/����">��ѩ/����</a></li>
											<li><a href="http://qd.nuomi.com/919" target="_top"
												class="" mon="element=������������">������������</a></li>
											<li><a href="http://qd.nuomi.com/920" target="_top"
												class="" mon="element=����԰/ˮ����԰">����԰/ˮ����԰</a></li>
											<li><a href="http://qd.nuomi.com/922" target="_top"
												class="" mon="element=¼����">¼����</a></li>
											<li><a href="http://qd.nuomi.com/952" target="_top"
												class="" mon="element=�˶�����">�˶�����</a></li>
											<li><a href="http://qd.nuomi.com/953" target="_top"
												class="" mon="element=�ݳ�/չ��">�ݳ�/չ��</a></li>
											<li><a href="http://qd.nuomi.com/1000003" target="_top"
												class="" mon="element=�����µ�">�����µ�</a></li>
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
											target="_blank" mon="element=����">����</a>
									</dt>
									<dd>
										<a
											href="http://mall.baidu.com/category?catidList=1&from=nuomi_pc_sm1"
											target="_blank" mon="element=ʳƷ">ʳƷ</a>
									</dd>
									<dd>
										<a
											href="http://mall.baidu.com/category?catidList=1232&from=nuomi_pc_sm2"
											target="_blank" mon="element=ĸӤ">ĸӤ</a>
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
											mon="element=�������">�������</a>
									</dt>
									<dd>
										<a href="http://qd.nuomi.com/703" target="_top" class=""
											mon="element=�侵">�侵</a>
									</dd>
									<dd>
										<a href="http://qd.nuomi.com/956" target="_top" class=""
											mon="element=����">����</a>
									</dd>
									<dd>
										<a href="http://qd.nuomi.com/930" target="_top" class=""
											mon="element=�ʻ�">�ʻ�</a>
									</dd>
								</dl>
							</div>
							<div class="second-level with-min" mon="area=catg_hover_316">
								<div class="section clearfix">
									<div class="section-item clearfix">
										<ul>
											<li><a href="http://qd.nuomi.com/319" target="_top"
												class="" mon="element=���ճ�ӡ">���ճ�ӡ</a></li>
											<li><a href="http://qd.nuomi.com/367" target="_top"
												class="" mon="element=�������">�������</a></li>
											<li><a href="http://qd.nuomi.com/375" target="_top"
												class="" mon="element=������ѵ">������ѵ</a></li>
											<li><a href="http://qd.nuomi.com/428" target="_top"
												class="" mon="element=��ͯ��Ӱ">��ͯ��Ӱ</a></li>
											<li><a href="http://qd.nuomi.com/459" target="_top"
												class="" mon="element=��ǻ">��ǻ</a></li>
											<li><a href="http://qd.nuomi.com/540" target="_top"
												class="" mon="element=�����������">�����������</a></li>
											<li><a href="http://qd.nuomi.com/565" target="_top"
												class="" mon="element=��ɴ��Ӱ">��ɴ��Ӱ</a></li>
											<li><a href="http://qd.nuomi.com/614" target="_top"
												class="" mon="element=����д��">����д��</a></li>
											<li><a href="http://qd.nuomi.com/670" target="_top"
												class="" mon="element=���">���</a></li>
											<li><a href="http://qd.nuomi.com/702" target="_top"
												class="" mon="element=����">����</a></li>
											<li><a href="http://qd.nuomi.com/703" target="_top"
												class="" mon="element=�侵">�侵</a></li>
											<li><a href="http://qd.nuomi.com/704" target="_top"
												class="" mon="element=��װ����">��װ����</a></li>
											<li><a href="http://qd.nuomi.com/705" target="_top"
												class="" mon="element=ϴ�µ�">ϴ�µ�</a></li>
											<li><a href="http://qd.nuomi.com/706" target="_top"
												class="" mon="element=��������">��������</a></li>
											<li><a href="http://qd.nuomi.com/709" target="_top"
												class="" mon="element=�������">�������</a></li>
										</ul>
										<ul>
											<li><a href="http://qd.nuomi.com/875" target="_top"
												class="" mon="element=���ع���">���ع���</a></li>
											<li><a href="http://qd.nuomi.com/923" target="_top"
												class="" mon="element=֤����">֤����</a></li>
											<li><a href="http://qd.nuomi.com/924" target="_top"
												class="" mon="element=��Ƭ��ӡ">��Ƭ��ӡ</a></li>
											<li><a href="http://qd.nuomi.com/927" target="_top"
												class="" mon="element=��������">��������</a></li>
											<li><a href="http://qd.nuomi.com/928" target="_top"
												class="" mon="element=��У/����">��У/����</a></li>
											<li><a href="http://qd.nuomi.com/930" target="_top"
												class="" mon="element=�ʻ�">�ʻ�</a></li>
											<li><a href="http://qd.nuomi.com/932" target="_top"
												class="" mon="element=��ˮ/����">��ˮ/����</a></li>
											<li><a href="http://qd.nuomi.com/956" target="_top"
												class="" mon="element=����">����</a></li>
											<li><a href="http://qd.nuomi.com/1000004" target="_top"
												class="" mon="element=�����µ�">�����µ�</a></li>
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
										<a href="http://t.nuomi.com/" target="_top" mon="element=�Ƶ�">�Ƶ�</a>
									</dt>
									<dd>
										<a href="http://t.nuomi.com/qd" target="_top" class=""
											mon="element=�ൺ">�ൺ</a>
									</dd>
									<dd>
										<a href="http://t.nuomi.com/bj" target="_top" class=""
											mon="element=����">����</a>
									</dd>
									<dd>
										<a href="http://t.nuomi.com/sh" target="_top" class=""
											mon="element=�Ϻ�">�Ϻ�</a>
									</dd>
								</dl>
							</div>
						</div>
						<div class="level-item" catg-id="708">
							<div data-index="6" class="first-level j-catg-row"
								mon="area=catg_708">
								<dl>
									<dt class="title">
										<a href="http://v.nuomi.com/" target="_top" mon="element=��������">��������</a>
									</dt>
									<dd>
										<a href="http://v.nuomi.com/1000338" target="_top" class=""
											mon="element=��Ȫϴԡ">��Ȫϴԡ</a>
									</dd>
									<dd>
										<a href="http://v.nuomi.com/1000700" target="_top" class=""
											mon="element=��ժ">��ժ</a>
									</dd>
								</dl>
							</div>
							<div class="second-level with-min" mon="area=catg_hover_708">
								<div class="section clearfix">
									<div class="section-item clearfix">
										<ul>
											<li><a href="http://v.nuomi.com/1000338" target="_top"
												class="" mon="element=��Ȫϴԡ">��Ȫϴԡ</a></li>
											<li><a href="http://v.nuomi.com/1000700" target="_top"
												class="" mon="element=��ժ">��ժ</a></li>
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
											mon="element=����">����</a>
									</dt>
									<dd>
										<a href="http://qd.nuomi.com/646" target="_top" class=""
											mon="element=����">����</a>
									</dd>
									<dd>
										<a href="http://qd.nuomi.com/707" target="_top" class=""
											mon="element=����SPA">����SPA</a>
									</dd>
									<dd>
										<a href="http://qd.nuomi.com/556" target="_top" class=""
											mon="element=����">����</a>
									</dd>
								</dl>
							</div>
							<div class="second-level with-min" mon="area=catg_hover_955">
								<div class="section clearfix">
									<div class="section-item clearfix">
										<ul>
											<li><a href="http://qd.nuomi.com/556" target="_top"
												class="" mon="element=����">����</a></li>
											<li><a href="http://qd.nuomi.com/646" target="_top"
												class="" mon="element=����">����</a></li>
											<li><a href="http://qd.nuomi.com/707" target="_top"
												class="" mon="element=����SPA">����SPA</a></li>
											<li><a href="http://qd.nuomi.com/925" target="_top"
												class="" mon="element=��ױ">��ױ</a></li>
											<li><a href="http://qd.nuomi.com/926" target="_top"
												class="" mon="element=��������">��������</a></li>
										</ul>
									</div>
								</div>
							</div>
						</div>
					</div></li>
				<li class="nav-item nav-item-first"><a
					href="http://qd.nuomi.com/" target="_top" class="item first "
					mon="element=��ҳ">��ҳ</a></li>
				<li class="nav-item hot-item-l"><a
					href="http://t10.nuomi.com/pc/t10/index" target="_top"
					class="item " mon="element=��ѡƷ��">��ѡƷ��</a><i class="iconfont">��</i></li>
				<li class="nav-item hot-item-s"><a
					href="http://qd.nuomi.com/movie" target="_top" class="item "
					mon="element=��Ӱ">��Ӱ</a><i class="iconfont">��</i></li>
				<li class="nav-item"><a href="http://t.nuomi.com/"
					target="_top" class="item " mon="element=�Ƶ�">�Ƶ�</a></li>
				<li class="nav-item"><a href="http://qd.nuomi.com/new"
					target="_top" class="item " mon="element=�����µ�">�����µ�</a></li>
				<li class="nav-item"><a
					href="http://mall.baidu.com/?from=nuomi_pc_ba" target="_blank"
					class="item active" mon="element=����">ȥ����</a></li>
				<li class="nav-item"><a
					href="http://waimai.baidu.com/?utm_source=bainuo&utm_medium=nav&utm_content=toububiaoqian&utm_term=default&utm_campaign=qingdao&cid=PC_%E5%93%81%E7%89%8C%E6%8E%A8%E5%B9%BF_940766"
					target="_blank" class="item last" mon="element=����">ȥ����</a></li>
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
										mon="area=wCatg&amp;element=�����µ�">�����µ�</a>
								</div>
							</div>
							<div class="item nuomi j-sub-item" data-item="nuomi">
								<div class="item-desc">
									<span class="mark"></span> <a class="item-name"
										href="http://www.nuomi.com/search/%E7%B3%AF%E7%B1%B3%E4%BC%98%E9%80%89/1/0/wanggou-1000001-0-0-pd-0-0"
										mon="area=wCatg&amp;element=Ŵ����ѡ">Ŵ����ѡ</a>
								</div>
							</div>
							<div class="item catg-353 j-sub-item" data-item="catg-353">
								<div class="item-desc">
									<span class="mark"></span> <a class="item-name"
										href="http://w.nuomi.com/353-0/0-f-gn"
										mon="area=wCatg&amp;element=353">��װ/����</a>
								</div>
								<div class="category-content clearfix">
									<div class="w-category-item"
										alog-alias="bainuo-wanggou-category-item"
										alog-group="bainuo-wanggou-category-item">
										<div class="title">Ŵ����ѡ</div>
										<div class="detail">
											<a class="detail-item" target="_blank"
												href="http://w.nuomi.com/353-805/0-f-gn"
												mon="area=wCatgHover&amp;element=805">Ůװ</a> <a
												class="detail-item" target="_blank"
												href="http://w.nuomi.com/353-806/0-f-gn"
												mon="area=wCatgHover&amp;element=806">��װ</a> <a
												class="detail-item" target="_blank"
												href="http://w.nuomi.com/353-854/0-f-gn"
												mon="area=wCatgHover&amp;element=854">����/��Ʒ</a> <a
												class="detail-item" target="_blank"
												href="http://w.nuomi.com/353-855/0-f-gn"
												mon="area=wCatgHover&amp;element=855">�������</a>
										</div>
									</div>
									<div class="w-category-item"
										alog-alias="bainuo-wanggou-category-item"
										alog-group="bainuo-wanggou-category-item">
										<div class="title">Ʒ���Ƽ�</div>
										<div class="detail">
											<a class="detail-item" target="_blank"
												href="http://www.nuomi.com/search/%E5%8D%97%E6%9E%81%E4%BA%BA/1/0/wanggou-0-0-0-pd-0-0"
												mon="area=wCatgHoverBrand&amp;element=8">�ϼ���</a> <a
												class="detail-item" target="_blank"
												href="http://www.nuomi.com/search/%E5%8C%97%E6%9E%81%E7%BB%92/1/0/wanggou-0-0-0-pd-0-0"
												mon="area=wCatgHoverBrand&amp;element=9">������</a> <a
												class="detail-item" target="_blank"
												href="http://www.nuomi.com/search?k=%E6%81%92%E6%BA%90%E7%A5%A5+%E7%BD%91%E8%B4%AD"
												mon="area=wCatgHoverBrand&amp;element=120">��Դ��</a> <a
												class="detail-item" target="_blank"
												href="http://www.nuomi.com/search?k=%E4%B8%83%E5%8C%B9%E7%8B%BC+%E7%BD%91%E8%B4%AD"
												mon="area=wCatgHoverBrand&amp;element=122">��ƥ��</a> <a
												class="detail-item" target="_blank"
												href="http://www.nuomi.com/search?k=%E9%9B%85%E6%88%88%E5%B0%94+%E7%BD%91%E8%B4%AD"
												mon="area=wCatgHoverBrand&amp;element=123">�Ÿ��</a> <a
												class="detail-item" target="_blank"
												href="http://www.nuomi.com/search?k=%E5%A9%B7%E7%BE%8E+%E7%BD%91%E8%B4%AD"
												mon="area=wCatgHoverBrand&amp;element=125">����</a> <a
												class="detail-item" target="_blank"
												href="http://www.nuomi.com/search?k=afs+jeep+%E7%BD%91%E8%B4%AD"
												mon="area=wCatgHoverBrand&amp;element=126">ս�ؼ���</a>
										</div>
									</div>
								</div>
							</div>
							<div class="item catg-357 j-sub-item" data-item="catg-357">
								<div class="item-desc">
									<span class="mark"></span> <a class="item-name"
										href="http://w.nuomi.com/357-0/0-f-gn"
										mon="area=wCatg&amp;element=357">�ҾӼҷ�</a>
								</div>
								<div class="category-content clearfix" style="top: -105px;">
									<div class="w-category-item"
										alog-alias="bainuo-wanggou-category-item"
										alog-group="bainuo-wanggou-category-item">
										<div class="title">Ŵ����ѡ</div>
										<div class="detail">
											<a class="detail-item" target="_blank"
												href="http://w.nuomi.com/357-823/0-f-gn"
												mon="area=wCatgHover&amp;element=823">�Ӽ�����</a> <a
												class="detail-item" target="_blank"
												href="http://w.nuomi.com/357-825/0-f-gn"
												mon="area=wCatgHover&amp;element=825">��������</a> <a
												class="detail-item" target="_blank"
												href="http://w.nuomi.com/357-826/0-f-gn"
												mon="area=wCatgHover&amp;element=826">�ҷ�</a> <a
												class="detail-item" target="_blank"
												href="http://w.nuomi.com/357-827/0-f-gn"
												mon="area=wCatgHover&amp;element=827">�Ҿ߼���</a> <a
												class="detail-item" target="_blank"
												href="http://w.nuomi.com/357-859/0-f-gn"
												mon="area=wCatgHover&amp;element=859">����</a>
										</div>
									</div>
									<div class="w-category-item"
										alog-alias="bainuo-wanggou-category-item"
										alog-group="bainuo-wanggou-category-item">
										<div class="title">Ʒ���Ƽ�</div>
										<div class="detail">
											<a class="detail-item" target="_blank"
												href="http://www.nuomi.com/search/%E4%B8%8A%E4%B8%96/1/0/wanggou-0-0-0-pd-0-0"
												mon="area=wCatgHoverBrand&amp;element=78">����</a> <a
												class="detail-item" target="_blank"
												href="http://www.nuomi.com/search?k=%E5%AE%B6%E4%B8%96%E6%AF%94"
												mon="area=wCatgHoverBrand&amp;element=83">������</a> <a
												class="detail-item" target="_blank"
												href="http://www.nuomi.com/search?k=%E7%B4%A2%E5%B0%94%E8%AF%BA"
												mon="area=wCatgHoverBrand&amp;element=79">����ŵ</a> <a
												class="detail-item" target="_blank"
												href="http://www.nuomi.com/search?k=%E7%BE%8E%E8%8F%B1"
												mon="area=wCatgHoverBrand&amp;element=81">����</a> <a
												class="detail-item" target="_blank"
												href="http://www.nuomi.com/search?k=%E5%AA%9B%E5%B0%9A%E5%AE%85%E5%93%81"
												mon="area=wCatgHoverBrand&amp;element=84">����լƷ</a> <a
												class="detail-item" target="_blank"
												href="http://www.nuomi.com/search?k=%E4%B9%85%E9%87%8F+%E7%BD%91%E8%B4%AD"
												mon="area=wCatgHoverBrand&amp;element=137">����</a> <a
												class="detail-item" target="_blank"
												href="http://www.nuomi.com/search?k=%E4%BE%9D%E6%9F%8F%E6%81%8B"
												mon="area=wCatgHoverBrand&amp;element=198">������</a> <a
												class="detail-item" target="_blank"
												href="http://www.nuomi.com/search?k=%E5%98%89%E4%BF%A1"
												mon="area=wCatgHoverBrand&amp;element=199">����</a> <a
												class="detail-item" target="_blank"
												href="http://www.nuomi.com/search?k=%E5%8D%9A%E6%B4%8B%E5%AE%B6%E7%BA%BA"
												mon="area=wCatgHoverBrand&amp;element=200">����ҷ�</a> <a
												class="detail-item" target="_blank"
												href="http://www.nuomi.com/search?k=%E6%81%90%E9%BE%99%E7%BA%BA%E7%BB%87"
												mon="area=wCatgHoverBrand&amp;element=201">DINOSAUR/������֯</a>
											<a class="detail-item" target="_blank"
												href="http://www.nuomi.com/search?k=%E6%B3%B0%E7%A1%95"
												mon="area=wCatgHoverBrand&amp;element=202">̩˶</a> <a
												class="detail-item" target="_blank"
												href="http://www.nuomi.com/search?k=%E7%9A%8E%E6%B4%81"
												mon="area=wCatgHoverBrand&amp;element=203">��</a> <a
												class="detail-item" target="_blank"
												href="http://www.nuomi.com/search?k=%E5%8D%8E%E5%B7%9D"
												mon="area=wCatgHoverBrand&amp;element=204">����</a> <a
												class="detail-item" target="_blank"
												href="http://www.nuomi.com/search?k=%E8%9C%9C%E8%9C%9C%E8%8A%B1"
												mon="area=wCatgHoverBrand&amp;element=205">���ۻ�</a> <a
												class="detail-item" target="_blank"
												href="http://www.nuomi.com/search?k=%E8%B5%9B%E5%98%89"
												mon="area=wCatgHoverBrand&amp;element=206">����</a> <a
												class="detail-item" target="_blank"
												href="http://www.nuomi.com/search?k=%E6%98%93%E5%AE%B6%E5%AE%9C"
												mon="area=wCatgHoverBrand&amp;element=207">�׼���</a> <a
												class="detail-item" target="_blank"
												href="http://www.nuomi.com/search?k=%E6%81%92%E6%BA%90%E7%A5%A5%E5%AE%B6%E7%BA%BA"
												mon="area=wCatgHoverBrand&amp;element=217">��Դ��ҷ�</a> <a
												class="detail-item" target="_blank"
												href="http://www.nuomi.com/search?k=%E6%BA%A2%E5%BD%A9%E5%B9%B4%E5%8D%8E"
												mon="area=wCatgHoverBrand&amp;element=218">����껪</a> <a
												class="detail-item" target="_blank"
												href="http://www.nuomi.com/search?k=%E5%A8%81%E9%9C%B2%E5%A3%AB"
												mon="area=wCatgHoverBrand&amp;element=219">��¶ʿ</a>
										</div>
									</div>
								</div>
							</div>
							<div class="item catg-675 j-sub-item" data-item="catg-675">
								<div class="item-desc">
									<span class="mark"></span> <a class="item-name"
										href="http://w.nuomi.com/675-0/0-f-gn"
										mon="area=wCatg&amp;element=675">ʳƷ����</a>
								</div>
								<div class="category-content clearfix">
									<div class="w-category-item"
										alog-alias="bainuo-wanggou-category-item"
										alog-group="bainuo-wanggou-category-item">
										<div class="title">Ŵ����ѡ</div>
										<div class="detail">
											<a class="detail-item" target="_blank"
												href="http://w.nuomi.com/675-801/0-f-gn"
												mon="area=wCatgHover&amp;element=801">������ʳ</a> <a
												class="detail-item" target="_blank"
												href="http://w.nuomi.com/675-802/0-f-gn"
												mon="area=wCatgHover&amp;element=802">��ˮ���</a> <a
												class="detail-item" target="_blank"
												href="http://w.nuomi.com/675-803/0-f-gn"
												mon="area=wCatgHover&amp;element=803">����Ʒ</a> <a
												class="detail-item" target="_blank"
												href="http://w.nuomi.com/675-804/0-f-gn"
												mon="area=wCatgHover&amp;element=804">��ȯ/����</a> <a
												class="detail-item" target="_blank"
												href="http://w.nuomi.com/675-853/0-f-gn"
												mon="area=wCatgHover&amp;element=853">���͸ɻ�</a>
										</div>
									</div>
									<div class="w-category-item"
										alog-alias="bainuo-wanggou-category-item"
										alog-group="bainuo-wanggou-category-item">
										<div class="title">Ʒ���Ƽ�</div>
										<div class="detail">
											<a class="detail-item" target="_blank"
												href="http://www.nuomi.com/search?k=%E8%8B%8F%E7%A6%BE+%E7%BD%91%E8%B4%AD"
												mon="area=wCatgHoverBrand&amp;element=111">�պ�</a> <a
												class="detail-item" target="_blank"
												href="http://www.nuomi.com/search?k=%E5%A5%BD%E6%83%B3%E4%BD%A0+%E7%BD%91%E8%B4%AD"
												mon="area=wCatgHoverBrand&amp;element=113">������</a> <a
												class="detail-item" target="_blank"
												href="http://www.nuomi.com/search?k=%E5%85%BB%E7%94%9F%E5%A0%82+%E7%BD%91%E8%B4%AD"
												mon="area=wCatgHoverBrand&amp;element=115">������</a> <a
												class="detail-item" target="_blank"
												href="http://www.nuomi.com/search?k=%E7%9A%87%E4%B8%8A%E7%9A%87+%E7%BD%91%E8%B4%AD"
												mon="area=wCatgHoverBrand&amp;element=114">���ϻ�</a> <a
												class="detail-item" target="_blank"
												href="http://www.nuomi.com/search?k=%E8%B4%B9%E5%88%97%E7%BD%97+%E7%BD%91%E8%B4%AD"
												mon="area=wCatgHoverBrand&amp;element=116">������</a> <a
												class="detail-item" target="_blank"
												href="http://www.nuomi.com/search?k=%E5%A5%BD%E5%AE%9C%E5%BE%B7+%E7%BD%91%E8%B4%AD"
												mon="area=wCatgHoverBrand&amp;element=118">���˵�</a>
										</div>
									</div>
								</div>
							</div>
							<div class="item catg-356 j-sub-item" data-item="catg-356">
								<div class="item-desc">
									<span class="mark"></span> <a class="item-name"
										href="http://w.nuomi.com/356-0/0-f-gn"
										mon="area=wCatg&amp;element=356">������ױ</a>
								</div>
								<div class="category-content clearfix" style="top: -175px;">
									<div class="w-category-item"
										alog-alias="bainuo-wanggou-category-item"
										alog-group="bainuo-wanggou-category-item">
										<div class="title">Ŵ����ѡ</div>
										<div class="detail">
											<a class="detail-item" target="_blank"
												href="http://w.nuomi.com/356-818/0-f-gn"
												mon="area=wCatgHover&amp;element=818">�沿����</a> <a
												class="detail-item" target="_blank"
												href="http://w.nuomi.com/356-820/0-f-gn"
												mon="area=wCatgHover&amp;element=820">��ױ��ˮ</a> <a
												class="detail-item" target="_blank"
												href="http://w.nuomi.com/356-821/0-f-gn"
												mon="area=wCatgHover&amp;element=821">��ʿ</a> <a
												class="detail-item" target="_blank"
												href="http://w.nuomi.com/356-858/0-f-gn"
												mon="area=wCatgHover&amp;element=858">���˻���</a> <a
												class="detail-item" target="_blank"
												href="http://w.nuomi.com/356-872/0-f-gn"
												mon="area=wCatgHover&amp;element=872">���ݹ���</a>
										</div>
									</div>
									<div class="w-category-item"
										alog-alias="bainuo-wanggou-category-item"
										alog-group="bainuo-wanggou-category-item">
										<div class="title">Ʒ���Ƽ�</div>
										<div class="detail">
											<a class="detail-item" target="_blank"
												href="http://www.nuomi.com/search?k=%E6%AC%A7%E7%8F%80%E8%8E%B1+%E7%BD%91%E8%B4%AD"
												mon="area=wCatgHoverBrand&amp;element=145">ŷ����</a> <a
												class="detail-item" target="_blank"
												href="http://www.nuomi.com/search?k=%E4%B8%B9%E5%A7%BF+%E7%BD%91%E8%B4%AD"
												mon="area=wCatgHoverBrand&amp;element=138">����</a> <a
												class="detail-item" target="_blank"
												href="http://www.nuomi.com/search?k=%E6%AC%A7%E8%8E%B1%E9%9B%85+%E7%BD%91%E8%B4%AD"
												mon="area=wCatgHoverBrand&amp;element=146">ŷ����</a> <a
												class="detail-item" target="_blank"
												href="http://www.nuomi.com/search?k=%E7%8E%89%E5%85%B0%E6%B2%B9+%E7%BD%91%E8%B4%AD"
												mon="area=wCatgHoverBrand&amp;element=144">������</a> <a
												class="detail-item" target="_blank"
												href="http://www.nuomi.com/search?k=%E9%9B%AA%E8%82%8C%E7%B2%BE"
												mon="area=wCatgHoverBrand&amp;element=196">��˿</a> <a
												class="detail-item" target="_blank"
												href="http://www.nuomi.com/search?k=%E5%BE%A1%E6%B3%A5%E5%9D%8A+%E7%BD%91%E8%B4%AD"
												mon="area=wCatgHoverBrand&amp;element=143">���෻</a> <a
												class="detail-item" target="_blank"
												href="http://www.nuomi.com/search?k=%E7%99%BE%E9%9B%80%E7%BE%9A+%E7%BD%91%E8%B4%AD"
												mon="area=wCatgHoverBrand&amp;element=142">��ȸ��</a> <a
												class="detail-item" target="_blank"
												href="http://www.nuomi.com/search?k=%E8%8A%B1%E5%8D%B0+%E7%BD%91%E8%B4%AD"
												mon="area=wCatgHoverBrand&amp;element=141">��ӡ</a> <a
												class="detail-item" target="_blank"
												href="http://www.nuomi.com/search?k=%E6%9C%B5%E6%8B%89%E6%9C%B5%E5%B0%9A+%E7%BD%91%E8%B4%AD"
												mon="area=wCatgHoverBrand&amp;element=140">��������</a> <a
												class="detail-item" target="_blank"
												href="http://www.nuomi.com/search?k=%E5%B8%88%E5%A4%B7%E5%AE%B6+%E7%BD%91%E8%B4%AD"
												mon="area=wCatgHoverBrand&amp;element=139">ʦ�ļ�</a> <a
												class="detail-item" target="_blank"
												href="http://www.nuomi.com/search?k=%E8%87%AA%E7%84%B6%E5%A0%82"
												mon="area=wCatgHoverBrand&amp;element=213">��Ȼ��</a> <a
												class="detail-item" target="_blank"
												href="http://www.nuomi.com/search?k=%E7%BE%8E%E8%82%A4%E5%AE%9D&rid=6e0728b5df4d580b5b0d4ddafce65339"
												mon="area=wCatgHoverBrand&amp;element=192">������</a> <a
												class="detail-item" target="_blank"
												href="http://www.nuomi.com/search?k=%E9%9F%A9%E6%9D%9F&rid=dfd808998cbf0b2fc3d608369f7e6513"
												mon="area=wCatgHoverBrand&amp;element=194">����</a> <a
												class="detail-item" target="_blank"
												href="http://www.nuomi.com/search?k=%E5%8D%A1%E5%A7%BF%E5%85%B0&rid=9ac6fd51035ddbbb47904b7f83c56766"
												mon="area=wCatgHoverBrand&amp;element=193">������</a> <a
												class="detail-item" target="_blank"
												href="http://www.nuomi.com/search?k=%E7%8F%80%E8%8E%B1%E9%9B%85"
												mon="area=wCatgHoverBrand&amp;element=197">������</a> <a
												class="detail-item" target="_blank"
												href="http://www.nuomi.com/search?k=%E6%BD%98%E5%A9%B7"
												mon="area=wCatgHoverBrand&amp;element=224">����</a> <a
												class="detail-item" target="_blank"
												href="http://www.nuomi.com/search?k=%E4%BD%B3%E6%B4%81%E5%A3%AB"
												mon="area=wCatgHoverBrand&amp;element=225">�ѽ�ʿ</a> <a
												class="detail-item" target="_blank"
												href="http://www.nuomi.com/search?k=%E6%8A%A4%E8%88%92%E5%AE%9D"
												mon="area=wCatgHoverBrand&amp;element=226">���汦</a> <a
												class="detail-item" target="_blank"
												href="http://www.nuomi.com/search?k=%E7%89%87%E4%BB%94%E7%99%80"
												mon="area=wCatgHoverBrand&amp;element=227">Ƭ���</a> <a
												class="detail-item" target="_blank"
												href="http://www.nuomi.com/search?k=YangSang"
												mon="area=wCatgHoverBrand&amp;element=228">YangSang</a> <a
												class="detail-item" target="_blank"
												href="http://www.nuomi.com/search?k=%E5%8D%83%E4%BB%9F%E8%8D%89"
												mon="area=wCatgHoverBrand&amp;element=229">ǧǪ��</a>
										</div>
									</div>
								</div>
							</div>
							<div class="item catg-403 j-sub-item" data-item="catg-403">
								<div class="item-desc">
									<span class="mark"></span> <a class="item-name"
										href="http://w.nuomi.com/403-0/0-f-gn"
										mon="area=wCatg&amp;element=403">Ь/���</a>
								</div>
								<div class="category-content clearfix" style="top: -43px;">
									<div class="w-category-item"
										alog-alias="bainuo-wanggou-category-item"
										alog-group="bainuo-wanggou-category-item">
										<div class="title">Ŵ����ѡ</div>
										<div class="detail">
											<a class="detail-item" target="_blank"
												href="http://w.nuomi.com/403-860/0-f-gn"
												mon="area=wCatgHover&amp;element=860">ŮЬ</a> <a
												class="detail-item" target="_blank"
												href="http://w.nuomi.com/403-861/0-f-gn"
												mon="area=wCatgHover&amp;element=861">��Ь</a> <a
												class="detail-item" target="_blank"
												href="http://w.nuomi.com/403-862/0-f-gn"
												mon="area=wCatgHover&amp;element=862">��Ь</a> <a
												class="detail-item" target="_blank"
												href="http://w.nuomi.com/403-863/0-f-gn"
												mon="area=wCatgHover&amp;element=863">���</a> <a
												class="detail-item" target="_blank"
												href="http://w.nuomi.com/403-864/0-f-gn"
												mon="area=wCatgHover&amp;element=864">Ƥ��</a> <a
												class="detail-item" target="_blank"
												href="http://w.nuomi.com/403-873/0-f-gn"
												mon="area=wCatgHover&amp;element=873">ʱ��Ů��</a>
										</div>
									</div>
									<div class="w-category-item"
										alog-alias="bainuo-wanggou-category-item"
										alog-group="bainuo-wanggou-category-item">
										<div class="title">Ʒ���Ƽ�</div>
										<div class="detail">
											<a class="detail-item" target="_blank"
												href="http://www.nuomi.com/search?k=%E8%BE%BE%E8%8A%99%E5%A6%AE&rid=4ac7a3b18edd514f313ae24a3d6d7e2c"
												mon="area=wCatgHoverBrand&amp;element=231">��ܽ��</a> <a
												class="detail-item" target="_blank"
												href="http://bj.nuomi.com/search/%E4%B8%83%E5%8C%B9%E7%8B%BC/1/0/wanggou-403-0-0-pd-0-0"
												mon="area=wCatgHoverBrand&amp;element=156">��ƥ��</a> <a
												class="detail-item" target="_blank"
												href="http://bj.nuomi.com/search?k=%E8%BF%AA%E8%8F%B2%E8%8E%B1"
												mon="area=wCatgHoverBrand&amp;element=95">�Ϸ���</a> <a
												class="detail-item" target="_blank"
												href="http://www.nuomi.com/search?k=%E5%A8%81%E6%88%88wenger&rid=3e6942f51d3a7fb9e2bfe03a38561828"
												mon="area=wCatgHoverBrand&amp;element=232">����wenger</a> <a
												class="detail-item" target="_blank"
												href="http://bj.nuomi.com/search?k=%E8%80%81%E4%BA%BA%E5%A4%B4"
												mon="area=wCatgHoverBrand&amp;element=182">����ͷ</a> <a
												class="detail-item" target="_blank"
												href="http://www.nuomi.com/search?k=%E4%BE%9D%E6%80%9DQ"
												mon="area=wCatgHoverBrand&amp;element=230">��˼Q</a>
										</div>
									</div>
								</div>
							</div>
							<div class="item catg-355 j-sub-item" data-item="catg-355">
								<div class="item-desc">
									<span class="mark"></span> <a class="item-name"
										href="http://w.nuomi.com/355-0/0-f-gn"
										mon="area=wCatg&amp;element=355">�˶�����</a>
								</div>
								<div class="category-content clearfix" style="top: -198px;">
									<div class="w-category-item"
										alog-alias="bainuo-wanggou-category-item"
										alog-group="bainuo-wanggou-category-item">
										<div class="title">Ŵ����ѡ</div>
										<div class="detail">
											<a class="detail-item" target="_blank"
												href="http://w.nuomi.com/355-832/0-f-gn"
												mon="area=wCatgHover&amp;element=832">����/����</a> <a
												class="detail-item" target="_blank"
												href="http://w.nuomi.com/355-865/0-f-gn"
												mon="area=wCatgHover&amp;element=865">�˶�Ь��</a> <a
												class="detail-item" target="_blank"
												href="http://w.nuomi.com/355-866/0-f-gn"
												mon="area=wCatgHover&amp;element=866">�˶���Ʒ</a> <a
												class="detail-item" target="_blank"
												href="http://w.nuomi.com/355-867/0-f-gn"
												mon="area=wCatgHover&amp;element=867">����</a>
										</div>
									</div>
									<div class="w-category-item"
										alog-alias="bainuo-wanggou-category-item"
										alog-group="bainuo-wanggou-category-item">
										<div class="title">Ʒ���Ƽ�</div>
										<div class="detail">
											<a class="detail-item" target="_blank"
												href="http://www.nuomi.com/search?k=%E6%9D%8E%E5%AE%81+%E7%BD%91%E8%B4%AD"
												mon="area=wCatgHoverBrand&amp;element=170">����</a> <a
												class="detail-item" target="_blank"
												href="http://www.nuomi.com/search?k=%E8%8B%94%E5%8E%9F%E5%9C%B0%E5%B8%A6"
												mon="area=wCatgHoverBrand&amp;element=67">̦ԭ�ش�</a> <a
												class="detail-item" target="_blank"
												href="http://bj.nuomi.com/search/%E7%BE%8E%E9%AA%86%E4%B8%96%E5%AE%B6/1/0/wanggou-0-0-0-pd-0-0"
												mon="area=wCatgHoverBrand&amp;element=24">��������</a> <a
												class="detail-item" target="_blank"
												href="http://www.nuomi.com/search/%E5%87%AF%E9%80%9F/1/0/wanggou-0-0-0-pd-0-0"
												mon="area=wCatgHoverBrand&amp;element=66">����</a> <a
												class="detail-item" target="_blank"
												href="http://www.nuomi.com/search/%E5%B0%9A%E9%BE%99/1/0/wanggou-0-0-0-pd-0-0"
												mon="area=wCatgHoverBrand&amp;element=65">����</a> <a
												class="detail-item" target="_blank"
												href="http://www.nuomi.com/search?k=%E7%8C%8E%E9%B9%B0%E8%AE%A1%E5%88%92"
												mon="area=wCatgHoverBrand&amp;element=68">��ӥ�ƻ�</a> <a
												class="detail-item" target="_blank"
												href="http://www.nuomi.com/search/%E6%8E%A2%E8%B7%AF%E8%80%85/1/0/wanggou-0-0-0-pd-0-0"
												mon="area=wCatgHoverBrand&amp;element=107">̽·��</a> <a
												class="detail-item" target="_blank"
												href="http://www.nuomi.com/search/%E9%A2%82%E6%8B%93/1/0/wanggou-0-0-0-pd-0-0"
												mon="area=wCatgHoverBrand&amp;element=108">����</a> <a
												class="detail-item" target="_blank"
												href="http://bj.nuomi.com/search?k=%E7%BA%A2%E5%8F%8C%E5%96%9C+%E7%BD%91%E8%B4%AD"
												mon="area=wCatgHoverBrand&amp;element=147">��˫ϲ</a> <a
												class="detail-item" target="_blank"
												href="http://bj.nuomi.com/search?k=%E8%BF%9C%E8%A1%8C%E5%AE%A2"
												mon="area=wCatgHoverBrand&amp;element=174"> Topsky Զ�п�</a> <a
												class="detail-item" target="_blank"
												href="http://bj.nuomi.com/search?k=%E5%AE%89%E6%88%88%E6%B4%9B"
												mon="area=wCatgHoverBrand&amp;element=178">������</a>
										</div>
									</div>
								</div>
							</div>
							<div class="item catg-397 j-sub-item" data-item="catg-397">
								<div class="item-desc">
									<span class="mark"></span> <a class="item-name"
										href="http://w.nuomi.com/397-0/0-f-gn"
										mon="area=wCatg&amp;element=397">����ҵ�</a>
								</div>
								<div class="category-content clearfix">
									<div class="w-category-item"
										alog-alias="bainuo-wanggou-category-item"
										alog-group="bainuo-wanggou-category-item">
										<div class="title">Ŵ����ѡ</div>
										<div class="detail">
											<a class="detail-item" target="_blank"
												href="http://w.nuomi.com/397-840/0-f-gn"
												mon="area=wCatgHover&amp;element=840">���뼰���</a> <a
												class="detail-item" target="_blank"
												href="http://w.nuomi.com/397-841/0-f-gn"
												mon="area=wCatgHover&amp;element=841">С�ҵ�</a> <a
												class="detail-item" target="_blank"
												href="http://w.nuomi.com/397-842/0-f-gn"
												mon="area=wCatgHover&amp;element=842">��������</a> <a
												class="detail-item" target="_blank"
												href="http://w.nuomi.com/397-843/0-f-gn"
												mon="area=wCatgHover&amp;element=843">�칫/�ľ�</a>
										</div>
									</div>
									<div class="w-category-item"
										alog-alias="bainuo-wanggou-category-item"
										alog-group="bainuo-wanggou-category-item">
										<div class="title">Ʒ���Ƽ�</div>
										<div class="detail">
											<a class="detail-item" target="_blank"
												href="http://bj.nuomi.com/search?k=%E8%8B%B9%E6%9E%9C+ipad"
												mon="area=wCatgHoverBrand&amp;element=180">ƻ��ipad</a> <a
												class="detail-item" target="_blank"
												href="http://bj.nuomi.com/search?k=%E9%87%91%E5%A3%AB%E9%A1%BF"
												mon="area=wCatgHoverBrand&amp;element=181">��ʿ�� </a> <a
												class="detail-item" target="_blank"
												href="http://www.nuomi.com/search/%E5%A5%94%E8%85%BE/1/0/wanggou-0-0-0-pd-0-0"
												mon="area=wCatgHoverBrand&amp;element=18">����</a> <a
												class="detail-item" target="_blank"
												href="http://www.nuomi.com/search?k=%E9%A3%9E%E7%A7%91"
												mon="area=wCatgHoverBrand&amp;element=85">�ɿ�</a> <a
												class="detail-item" target="_blank"
												href="http://www.nuomi.com/search?k=%E7%BE%8E%E7%9A%84%20%E7%BD%91%E8%B4%AD"
												mon="area=wCatgHoverBrand&amp;element=214">����</a> <a
												class="detail-item" target="_blank"
												href="http://www.nuomi.com/search?k=%E9%A3%9E%E5%88%A9%E6%B5%A6"
												mon="area=wCatgHoverBrand&amp;element=91">������</a> <a
												class="detail-item" target="_blank"
												href="http://www.nuomi.com/search?k=%E9%9B%B7%E6%8A%80"
												mon="area=wCatgHoverBrand&amp;element=89">�׼�</a> <a
												class="detail-item" target="_blank"
												href="http://www.nuomi.com/search?k=%E5%BA%B7%E4%BD%B3%20%E7%BD%91%E8%B4%AD"
												mon="area=wCatgHoverBrand&amp;element=215">����</a> <a
												class="detail-item" target="_blank"
												href="http://www.nuomi.com/search/%E7%88%B1%E5%9B%BD%E8%80%85/1/0/wanggou-397-0-0-pd-0-0"
												mon="area=wCatgHoverBrand&amp;element=86">������</a> <a
												class="detail-item" target="_blank"
												href="http://www.nuomi.com/search?k=%E9%A3%9E%E6%AF%9B%E8%85%BF"
												mon="area=wCatgHoverBrand&amp;element=87">��ë��</a> <a
												class="detail-item" target="_blank"
												href="http://www.nuomi.com/search?k=%E8%8D%A3%E4%BA%8B%E8%BE%BE+%E7%BD%91%E8%B4%AD"
												mon="area=wCatgHoverBrand&amp;element=133">���´�</a>
										</div>
									</div>
								</div>
							</div>
							<div class="item catg-354 j-sub-item" data-item="catg-354">
								<div class="item-desc">
									<span class="mark"></span> <a class="item-name"
										href="http://w.nuomi.com/354-0/0-f-gn"
										mon="area=wCatg&amp;element=354">�ֱ���Ʒ</a>
								</div>
								<div class="category-content clearfix">
									<div class="w-category-item"
										alog-alias="bainuo-wanggou-category-item"
										alog-group="bainuo-wanggou-category-item">
										<div class="title">Ŵ����ѡ</div>
										<div class="detail">
											<a class="detail-item" target="_blank"
												href="http://w.nuomi.com/354-811/0-f-gn"
												mon="area=wCatgHover&amp;element=811">��Ʒ</a> <a
												class="detail-item" target="_blank"
												href="http://w.nuomi.com/354-812/0-f-gn"
												mon="area=wCatgHover&amp;element=812">�۾�</a> <a
												class="detail-item" target="_blank"
												href="http://w.nuomi.com/354-813/0-f-gn"
												mon="area=wCatgHover&amp;element=813">�ֱ�</a> <a
												class="detail-item" target="_blank"
												href="http://w.nuomi.com/354-856/0-f-gn"
												mon="area=wCatgHover&amp;element=856">�鱦�ƽ�</a> <a
												class="detail-item" target="_blank"
												href="http://w.nuomi.com/354-857/0-f-gn"
												mon="area=wCatgHover&amp;element=857">��Ʒ</a>
										</div>
									</div>
									<div class="w-category-item"
										alog-alias="bainuo-wanggou-category-item"
										alog-group="bainuo-wanggou-category-item">
										<div class="title">Ʒ���Ƽ�</div>
										<div class="detail">
											<a class="detail-item" target="_blank"
												href="http://www.nuomi.com/search?k=%E6%96%AF%E6%B2%83%E7%90%AA"
												mon="area=wCatgHoverBrand&amp;element=208">SWATCH˹����</a> <a
												class="detail-item" target="_blank"
												href="http://bj.nuomi.com/search?k=%E5%A4%A9%E6%A2%AD+%E7%BD%91%E8%B4%AD"
												mon="area=wCatgHoverBrand&amp;element=158">����</a> <a
												class="detail-item" target="_blank"
												href="http://bj.nuomi.com/search?k=ODM&p=1"
												mon="area=wCatgHoverBrand&amp;element=183">ODM</a> <a
												class="detail-item" target="_blank"
												href="http://www.nuomi.com/search/%E6%9D%8E%E7%BB%B4%E6%96%AF/1/0/wanggou-0-0-0-pd-0-0"
												mon="area=wCatgHoverBrand&amp;element=105">��ά˹Levi's</a> <a
												class="detail-item" target="_blank"
												href="http://bj.nuomi.com/search?k=%E8%8E%B1%E8%AF%97%E7%91%9E+%E7%BD%91%E8%B4%AD"
												mon="area=wCatgHoverBrand&amp;element=162">��ʫ��</a> <a
												class="detail-item" target="_blank"
												href="http://www.nuomi.com/search/%E5%98%89%E5%B9%B4%E5%8D%8E/1/0/wanggou-0-0-0-pd-0-0"
												mon="area=wCatgHoverBrand&amp;element=209">���껪</a> <a
												class="detail-item" target="_blank"
												href="http://www.nuomi.com/search?k=%E8%AF%97%E8%94%93"
												mon="area=wCatgHoverBrand&amp;element=210">ʫ��</a> <a
												class="detail-item" target="_blank"
												href="http://www.nuomi.com/search?k=%E9%93%B6%E7%94%9F"
												mon="area=wCatgHoverBrand&amp;element=211">����</a>
										</div>
									</div>
								</div>
							</div>
							<div class="item catg-351 j-sub-item" data-item="catg-351">
								<div class="item-desc">
									<span class="mark"></span> <a class="item-name"
										href="http://w.nuomi.com/351-0/0-f-gn"
										mon="area=wCatg&amp;element=351">ĸӤ���</a>
								</div>
								<div class="category-content clearfix" style="top: -327px;">
									<div class="w-category-item"
										alog-alias="bainuo-wanggou-category-item"
										alog-group="bainuo-wanggou-category-item">
										<div class="title">Ŵ����ѡ</div>
										<div class="detail">
											<a class="detail-item" target="_blank"
												href="http://w.nuomi.com/351-833/0-f-gn"
												mon="area=wCatgHover&amp;element=833">���/���</a> <a
												class="detail-item" target="_blank"
												href="http://w.nuomi.com/351-868/0-f-gn"
												mon="area=wCatgHover&amp;element=868">ͯװͯЬ</a> <a
												class="detail-item" target="_blank"
												href="http://w.nuomi.com/351-869/0-f-gn"
												mon="area=wCatgHover&amp;element=869">��Ӥ��ʳƷ</a> <a
												class="detail-item" target="_blank"
												href="http://w.nuomi.com/351-870/0-f-gn"
												mon="area=wCatgHover&amp;element=870">��Ӥ����Ʒ</a>
										</div>
									</div>
									<div class="w-category-item"
										alog-alias="bainuo-wanggou-category-item"
										alog-group="bainuo-wanggou-category-item">
										<div class="title">Ʒ���Ƽ�</div>
										<div class="detail">
											<a class="detail-item" target="_blank"
												href="http://www.nuomi.com/search/%E8%BF%AA%E5%A3%AB%E5%B0%BC/1/0/wanggou-0-0-0-pd-0-0"
												mon="area=wCatgHoverBrand&amp;element=2">��ʿ��</a> <a
												class="detail-item" target="_blank"
												href="http://www.nuomi.com/search/%E5%AD%95%E7%BE%8E/1/0/wanggou-0-0-0-pd-0-0"
												mon="area=wCatgHoverBrand&amp;element=6">����</a> <a
												class="detail-item" target="_blank"
												href="http://bj.nuomi.com/search/%E6%83%A0%E6%B0%8F/1/0/wanggou-0-0-0-pd-0-0"
												mon="area=wCatgHoverBrand&amp;element=195">����</a> <a
												class="detail-item" target="_blank"
												href="http://www.nuomi.com/search?k=%E6%89%98%E9%A9%AC%E6%96%AF"
												mon="area=wCatgHoverBrand&amp;element=44">����˹</a> <a
												class="detail-item" target="_blank"
												href="http://www.nuomi.com/search?k=%E4%BA%B2%E4%BA%B2%E6%88%91%20%E7%BD%91%E8%B4%AD"
												mon="area=wCatgHoverBrand&amp;element=216">������</a> <a
												class="detail-item" target="_blank"
												href="http://www.nuomi.com/search?k=%E5%A5%BD%E5%A5%87+%E7%BD%91%E8%B4%AD"
												mon="area=wCatgHoverBrand&amp;element=131">����</a> <a
												class="detail-item" target="_blank"
												href="http://bj.nuomi.com/search?k=%E5%A5%BD%E5%AD%A9%E5%AD%90"
												mon="area=wCatgHoverBrand&amp;element=175">�ú���</a> <a
												class="detail-item" target="_blank"
												href="http://www.nuomi.com/search?k=%E5%A6%AE%E9%A3%98Nepia&rid=31177bee1b245168c69718b4dd58f663"
												mon="area=wCatgHoverBrand&amp;element=190">��ƮNepia</a> <a
												class="detail-item" target="_blank"
												href="http://www.nuomi.com/search?k=%E5%8D%81%E6%9C%88%E5%A6%88%E5%92%AA"
												mon="area=wCatgHoverBrand&amp;element=220">ʮ������</a> <a
												class="detail-item" target="_blank"
												href="http://www.nuomi.com/search?k=%E6%BE%B3%E8%B4%9D"
												mon="area=wCatgHoverBrand&amp;element=221">�ı�</a> <a
												class="detail-item" target="_blank"
												href="http://www.nuomi.com/search?k=%E5%A5%A5%E8%BF%AA%E5%8F%8C%E9%92%BB"
												mon="area=wCatgHoverBrand&amp;element=222">�µ�˫��</a> <a
												class="detail-item" target="_blank"
												href="http://www.nuomi.com/search?k=%E6%84%A4%E6%80%92%E7%9A%84%E5%B0%8F%E9%B8%9F"
												mon="area=wCatgHoverBrand&amp;element=223">��ŭ��С��</a>
										</div>
									</div>
								</div>
							</div>
							<div class="item catg-360 j-sub-item" data-item="catg-360">
								<div class="item-desc">
									<span class="mark"></span> <a class="item-name"
										href="http://w.nuomi.com/360-0/0-f-gn"
										mon="area=wCatg&amp;element=360">ͼ����־</a>
								</div>
								<div class="category-content clearfix">
									<div class="w-category-item"
										alog-alias="bainuo-wanggou-category-item"
										alog-group="bainuo-wanggou-category-item">
										<div class="title">Ŵ����ѡ</div>
										<div class="detail">
											<a class="detail-item" target="_blank"
												href="http://w.nuomi.com/360-851/0-f-gn"
												mon="area=wCatgHover&amp;element=851">ͼ��</a> <a
												class="detail-item" target="_blank"
												href="http://w.nuomi.com/360-852/0-f-gn"
												mon="area=wCatgHover&amp;element=852">����</a> <a
												class="detail-item" target="_blank"
												href="http://w.nuomi.com/360-871/0-f-gn"
												mon="area=wCatgHover&amp;element=871">��־</a>
										</div>
									</div>
									<div class="w-category-item"
										alog-alias="bainuo-wanggou-category-item"
										alog-group="bainuo-wanggou-category-item">
										<div class="title">Ʒ���Ƽ�</div>
										<div class="detail">
											<a class="detail-item" target="_blank"
												href="http://bj.nuomi.com/search?k=%E8%A7%86%E9%A2%91%E6%95%99%E7%A8%8B"
												mon="area=wCatgHoverBrand&amp;element=165">�������</a> <a
												class="detail-item" target="_blank"
												href="http://www.nuomi.com/search?k=%E5%A5%BD%E5%A9%B4%E7%AB%A5"
												mon="area=wCatgHoverBrand&amp;element=167">��Ӥͯ</a>
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
									href="javascript:void(0);" title="" class="t">������Ʒ</a></span><span
									class="good" alog-alias="bainuo-wanggou-index-title-good"
									alog-group="bainuo-wanggou-index-title-good"><a
									href="javascript:void(0);" title="" class="hover">����</a><a
									href="javascript:void(0);" title="">��Ʒ</a><a
									href="javascript:void(0);" title="" class="no">Ʒ������</a></span>
							</h2>
						</div>
					</div>
					<div class="w-good-items">
						<div class="items-c items-">
							<div class="box j-item-c">
								<ul class="item-c clearfix j-sliderbar-hover"
									style="opacity: 1; display: block;">

									<!--���²�Ʒ��ʼ-->
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
														<li class="fl cur">�0�6<span class="cur-price"><%=product.getMemberPrice()%></span></li>
														<li class="fl text">��ֵ<span class="old-price">�0�6<%=product.getNormalPrice()%></span></li>
														<li class="fr text"><span class="part_in">8371</span>���Ѳ���</li>
													</ul>
												</div>
											</div>
											<div class="s-icon-box">
												<span class="s-xindan"></span>
											</div></a></li>
									<%
										}
									%>
									<!--���²�Ʒ����-->

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
													<h5 class="title">��̼ī���п������ռ��桿��Ч�����п���������������д��21���ٳ����֣�����</h5>
													<ul class="ot clearfix">
														<li class="fl cur">�0�6<span class="cur-price">25.8</span></li>
														<li class="fl text">��ֵ<span class="old-price">�0�699</span></li>
														<li class="fr text"><span class="part_in">7106</span>���Ѳ���</li>
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
													<h5 class="title">���ȱ�������ճ����װ��36ɫ����ճ����װ��������Ƥ���޶����͹��ߣ����ʣ�</h5>
													<ul class="ot clearfix">
														<li class="fl cur">�0�6<span class="cur-price">29.9</span></li>
														<li class="fl text">��ֵ<span class="old-price">�0�672</span></li>
														<li class="fr text"><span class="part_in">2319</span>���Ѳ���</li>
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
													<h5 class="title">��˫�������ù��ܰ��а���˫�����๦�ܰ��а����������ݣ�9ɫ��ѡ��3�����ʣ�</h5>
													<ul class="ot clearfix">
														<li class="fl cur">�0�6<span class="cur-price">10.9</span></li>
														<li class="fl text">��ֵ<span class="old-price">�0�649</span></li>
														<li class="fr text"><span class="part_in">5102</span>���Ѳ���</li>
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
													<h5 class="title">���ٴ��Ůë�����������ٴ��Ůʿè��ʯë������48���ѡ�����ʣ�</h5>
													<ul class="ot clearfix">
														<li class="fl cur">�0�6<span class="cur-price">9.9</span></li>
														<li class="fl text">��ֵ<span class="old-price">�0�688</span></li>
														<li class="fr text"><span class="part_in">1767</span>���Ѳ���</li>
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
													<h5 class="title">������ޱ����ȹ�������ٴ��׶�ȹ����ȹ����ȹ��5ɫ��ѡ�����ʣ�</h5>
													<ul class="ot clearfix">
														<li class="fl cur">�0�6<span class="cur-price">29</span></li>
														<li class="fl text">��ֵ<span class="old-price">�0�6298</span></li>
														<li class="fr text"><span class="part_in">406</span>���Ѳ���</li>
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
													<h5 class="title">������������˫���������������˫���������ʵ���ᣡ5ɫ��ѡ�����ʣ�</h5>
													<ul class="ot clearfix">
														<li class="fl cur">�0�6<span class="cur-price">99</span></li>
														<li class="fl text">��ֵ<span class="old-price">�0�6199</span></li>
														<li class="fr text"><span class="part_in">150</span>���Ѳ���</li>
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
													<h5 class="title">��˫����������ת�ϰѡ�˫����������ת�����ϰѣ�˫������ѹʽ����ʡ�������ʣ�</h5>
													<ul class="ot clearfix">
														<li class="fl cur">�0�6<span class="cur-price">69</span></li>
														<li class="fl text">��ֵ<span class="old-price">�0�6198</span></li>
														<li class="fr text"><span class="part_in">7314</span>���Ѳ���</li>
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
													<h5 class="title">���������߾ŷֿ㡿�ŷֿ㣡�ߵ����ݣ��⴩��ף�11ɫ��ѡ�����ʣ�</h5>
													<ul class="ot clearfix">
														<li class="fl cur">�0�6<span class="cur-price">49</span></li>
														<li class="fl text">��ֵ<span class="old-price">�0�6298</span></li>
														<li class="fr text"><span class="part_in">799</span>���Ѳ���</li>
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
													<h5 class="title">���޸���ʪ���²�˿��Ĥ���޸���ʪ���²�˿��Ĥ21Ƭ/�ף������޸������ײ�ˮ�����ʣ�</h5>
													<ul class="ot clearfix">
														<li class="fl cur">�0�6<span class="cur-price">80</span></li>
														<li class="fl text">��ֵ<span class="old-price">�0�6333.9</span></li>
														<li class="fr text"><span class="part_in">4820</span>���Ѳ���</li>
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
													<h5 class="title">������ȫ�Զ����������๦��ȫ�Զ�������������ֱ��壬ȫ�����������ʣ�</h5>
													<ul class="ot clearfix">
														<li class="fl cur">�0�6<span class="cur-price">189</span></li>
														<li class="fl text">��ֵ<span class="old-price">�0�6399</span></li>
														<li class="fr text"><span class="part_in">1674</span>���Ѳ���</li>
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
													<h5 class="title">�����ش��������������������Сѧ�������������������4ɫ��ѡ�����ʣ�</h5>
													<ul class="ot clearfix">
														<li class="fl cur">�0�6<span class="cur-price">32</span></li>
														<li class="fl text">��ֵ<span class="old-price">�0�6128</span></li>
														<li class="fr text"><span class="part_in">8351</span>���Ѳ���</li>
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
													<h5 class="title">��680������������ࡿ680D����ͦ�����࣡���ʣ�</h5>
													<ul class="ot clearfix">
														<li class="fl cur">�0�6<span class="cur-price">32.9</span></li>
														<li class="fl text">��ֵ<span class="old-price">�0�6179</span></li>
														<li class="fr text"><span class="part_in">1971</span>���Ѳ���</li>
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
													<h5 class="title">����Ů�����˶�Ь����Ů�����˶�Ь���������4ɫ��ѡ�����ʣ�</h5>
													<ul class="ot clearfix">
														<li class="fl cur">�0�6<span class="cur-price">109</span></li>
														<li class="fl text">��ֵ<span class="old-price">�0�6519</span></li>
														<li class="fr text"><span class="part_in">156</span>���Ѳ���</li>
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
													<h5 class="title">�������������ɴΧ���������ɴΧ��˿���Ų�24ɫ��ѡ��3�����ʣ�</h5>
													<ul class="ot clearfix">
														<li class="fl cur">�0�6<span class="cur-price">9.9</span></li>
														<li class="fl text">��ֵ<span class="old-price">�0�6139</span></li>
														<li class="fr text"><span class="part_in">14100</span>���Ѳ���</li>
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
													<h5 class="title">������������BB˪����Ͼ����������BB˪15g/����2������Ч��һ��2ɫ��ѡ�����ʣ�</h5>
													<ul class="ot clearfix">
														<li class="fl cur">�0�6<span class="cur-price">38</span></li>
														<li class="fl text">��ֵ<span class="old-price">�0�6199</span></li>
														<li class="fr text"><span class="part_in">2217</span>���Ѳ���</li>
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
													<h5 class="title">����ʿ����ʱ��˫�����ʱ��˫��������е��԰�������������ռ䣡2ɫ��ѡ�����ʣ�</h5>
													<ul class="ot clearfix">
														<li class="fl cur">�0�6<span class="cur-price">98</span></li>
														<li class="fl text">��ֵ<span class="old-price">�0�6799</span></li>
														<li class="fr text"><span class="part_in">1652</span>���Ѳ���</li>
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
													<h5 class="title">������и������䴢��С��������С���иǴ����2���ף���ɫ��ѡ��2�װ��ʣ�</h5>
													<ul class="ot clearfix">
														<li class="fl cur">�0�6<span class="cur-price">13.9</span></li>
														<li class="fl text">��ֵ<span class="old-price">�0�666</span></li>
														<li class="fr text"><span class="part_in">1602</span>���Ѳ���</li>
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
													<h5 class="title">��XM203���ܡ�XM203�๦�����ܣ��������ܣ���ʵ���ã����ʣ�</h5>
													<ul class="ot clearfix">
														<li class="fl cur">�0�6<span class="cur-price">139</span></li>
														<li class="fl text">��ֵ<span class="old-price">�0�6799</span></li>
														<li class="fr text"><span class="part_in">156</span>���Ѳ���</li>
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
									href="javascript:void(0);" title="" class="t">�����µ�</a></span><span
									class="good" alog-alias="bainuo-wanggou-index-title-good"
									alog-group="bainuo-wanggou-index-title-good"><a
									href="javascript:void(0);" title="" class="hover">����</a><a
									href="javascript:void(0);" title="">��Ʒ</a><a
									href="javascript:void(0);" title="" class="no">Ʒ������</a></span>
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
													<h5 class="title">�����ӿ��۾��侵�ײ͡��侵�ײͣ�רҵ��ʦ���Ƚ��豸������ɫ�ʡ�ʱ�д�������������֮������������������</h5>
													<ul class="ot clearfix">
														<li class="fl cur">�0�6<span class="cur-price">98</span></li>
														<li class="fl text">��ֵ<span class="old-price">�0�6488</span></li>
														<li class="fr text"><span class="part_in">0</span>���Ѳ���</li>
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
													<h5 class="title">��ʯ������ʯ��500g/�ݣ�������ۣ�5�ݰ��ʣ�</h5>
													<ul class="ot clearfix">
														<li class="fl cur">�0�6<span class="cur-price">6.9</span></li>
														<li class="fl text">��ֵ<span class="old-price">�0�615</span></li>
														<li class="fr text"><span class="part_in">3711</span>���Ѳ���</li>
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
													<h5 class="title">����ɣ��Ȼ˫ͷü�ʡ���Ȼ˫ͷü�ʣ��־ò���ױ��2ɫ��ѡ�����ʣ�</h5>
													<ul class="ot clearfix">
														<li class="fl cur">�0�6<span class="cur-price">17.9</span></li>
														<li class="fl text">��ֵ<span class="old-price">�0�659</span></li>
														<li class="fr text"><span class="part_in">190</span>���Ѳ���</li>
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
													<h5 class="title">��ˮ��ʱ���ͷ�����ҹ�ͷ410g/�ޡ�6�ޣ�Բ��Q�������д������˷ѣ�</h5>
													<ul class="ot clearfix">
														<li class="fl cur">�0�6<span class="cur-price">30</span></li>
														<li class="fl text">��ֵ<span class="old-price">�0�668</span></li>
														<li class="fr text"><span class="part_in">17607</span>���Ѳ���</li>
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
													<h5 class="title">�������๦�ܵ翾�䡿�๦�ܵ翾�䣡30L�ƽ��������๦�ܣ����ʣ�</h5>
													<ul class="ot clearfix">
														<li class="fl cur">�0�6<span class="cur-price">195</span></li>
														<li class="fl text">��ֵ<span class="old-price">�0�6599</span></li>
														<li class="fr text"><span class="part_in">110</span>���Ѳ���</li>
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
													<h5 class="title">����Դ��������ϯ�����ס�������ϯ3���ף���Լ���ף���ϸ��֯�����ʣ�</h5>
													<ul class="ot clearfix">
														<li class="fl cur">�0�6<span class="cur-price">89</span></li>
														<li class="fl text">��ֵ<span class="old-price">�0�6650</span></li>
														<li class="fr text"><span class="part_in">589</span>���Ѳ���</li>
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
													<h5 class="title">�������ޱ������ʡ��๦��˫�籧Ӥ���ʣ��ļ�ͨ�ã����ʣ�</h5>
													<ul class="ot clearfix">
														<li class="fl cur">�0�6<span class="cur-price">109</span></li>
														<li class="fl text">��ֵ<span class="old-price">�0�6560</span></li>
														<li class="fr text"><span class="part_in">80</span>���Ѳ���</li>
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
													<h5 class="title">��ɽ��մ������1��װ��ɽ��մ������500g/�ݣ�5�ݰ��ʣ�</h5>
													<ul class="ot clearfix">
														<li class="fl cur">�0�6<span class="cur-price">6.5</span></li>
														<li class="fl text">��ֵ<span class="old-price">�0�628</span></li>
														<li class="fr text"><span class="part_in">16463</span>���Ѳ���</li>
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
													<h5 class="title">�����򷫲�Ь6638���Ͱ﷫��ŮЬ��Ϳѻƽ�׵�Ь��2���ѡ�����ʣ�</h5>
													<ul class="ot clearfix">
														<li class="fl cur">�0�6<span class="cur-price">49</span></li>
														<li class="fl text">��ֵ<span class="old-price">�0�6129</span></li>
														<li class="fr text"><span class="part_in">232</span>���Ѳ���</li>
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
													<h5 class="title">��XM112��ɹ�ܡ����۵���ɹ�ܣ���̨��ɹ���������ɣ�2ɫ��ѡ�����ʣ�</h5>
													<ul class="ot clearfix">
														<li class="fl cur">�0�6<span class="cur-price">99</span></li>
														<li class="fl text">��ֵ<span class="old-price">�0�6569</span></li>
														<li class="fr text"><span class="part_in">75</span>���Ѳ���</li>
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
													<h5 class="title">��XM412�����Ƴ������ƶ��ӿ������Ƴ����Ӽ����ɱر���2ɫ��ѡ�����ʣ�</h5>
													<ul class="ot clearfix">
														<li class="fl cur">�0�6<span class="cur-price">99</span></li>
														<li class="fl text">��ֵ<span class="old-price">�0�6499</span></li>
														<li class="fr text"><span class="part_in">61</span>���Ѳ���</li>
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
													<h5 class="title">��XM100��ñ�ܡ�XM100ʵľ��ñ�ܣ������������ȹ����ã�2ɫ��ѡ�����ʣ�</h5>
													<ul class="ot clearfix">
														<li class="fl cur">�0�6<span class="cur-price">99</span></li>
														<li class="fl text">��ֵ<span class="old-price">�0�6569</span></li>
														<li class="fr text"><span class="part_in">82</span>���Ѳ���</li>
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
													<h5 class="title">��XM203���ܡ�XM203�๦�����ܣ��������ܣ���ʵ���ã����ʣ�</h5>
													<ul class="ot clearfix">
														<li class="fl cur">�0�6<span class="cur-price">139</span></li>
														<li class="fl text">��ֵ<span class="old-price">�0�6799</span></li>
														<li class="fr text"><span class="part_in">156</span>���Ѳ���</li>
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
													<h5 class="title">������ѩ���ɱ���ѡ���ɱ�/ѩ��540g/����2����ѡ��2�����ʣ�</h5>
													<ul class="ot clearfix">
														<li class="fl cur">�0�6<span class="cur-price">19.9</span></li>
														<li class="fl text">��ֵ<span class="old-price">�0�629.9</span></li>
														<li class="fr text"><span class="part_in">711</span>���Ѳ���</li>
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
													<h5 class="title">�����෻õ�����������顿õ������������100ml/֧���º���࣬��ˮ��ˮ�����ʣ�</h5>
													<ul class="ot clearfix">
														<li class="fl cur">�0�6<span class="cur-price">19.9</span></li>
														<li class="fl text">��ֵ<span class="old-price">�0�629.9</span></li>
														<li class="fr text"><span class="part_in">374</span>���Ѳ���</li>
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
													<h5 class="title">��������������⨺��ҡ�⨺���2500g/�ݣ�����������ϸ���֭�����ʣ�</h5>
													<ul class="ot clearfix">
														<li class="fl cur">�0�6<span class="cur-price">29.9</span></li>
														<li class="fl text">��ֵ<span class="old-price">�0�678</span></li>
														<li class="fr text"><span class="part_in">6359</span>���Ѳ���</li>
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
													<h5 class="title">������⨺���100����������⨺���100-120g/����30�����ʣ�</h5>
													<ul class="ot clearfix">
														<li class="fl cur">�0�6<span class="cur-price">1.6</span></li>
														<li class="fl text">��ֵ<span class="old-price">�0�66.9</span></li>
														<li class="fr text"><span class="part_in">142541</span>���Ѳ���</li>
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
													<h5 class="title">���Ĵ�����⨺��Ҵ󡿺���⨺���Լ120g/����20�����ʣ�</h5>
													<ul class="ot clearfix">
														<li class="fl cur">�0�6<span class="cur-price">3.9</span></li>
														<li class="fl text">��ֵ<span class="old-price">�0�610</span></li>
														<li class="fr text"><span class="part_in">14056</span>���Ѳ���</li>
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
													<h5 class="title">���Ĵ�����⨺����С�����⨺���Լ80-100g/����20�����ʣ�</h5>
													<ul class="ot clearfix">
														<li class="fl cur">�0�6<span class="cur-price">2.9</span></li>
														<li class="fl text">��ֵ<span class="old-price">�0�68</span></li>
														<li class="fr text"><span class="part_in">17194</span>���Ѳ���</li>
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
													<h5 class="title">�����ܹϡ����ܹ�Լ4.5-5.5��/�������ʣ�</h5>
													<ul class="ot clearfix">
														<li class="fl cur">�0�6<span class="cur-price">25.9</span></li>
														<li class="fl text">��ֵ<span class="old-price">�0�660</span></li>
														<li class="fr text"><span class="part_in">424</span>���Ѳ���</li>
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
													<h5 class="title">����Ů�����˶�Ь����Ů�����˶�Ь���������4ɫ��ѡ�����ʣ�</h5>
													<ul class="ot clearfix">
														<li class="fl cur">�0�6<span class="cur-price">109</span></li>
														<li class="fl text">��ֵ<span class="old-price">�0�6519</span></li>
														<li class="fr text"><span class="part_in">156</span>���Ѳ���</li>
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
													<h5 class="title">������100����װ������100����װ�����������������ϣ����ʣ�</h5>
													<ul class="ot clearfix">
														<li class="fl cur">�0�6<span class="cur-price">18.8</span></li>
														<li class="fl text">��ֵ<span class="old-price">�0�688</span></li>
														<li class="fr text"><span class="part_in">453</span>���Ѳ���</li>
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
													<h5 class="title">�����ϰ�ҩ����3֧װ������3֧װ�������̳ݣ��������ݣ�ȥ����ǻ��ζ�����ʣ�</h5>
													<ul class="ot clearfix">
														<li class="fl cur">�0�6<span class="cur-price">75</span></li>
														<li class="fl text">��ֵ<span class="old-price">�0�6102.2</span></li>
														<li class="fr text"><span class="part_in">375</span>���Ѳ���</li>
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
													<h5 class="title">����֦������â�����Ĵ���֦������â��500g/�ݣ�5�ݰ��ʣ�</h5>
													<ul class="ot clearfix">
														<li class="fl cur">�0�6<span class="cur-price">7.9</span></li>
														<li class="fl text">��ֵ<span class="old-price">�0�620</span></li>
														<li class="fr text"><span class="part_in">17331</span>���Ѳ���</li>
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
							title="��" mon="element=adver_448_s4&amp;position=adver_4"> <img
							data-original="http://g.hiphotos.baidu.com/lbs/pic/item/0ff41bd5ad6eddc417240d6f3cdbb6fd53663366.jpg"
							alt="��"
							src="./index_files/0ff41bd5ad6eddc417240d6f3cdbb6fd53663366.jpg"
							style="display: inline;">
						</a> <a class="item-img small-item" target="_blank"
							href="http://activity.nuomi.com/mis/activity/common/short_url/gwsbezc"
							title="�ղ���" mon="element=adver_448_s5&amp;position=adver_5">
							<img
							data-original="http://f.hiphotos.baidu.com/lbs/pic/item/9358d109b3de9c82c42b411b6981800a18d843d3.jpg"
							alt="�ղ���"
							src="./index_files/9358d109b3de9c82c42b411b6981800a18d843d3.jpg"
							style="display: inline;">
						</a> <a class="item-img small-item" target="_blank"
							href="http://www.nuomi.com/search?k=%E7%BE%8E%E7%9A%84&rid=5908026948ec2e457ae8c8515c02b5cf"
							title="����" mon="element=adver_448_s6&amp;position=adver_6"> <img
							data-original="http://d.hiphotos.baidu.com/lbs/pic/item/95eef01f3a292df53b802072bf315c6034a87312.jpg"
							alt="����"
							src="./index_files/95eef01f3a292df53b802072bf315c6034a87312.jpg"
							style="display: inline;">
						</a> <a class="item-img small-item" target="_blank"
							href="http://activity.nuomi.com/mis/activity/common/short_url/gwflp"
							title="������" mon="element=adver_448_s7&amp;position=adver_7">
							<img
							data-original="http://g.hiphotos.baidu.com/lbs/pic/item/2cf5e0fe9925bc3182ee8dff5ddf8db1cb137022.jpg"
							alt="������"
							src="./index_files/2cf5e0fe9925bc3182ee8dff5ddf8db1cb137022.jpg"
							style="display: inline;">
						</a> <a class="item-img small-item" target="_blank"
							href="http://activity.nuomi.com/mis/activity/common/short_url/gwjyzc"
							title="����" mon="element=adver_448_s8&amp;position=adver_8"> <img
							data-original="http://b.hiphotos.baidu.com/lbs/pic/item/b21c8701a18b87d67e872778040828381e30fd94.jpg"
							alt="����"
							src="./index_files/b21c8701a18b87d67e872778040828381e30fd94.jpg"
							style="display: inline;">
						</a> <a class="item-img small-item" target="_blank"
							href="http://bj.nuomi.com/search?k=%E9%A3%9E%E7%A7%91+%E7%BD%91%E8%B4%AD"
							title="�ɿ�" mon="element=adver_448_s9&amp;position=adver_9"> <img
							data-original="http://b.hiphotos.baidu.com/lbs/pic/item/03087bf40ad162d99b04ee7b12dfa9ec8b13cdeb.jpg"
							alt="�ɿ�"
							src="./index_files/03087bf40ad162d99b04ee7b12dfa9ec8b13cdeb.jpg"
							style="display: inline;">
						</a> <a class="item-img large-item" target="_blank"
							href="http://w.nuomi.com/397-840/0-f-gn" title="�ֻ�����"
							mon="element=adver_448_l1&amp;position=adver_10"> <img
							data-original="http://f.hiphotos.baidu.com/lbs/pic/item/dbb44aed2e738bd4e6db3e56a28b87d6267ff9db.jpg"
							alt="�ֻ�����"
							src="./index_files/dbb44aed2e738bd4e6db3e56a28b87d6267ff9db.jpg"
							style="display: inline;">
						</a> <a class="item-img large-item" target="_blank"
							href="http://w.nuomi.com/397-842/0-f-gn" title="���˻���"
							mon="element=adver_448_l2&amp;position=adver_11"> <img
							data-original="http://c.hiphotos.baidu.com/lbs/pic/item/c2fdfc039245d688c6f13ec3a7c27d1ed31b24e1.jpg"
							alt="���˻���"
							src="./index_files/c2fdfc039245d688c6f13ec3a7c27d1ed31b24e1.jpg"
							style="display: inline;">
						</a> <a class="item-img large-item" target="_blank"
							href="http://w.nuomi.com/397-841/0-f-gn" title="�ر��ҵ�"
							mon="element=adver_448_l3&amp;position=adver_12"> <img
							data-original="http://a.hiphotos.baidu.com/lbs/pic/item/8c1001e93901213f7824c1bb57e736d12f2e9546.jpg"
							alt="�ر��ҵ�"
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
									href="javascript:void(0);" title="" class="t">����ҵ�</a></span><span
									class="good" alog-alias="bainuo-wanggou-index-title-good"
									alog-group="bainuo-wanggou-index-title-good"><a
									href="javascript:void(0);" title="" class="hover">����</a><a
									href="javascript:void(0);" title="">��Ʒ</a><a
									href="javascript:void(0);" title="" class="no">Ʒ������</a></span>
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
													<h5 class="title">������ȫ�Զ����������๦��ȫ�Զ�������������ֱ��壬ȫ�����������ʣ�</h5>
													<ul class="ot clearfix">
														<li class="fl cur">�0�6<span class="cur-price">189</span></li>
														<li class="fl text">��ֵ<span class="old-price">�0�6399</span></li>
														<li class="fr text"><span class="part_in">1674</span>���Ѳ���</li>
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
													<h5 class="title">������������緹�С�����1.2��3����յ緹�У��������Ⱦ��ɣ�����ʵ�ã����ʣ�</h5>
													<ul class="ot clearfix">
														<li class="fl cur">�0�6<span class="cur-price">49</span></li>
														<li class="fl text">��ֵ<span class="old-price">�0�6138</span></li>
														<li class="fr text"><span class="part_in">708</span>���Ѳ���</li>
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
													<h5 class="title">��iQi���ӿ�۵ơ��������ӿ���ʽLED̨�ƣ�����360�㣬�޷���ǻ�˫�ۣ����ʣ�</h5>
													<ul class="ot clearfix">
														<li class="fl cur">�0�6<span class="cur-price">39.9</span></li>
														<li class="fl text">��ֵ<span class="old-price">�0�6119</span></li>
														<li class="fr text"><span class="part_in">604</span>���Ѳ���</li>
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
													<h5 class="title">��M120�����ѧ��꡿���������꣡��Լ����ʱ�����������Ź��֣����ʣ�</h5>
													<ul class="ot clearfix">
														<li class="fl cur">�0�6<span class="cur-price">28.7</span></li>
														<li class="fl text">��ֵ<span class="old-price">�0�669</span></li>
														<li class="fr text"><span class="part_in">430</span>���Ѳ���</li>
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
													<h5 class="title">�������߳�籦k112��10000mAh����ӳ�籦��˫USB��磡���ʣ�</h5>
													<ul class="ot clearfix">
														<li class="fl cur">�0�6<span class="cur-price">69</span></li>
														<li class="fl text">��ֵ<span class="old-price">�0�699</span></li>
														<li class="fr text"><span class="part_in">430</span>���Ѳ���</li>
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
													<h5 class="title">�����ɵ��Ű��ֻ���4Ӣ��3G˫��˫���ֻ���˫�˴�������2ɫ��ѡ�����ʣ�</h5>
													<ul class="ot clearfix">
														<li class="fl cur">�0�6<span class="cur-price">245</span></li>
														<li class="fl text">��ֵ<span class="old-price">�0�6299</span></li>
														<li class="fr text"><span class="part_in">417</span>���Ѳ���</li>
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
													<h5 class="title">�������๦�ܵ翾�䡿�๦�ܵ翾�䣡30L�ƽ��������๦�ܣ����ʣ�</h5>
													<ul class="ot clearfix">
														<li class="fl cur">�0�6<span class="cur-price">195</span></li>
														<li class="fl text">��ֵ<span class="old-price">�0�6599</span></li>
														<li class="fr text"><span class="part_in">110</span>���Ѳ���</li>
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
													<h5 class="title">��TCL��������ֻ����������4G5Ӣ���ֻ�����Ʒ�׷����׼ۣ��ĺ˼������������ʣ�</h5>
													<ul class="ot clearfix">
														<li class="fl cur">�0�6<span class="cur-price">505</span></li>
														<li class="fl text">��ֵ<span class="old-price">�0�6599</span></li>
														<li class="fr text"><span class="part_in">30</span>���Ѳ���</li>
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
													<h5 class="title">�������߳�籦k112��10000mAh����ӳ�籦��˫USB��磡���ʣ�</h5>
													<ul class="ot clearfix">
														<li class="fl cur">�0�6<span class="cur-price">69</span></li>
														<li class="fl text">��ֵ<span class="old-price">�0�699</span></li>
														<li class="fr text"><span class="part_in">430</span>���Ѳ���</li>
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
													<h5 class="title">����籦KA110��11000mAh�ƶ���Դ��A+��ȫ�µ�о�����ʣ�</h5>
													<ul class="ot clearfix">
														<li class="fl cur">�0�6<span class="cur-price">65</span></li>
														<li class="fl text">��ֵ<span class="old-price">�0�699</span></li>
														<li class="fr text"><span class="part_in">154</span>���Ѳ���</li>
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
													<h5 class="title">����ΪC199�����ֻ���C199S����4G�ֻ���5.5��ȫ���ϸ�������2ɫ��ѡ�����ʣ�</h5>
													<ul class="ot clearfix">
														<li class="fl cur">�0�6<span class="cur-price">1850</span></li>
														<li class="fl text">��ֵ<span class="old-price">�0�62299</span></li>
														<li class="fr text"><span class="part_in">16</span>���Ѳ���</li>
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
													<h5 class="title">��NS336������USB����Wifi������/�������������ͣ�2ɫ��ѡ�����ʣ�</h5>
													<ul class="ot clearfix">
														<li class="fl cur">�0�6<span class="cur-price">18.8</span></li>
														<li class="fl text">��ֵ<span class="old-price">�0�685</span></li>
														<li class="fr text"><span class="part_in">280</span>���Ѳ���</li>
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
													<h5 class="title">����</h5>
													<ul class="ot clearfix">
														<li class="fl cur">�0�6<span class="cur-price">0</span></li>
														<li class="fl text">��ֵ<span class="old-price">�0�60</span></li>
														<li class="fr text"><span class="part_in"></span>���Ѳ���</li>
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
													<h5 class="title">����</h5>
													<ul class="ot clearfix">
														<li class="fl cur">�0�6<span class="cur-price">0</span></li>
														<li class="fl text">��ֵ<span class="old-price">�0�60</span></li>
														<li class="fr text"><span class="part_in"></span>���Ѳ���</li>
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
													<h5 class="title">����</h5>
													<ul class="ot clearfix">
														<li class="fl cur">�0�6<span class="cur-price">0</span></li>
														<li class="fl text">��ֵ<span class="old-price">�0�60</span></li>
														<li class="fr text"><span class="part_in"></span>���Ѳ���</li>
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
													<h5 class="title">����</h5>
													<ul class="ot clearfix">
														<li class="fl cur">�0�6<span class="cur-price">0</span></li>
														<li class="fl text">��ֵ<span class="old-price">�0�60</span></li>
														<li class="fr text"><span class="part_in"></span>���Ѳ���</li>
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
													<h5 class="title">����</h5>
													<ul class="ot clearfix">
														<li class="fl cur">�0�6<span class="cur-price">0</span></li>
														<li class="fl text">��ֵ<span class="old-price">�0�60</span></li>
														<li class="fr text"><span class="part_in"></span>���Ѳ���</li>
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
													<h5 class="title">����</h5>
													<ul class="ot clearfix">
														<li class="fl cur">�0�6<span class="cur-price">0</span></li>
														<li class="fl text">��ֵ<span class="old-price">�0�60</span></li>
														<li class="fr text"><span class="part_in"></span>���Ѳ���</li>
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
													<h5 class="title">����</h5>
													<ul class="ot clearfix">
														<li class="fl cur">�0�6<span class="cur-price">0</span></li>
														<li class="fl text">��ֵ<span class="old-price">�0�60</span></li>
														<li class="fr text"><span class="part_in"></span>���Ѳ���</li>
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
													<h5 class="title">����</h5>
													<ul class="ot clearfix">
														<li class="fl cur">�0�6<span class="cur-price">0</span></li>
														<li class="fl text">��ֵ<span class="old-price">�0�60</span></li>
														<li class="fr text"><span class="part_in"></span>���Ѳ���</li>
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
													<h5 class="title">����</h5>
													<ul class="ot clearfix">
														<li class="fl cur">�0�6<span class="cur-price">0</span></li>
														<li class="fl text">��ֵ<span class="old-price">�0�60</span></li>
														<li class="fr text"><span class="part_in"></span>���Ѳ���</li>
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
													<h5 class="title">����</h5>
													<ul class="ot clearfix">
														<li class="fl cur">�0�6<span class="cur-price">0</span></li>
														<li class="fl text">��ֵ<span class="old-price">�0�60</span></li>
														<li class="fr text"><span class="part_in"></span>���Ѳ���</li>
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
													<h5 class="title">����</h5>
													<ul class="ot clearfix">
														<li class="fl cur">�0�6<span class="cur-price">0</span></li>
														<li class="fl text">��ֵ<span class="old-price">�0�60</span></li>
														<li class="fr text"><span class="part_in"></span>���Ѳ���</li>
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
													<h5 class="title">����</h5>
													<ul class="ot clearfix">
														<li class="fl cur">�0�6<span class="cur-price">0</span></li>
														<li class="fl text">��ֵ<span class="old-price">�0�60</span></li>
														<li class="fr text"><span class="part_in"></span>���Ѳ���</li>
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
		/* ������Ҫͳ�Ƶ�ģ�� */
		window.alogObjectConfig = { // ���ø���ͳ��ģ�飬����Ҫ��ģ�鲻���ü���
			product : '273', // ����, DPƽ̨��Ʒ��id
			page : "273_283", // ����, DPƽ̨ҳ��id

			// ����
			speed : {
				sample : '0.8' // ������, 0~1
			//special_pages: [{id:34,sample:1}] // ����ҳ�棬���ϵ���������һ��
			//custom_metrics : ['c_item1','p_item3'],//�Զ��������ָ�꣬�Զ��ϱ���ֻ����Щָ�궼ͳ�����֮�����ݲŻᷢ��
			},

			// ���ʡ����
			//monkey: {
			// sample: '0.3'      // ������, 0~1  ����ʹ������pv������50������
			//hid: ''       // �����ϰ汾��monkey��monkeyʵ���ID
			//pageflag: ''  // ���������Ʒ��ʹ�õ���monkey��pageflag
			// },

			// js�쳣
			exception : { // ע�⣺��Ҫ�쳣ͳ��ʱ��������������head�е���Ӧ����
				sample : '0.8' // ������, 0~1  ����ʹ������pv������50������
			},

			// ������
			feature : {
				sample : '0.8' // ������, 0~1  ����ʹ������pv������50������
			},

			// csp��ء���վ��Դ��XSS©������csp������˵�������ĵġ��߼����ܡ�
			csp : {
				sample : '0.8', // ������, 0~1  ����ʹ������pv������100������

				// Ĭ�ϵĿ�վ����, ��Ʒ�߿��Ը����Լ���ʵ����������޸�
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

				// Ԫ�������¼����ã��������ϵ� DOM-XSS
				'inline' : {
					'len-limit' : [ // �������ơ�����match�ַ���������Ӧ����
					{
						match : 400,
						target : 'Accept,Warn'
					} ],
					'key-limit' : [ // �ؼ������ơ�ƥ��match���������Ӧ����
					{
						match : /fromCharCode|getScript|alert\(\/|alert\(\d+/,
						target : 'Accept,Warn'
					} ],
					'unsafe-eval' : 'Accept,Warn' // �������¼������eval������������Ӧ����
				}
			}
		};

		// pc��mobile�˻����в�ͬ�������ϸ��ո��ĵ������𣬸öδ��������������window.alogObjectConfig����֮��
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
				page : monkeyPageId, //��дҳ���Monkey pageId���봴��ʵ��ʱ��д��ҳ��pageIdһ��
				pid : "241", //�̶��Ĳ��øģ�Monkey��־��pid
				p : "241", //logƽ̨Ϊÿ����Ʒ�߷ֵ�id�����û����Ϊ241
				hid : "2189", //Monkeyʵ���ID��Hunterϵͳʵ�����ҳ�б�ĵ�һ��
				postUrl : "http://nsclick.baidu.com/u.gif",//�̶�ֵ���ϱ�ͳ�Ƶ������ַ
				reports : {
					refer : 1, //ͳ��ҳ����Դ
					staytime : 1
				//ͳ���û��ڸ�ҳ���ͣ��ʱ��
				}
			});
		});

		//����PVͳ������
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
																			/*2014_08_11 zhangyijun02@baidu.com���������ö�������ʱ��ᵼ��������Ƶ������ʹ�ؼ�����������״̬����ɲ��ȶ����ֶ�����������ŵ���һ�µ����⣬�ʽ�ԭ�е�400ms��ʱȡ��*/
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
																			/*2014_08_11 zhangyijun02@baidu.com���������ö�������ʱ��ᵼ��������Ƶ������ʹ�ؼ�����������״̬����ɲ��ȶ����ֶ�����������ŵ���һ�µ����⣬�ʽ�ԭ�е�400ms��ʱȡ��*/
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
																			/*2014_08_11 zhangyijun02@baidu.com���������ö�������ʱ��ᵼ��������Ƶ������ʹ�ؼ�����������״̬����ɲ��ȶ����ֶ�����������ŵ���һ�µ����⣬�ʽ�ԭ�е�400ms��ʱȡ��*/
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
																			/*2014_08_11 zhangyijun02@baidu.com���������ö�������ʱ��ᵼ��������Ƶ������ʹ�ؼ�����������״̬����ɲ��ȶ����ֶ�����������ŵ���һ�µ����⣬�ʽ�ԭ�е�400ms��ʱȡ��*/
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
																			/*2014_08_11 zhangyijun02@baidu.com���������ö�������ʱ��ᵼ��������Ƶ������ʹ�ؼ�����������״̬����ɲ��ȶ����ֶ�����������ŵ���һ�µ����⣬�ʽ�ԭ�е�400ms��ʱȡ��*/
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
																			/*2014_08_11 zhangyijun02@baidu.com���������ö�������ʱ��ᵼ��������Ƶ������ʹ�ؼ�����������״̬����ɲ��ȶ����ֶ�����������ŵ���һ�µ����⣬�ʽ�ԭ�е�400ms��ʱȡ��*/
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
																			/*2014_08_11 zhangyijun02@baidu.com���������ö�������ʱ��ᵼ��������Ƶ������ʹ�ؼ�����������״̬����ɲ��ȶ����ֶ�����������ŵ���һ�µ����⣬�ʽ�ԭ�е�400ms��ʱȡ��*/
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
																			/*2014_08_11 zhangyijun02@baidu.com���������ö�������ʱ��ᵼ��������Ƶ������ʹ�ؼ�����������״̬����ɲ��ȶ����ֶ�����������ŵ���һ�µ����⣬�ʽ�ԭ�е�400ms��ʱȡ��*/
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
																			/*2014_08_11 zhangyijun02@baidu.com���������ö�������ʱ��ᵼ��������Ƶ������ʹ�ؼ�����������״̬����ɲ��ȶ����ֶ�����������ŵ���һ�µ����⣬�ʽ�ԭ�е�400ms��ʱȡ��*/
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
																content : '<p>ҵ��Υ��ٱ�������ܶ��Ź�ҵ��Υ�淽���Ͷ�ߺͽ���:<br />Ͷ�����䣺<a href="mailto:bdnm_jiancha@baidu.com" class="link">bdnm_jiancha@baidu.com</a><br />Ͷ�ߵ绰��13269403604 <br/></p><p>����������ܶ԰ٶ�Ŵ��Ա������Υ����Ϊ��ְҵ��������ľٱ�������:<br/>�ٱ����䣺<a href="mailto:bdjb@baidu.com" class="link">bdjb@baidu.com</a><br />�ٱ��绰��010-56797369</p><p>��������͵绰�������û���ѯ�����������</p>',
																footer : [ '<a href="javascript:;" class="dialog-btn-cancel j-dialog-btn" data-event="cancel">�ر�</a>' ]
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

								//2014_10_11 zhangyijun02: �����ӹ���ֲ��ع���־�߼�������showtrack��ʼ����ʽ
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
													// ��ʼ���������
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
																						// ������û��baiduid��������pv
																						sendPv();
																					} else {
																						if (retryCount--) {
																							getBaiduid();
																						} else {
																							// ���һ��Ҳ��ȡʧ��
																							sendPv();
																						}
																					}
																				}
																			});
														}
													}

													handleBaiduid();

													//2014_10_11 zhangyijun02: �����ӹ���ֲ��ع���־�߼�������ShowTrack��ʼ����ʽ
													//�ع���־ͳ��
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