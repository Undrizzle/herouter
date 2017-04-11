<!doctype html> 
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>����������</title>
<link href="css/mainstyle.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/herouter.js"></script>
<style type="text/css">
<!--
body{ color:#676767;}
*{-moz-transition: all 0.3s ease-in;-webkit-transition: all 0.3s ease-in;-o-transition: all 0.3s ease-in;transition: all 0.3s ease-in;}
*:hover{-moz-transition: all 0.3s ease-in;-webkit-transition: all 0.3s ease-in;-o-transition: all 0.3s ease-in;transition: all 0.3s ease-in;}
.int { height:410px; width:670px; overflow:hidden; background:#fff url(images/popbg.gif) repeat-x 0 -2px; padding:5px 15px;}
.int h1{ font-size:18px; line-height:50px; }
.int h1 span{ font-size:12px; color:#919191; padding-left:15px; font-weight:normal;}
.mainsetting{ padding:30px; }
.mainsetting h2{ font-size:14px; line-height:38px;}
.c1{ height:48px;}
.c1 b{ display:block; height:48px; cursor:pointer; width:190px; font-weight:normal; float:left; background:#77d1df; font-size:18px; color:#fff; text-align:center; line-height:48px;}
.c1 a{ background:url(images/help.png) no-repeat center center; display:block; float:left; height:48px; width:30px;}
.c1 b:hover{ background:#56bbcb;}
.c1 span{  font-size:12px; color:#919191; padding:0 0 0 15px; float:left; font-weight:normal; line-height:48px;}
.c1 .err{ background:#e71b1b;}
.c1 .err:hover{ background:#da1515;}
.mainsetting h3{ font-size:24px; font-weight:normal; line-height:50px; color:#29b8e4;}
.c2{ border-top:1px #e6e6e6 solid; margin-top:80px; line-height:30px;}

.cfg{ padding:15px 0; height:330px;}
.cfgleft{ float:left; width:185px; height:330px; background:url(images/cfgleftbg.png) repeat-y;}
.cfgleft ul{}
.cfgleft li{ cursor:pointer; height:40px; line-height:40px; font-size:14px; color:#666; border-left:4px #dfdfdf solid ; padding-left:12px;}
.cfgleft li a,.cfgleft li a:visited{color:#666; display:block; height:40px;width:170px; }
.cfgleft li a:hover,.cfgleft li a:active{ text-decoration:none;}
.cfgleft li:hover{ border-left:4px #1e9ec5 solid;  font-weight:bold;}
.cfgleft li.on{ border-left:4px #1e9ec5 solid; color:#1e9ec5; font-weight:bold; font-size:14px; background:#fff url(images/arrow1.png) no-repeat 170px center;}
.cfgleft li.on a{color:#1e9ec5;}
.cfgright{ float:right; width:470px; height:330px;}
.cfgright td{ height:36px; font-size:14px;}
.cfgright td span{ padding-left:50px; font-size:14px;}
.cfgright .spheight{ height:60px; }
.cfgright td label{ font-size:14px; line-height:60px;}
.radiobox{ margin-top:-2px;}
.inp1 {height:26px; border:1px #d2d2d2 solid; width:160px;font-family:"΢���ź�"; color:#666; padding:0 10px;}
.subpart{ height:48px; padding-left:120px; padding-top:15px;}
.subpart ul{}
.subpart li{ float:left; padding-right:10px;}
.subpart b{ display:block; height:48px; cursor:pointer; width:170px; font-weight:normal; float:left; background:#77d1df; font-size:18px; color:#fff; text-align:center; line-height:48px;}
.subpart b:hover{ background:#56bbcb;}
.subpart .cancel{ width:110px; background:#99e4f0; }

.selectswitch{ height:29px;}
.selectswitch em{ float:left; height:20px; width:20px; display:block; margin:4px; padding:0;}
.selectswitch .closestate{ background:url(images/wifistateicon.png) no-repeat;}
.selectswitch .openstate{background:url(images/wifistateicon.png) no-repeat 0 -40px;}
.cfgright td .selectswitch span{ float:left; padding-left:0px; background:url(images/selbg.png) no-repeat; width:55px; height:29px; display:block;}
.selectswitch strong{ display:block; margin:3px; height:23px; width:49px; background:url(images/select.png) no-repeat right center; cursor:pointer;}
.switchoff{}
.switchoff .closestate{ background-position:0 -20px;}
.switchoff .openstate{ background-position:0 -60px;}
.switchoff  strong{ background-position:left center;}




.swindow{ height:203px; margin-top:5px; border:1px #f0f0f0 dashed; overflow-x:hidden; overflow-y:auto; }
.dhcp{ padding:0 10px;}
.sectionstyle{ height:45px; border-bottom:1px #efefef solid; }
.sectionstyle span{ float:left; font-size:14px; display:block; width:100px;line-height:45px;}
.sectionstyle em{ float:left; font-style:normal;line-height:45px;}
.sectionstyle b{ float:left; display:block; height:30px; padding:7px 5px 0 5px;}
.sectionstyle b input{ line-height:30px; width:40px; height:30px;border:1px #dedede solid; padding:0 5px;   font-family:Arial,"microsoft yahei", sans-serif;}

.selectinp{height:30px; border:1px #d2d2d2 solid; width:100px; line-height:26px; font-family:"΢���ź�";color:#666;padding:0 10px; background:#fff url(images/dropd.png) no-repeat right center;}
.fix{ position:absolute;}
.bm {margin-top:30px;position:absolute;}
.ganyin{ position:absolute; height:30px;cursor:pointer; border:1px #333 solid; z-index:100001; background:#0099CC;filter:alpha(opacity=0);-moz-opacity:0;-khtml-opacity: 0;opacity: 0;}
.bm ul{ padding:1px 0 0 0; border-bottom:1px #eee solid; border-left:1px #eee solid; border-right:1px #eee solid; }
.bm li{ color:#0781d9; line-height:30px; padding-left:10px; height:30px; background:#fff; font-size:12px; text-align:left; padding-right:12px; display:block;}
.bm .nowon{ color:#adadae;}
.bm li:hover{ background-color:#b2e9fd;cursor:pointer;}

.bandingcfg{ height:28px; padding:7px 0; font-size:14px; }
.bandingcfg strong{ line-height:28px; font-size:14px; float:left; padding-right:15px; font-weight:normal;}
.bandingcfg span{ float:left; height:28px; width:80px; display:block; text-align:center; line-height:28px; color:#fff; background:#77d1df; margin-right:10px; cursor:pointer;}
.bandingcfg span:hover{background:#56bbcb;}
.bandingcfg b{ float:left; font-weight:normal; height:28px; width:170px; display:block; text-align:center; line-height:28px; color:#fff; background:#99e4f0; cursor:pointer;}

.ipmaclist{}
.ipmaclist ul{}
.ipmaclist li{ float:left; width:340px; height:28px; border:1px #d1d1d1 dashed; margin:5px;}
.ipmaclist li input{ border:none; height:27px; width:132px; line-height:28px; padding:0 5px; font-family:Arial,"microsoft yahei", sans-serif;}
.ipmaclist li em{ font-style:normal; padding:0 5px; line-height:28px; float:left; width:300px; display:block;}
.ipmaclist li span{ display:block; width:28px; float:right; height:20px; margin:4px 0; border-left:1px #e1e1e1 solid; background:url(images/delmac.png) no-repeat center center; cursor:pointer;}

.devicelist{ position:absolute; z-index:99999; background:#f3f3f3;  top:-12px; left:200px;*left:15px; height:195px; padding:0 10px; width:450px;-moz-box-shadow:3px 3px 0px #dedede; -webkit-box-shadow:3px 3px 0px #dedede; box-shadow:3px 3px 0px #dedede; overflow:hidden;}
.devicelist h2{ height:36px; border-bottom:1px #eaeaea solid; margin-bottom:5px;}
.devicelist h2 b{ font-size:14px; float:left; line-height:36px; color:#666; color:#1e9ec5;}
.devicelist h2 span{ width:20px; height:36px; display:block; float:right; background:url(images/delmac.png) no-repeat center center; cursor:pointer;}
.devicelist .box{ height:153px; overflow:auto;}
.devicelist dl{ padding:6px; margin:3px 0; background:#fff; height:22px;}
.devicelist dt{ float:right; width:22px; height:22px; background:url(images/btnadd.png) no-repeat center center; cursor:pointer;}
.devicelist dd{ float:left; width:125px; font-size:12px; line-height:16px; color:#666;}
.changepage{ padding-top:7px; height:20px;}
.changepage em{ font-style:normal; float:left; color:#666; }
.changepage span{ float:right; margin-left:5px; display:block; height:20px; cursor:pointer; width:30px; background:url(images/macarrow.png) no-repeat center 0;}
.changepage .prev{ background-position: center -10px;}
.changepage .disprev{ background-position: center -50px;}
.changepage .next{ background-position: center -90px;}
.changepage .disnext{  background-position:center -130px}
-->
</style>
<script type="text/javascript">
	var dhcpstart = "<% getCfgGeneral(1, "dhcpStart"); %>";
	var dhcpend = "<% getCfgGeneral(1, "dhcpEnd"); %>";
	var staticip1 = "<% getCfgNthGeneral(1, "dhcpStatic1", 0); %>";
	var staticmac1 = "<% getCfgNthGeneral(1, "dhcpStatic1", 1); %>";
	var staticip2 = "<% getCfgNthGeneral(1, "dhcpStatic2", 0); %>";
	var staticmac2 = "<% getCfgNthGeneral(1, "dhcpStatic2", 1); %>";
	var staticip3 = "<% getCfgNthGeneral(1, "dhcpStatic3", 0); %>";
	var staticmac3 = "<% getCfgNthGeneral(1, "dhcpStatic3", 1); %>";
	//var dhcpstart = "111.111.111.12";
	//var dhcpend = "111.111.111.254";
	//var staticmac1 = "60:6C:66:BD:7B:03";
	//var staticip1 = "192.168.1.23";
	//var staticmac2 = "60:6C:66:BD:7B:04";
	//var staticip2 = "192.168.1.111";
	//var staticmac3 = "11:22:33:44:55:66";
	//var staticip3 = "10.10.10.12";
	//var staticmac3 = "";
	//var staticip3 = "";
function atoi(str, num)
{
	i = 1;
	if (num != 1) {
		while (i != num && str.length != 0) {
			if (str.charAt(0) == '.') {
				i++;
			}
			str = str.substring(1);
		}
		if (i != num)
			return -1;
	}

	for (i=0; i<str.length; i++) {
		if (str.charAt(i) == '.') {
			str = str.substring(0, i);
			break;
		}
	}
	if (str.length == 0)
		return -1;
	return parseInt(str, 10);
}

function checkRange(str, num, min, max)
{
	d = atoi(str, num);
	if (d > max || d < min)
		return false;
	return true;
}

function isAllNum(str)
{
	for (var i=0; i<str.length; i++) {
		if ((str.charAt(i) >= '0' && str.charAt(i) <= '9') || (str.charAt(i) == '.' ))
			continue;
		return 0;
	}
	return 1;
}

function checkIpAddr(field, ismask)
{
	if (field.value == "") {
		alert("IP��ַΪ��");
		field.value = field.defaultValue;
		field.focus();
		return false;
	}

	if (isAllNum(field.value) == 0) {
		alert("����������");
		field.value = field.defaultValue;
		field.focus();
		return false;
	}

	if (ismask) {
		if ((!checkRange(field.value, 1, 0, 255)) ||
				(!checkRange(field.value, 2, 0, 255)) ||
				(!checkRange(field.value, 3, 0, 255)) ||
				(!checkRange(field.value, 4, 0, 255)))
		{
			alert("IP��ַ����");
			field.value = field.defaultValue;
			field.focus();
			return false;
		}
	}
	else {
		if ((!checkRange(field.value, 1, 0, 255)) ||
				(!checkRange(field.value, 2, 0, 255)) ||
				(!checkRange(field.value, 3, 0, 255)) ||
				(!checkRange(field.value, 4, 1, 254)))
		{
			alert("IP ��ַ����");
			field.value = field.defaultValue;
			field.focus();
			return false;
		}
	}
	return true;
}
	
function check_value()
{
	if(parseInt(document.dhcp_setting.startip4.value) >= parseInt(document.dhcp_setting.endip4.value))
	{
		alert("������ַ���������ʼ��ַ��");
		return false;
	}
	else
	{
		stip = new Array;
		stip = dhcpstart.split(".");
		edip = new Array;
		edip = dhcpend.split(".");
		var sturl= stip[0] + "." + stip[1] + "." + stip[2];
		document.dhcp_setting.starthidden.value = sturl + "." + document.dhcp_setting.startip4.value;
		var edurl= edip[0] + "." + edip[1] + "." + edip[2];
		document.dhcp_setting.endhidden.value = edurl + "." + document.dhcp_setting.endip4.value;
		if (!checkIpAddr(document.dhcp_setting.starthidden, false))
		return false;
		if (!checkIpAddr(document.dhcp_setting.endhidden, false))
		return false;
		
	}
	if(document.dhcp_setting.leasetime.value < 1 || document.dhcp_setting.leasetime.value > 168)
	{
		alert("����ʱ�����Ϊ1Сʱ,�Ϊһ�ܣ�");
		return false;
	}
	else if(parseInt(document.dhcp_setting.leasetime.value) != document.dhcp_setting.leasetime.value)
	{
    alert("������������");
    return false;
	}
	else
	{
		document.dhcp_setting.realtime.value = (parseInt(document.dhcp_setting.leasetime.value))*3600;
	}
	if(document.dhcp_setting.macaddr.value != ""  && document.dhcp_setting.ipaddr.value != "")
	{
		if (!checkIpAddr(document.dhcp_setting.ipaddr, false))
		return false;
		var re = /[A-Fa-f0-9]{2}:[A-Fa-f0-9]{2}:[A-Fa-f0-9]{2}:[A-Fa-f0-9]{2}:[A-Fa-f0-9]{2}:[A-Fa-f0-9]{2}/;
		if (!re.test(document.dhcp_setting.macaddr.value)) {
			var message = document.dhcp_setting.macaddr.value + "�ǷǷ�MAC��ַ!";
			alert(message);
			return false;
		}		
		if((document.dhcp_setting.bdmac1.value == "") && (document.dhcp_setting.bdip1.value == ""))
		{
			document.dhcp_setting.static1.value = document.dhcp_setting.macaddr.value + ";" +document.dhcp_setting.ipaddr.value;
			//document.dhcp_setting.bdip1.value = document.dhcp_setting.ipaddr.value;
		}
		else if((document.dhcp_setting.bdmac2.value == "") && (document.dhcp_setting.bdip2.value == ""))
		{
			document.dhcp_setting.static2.value = document.dhcp_setting.macaddr.value + ";" +document.dhcp_setting.ipaddr.value;
			//document.dhcp_setting.bdmac2.value = document.dhcp_setting.macaddr.value;
			//document.dhcp_setting.bdip2.value = document.dhcp_setting.ipaddr.value;
		}
		else if ((document.dhcp_setting.bdmac3.value == "") && (document.dhcp_setting.bdip3.value == ""))
		{
			document.dhcp_setting.static3.value = document.dhcp_setting.macaddr.value + ";" +document.dhcp_setting.ipaddr.value;
			//document.dhcp_setting.bdmac3.value = document.dhcp_setting.macaddr.value;
			//document.dhcp_setting.bdip3.value = document.dhcp_setting.ipaddr.value;
		}
	}
	return true;
		
}
	
function dhcp_apply()
{
	if(check_value()==true)
	{
		document.dhcp_setting.submit(); 
		//alert("�����������Ե�.....");
		Alert("���ڱ������ã����Ժ�......", 20);
	}
}
</script>
</head>

<body>
<form method="post" name="dhcp_setting" id="dhcp_setting" action="/goform/dhcpbanding">
<div class="int">
	<h1>�߼�����</h1>
    <div class="cfg">
		<div class="fix">
			<div class="devicelist" style="display: none">
				<h2><b>��ǰDHCP�豸�б�</b><span></span></h2>
                <div class="box">
                	
				<% getDhcpCliList4He(); %>
				
				</div>
			</div>
		</div>
        <div class="cfgleft">
            <ul>
                <li><a href="entconfig.asp">����������</a></li>
                <li class="on"><a href="DHCPbanding.asp">DHCP����</a></li>
				<li><a href="MACClone.asp">MAC��ַ��¡</a></li>
				<li><a href="wirelesschannel.asp">�����ŵ�����</a></li>
				<li><a href="wirelessMAC.asp">����MAC��ַ���ʿ���</a></li>
				<li><a href="systemtime.asp">ϵͳʱ�����</a></li>
				<li><a href="sysupdate.asp">ϵͳ����</a></li>
				<li><a href="restoredefault.asp">�ָ���������</a></li>
            </ul>
        </div>
        <div class="cfgright" style="padding-top:10px;">
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="8%" align="right">����</td>
                <td width="92%">
					<div class="selectswitch" id="state">
						<em class="closestate"></em><span><strong id="switch"></strong></span><em class="openstate"></em>
						<input type="hidden" id="dhcphidden" name="dhcphidden" value="">
					</div>
				</td>
              </tr>
            </table>
			<div class="swindow">
				<div class="dhcp">
					<div class="sectionstyle">
						<span>IP ���䷶Χ</span><em><input name="startip1" id="startip1" type="text" size="1" readonly="readonly" style="border:0">.</em>
						<b>
						<input name="startip4" id="startip4" size="3" type="text">
						</b>
						<input type="hidden" id="starthidden" name="starthidden" value=""><em>�� <input name="endip1" id="endip1" type="text" size="1" readonly="readonly" style="border:0">.</em><b><input name="endip4" type="text"></b><input type="hidden" id="endhidden" name="endhidden" value="">
					</div>
					<div class="sectionstyle">
						<span>����ʱ��</span><b><input name="leasetime" id="leasetime" type="text"></b><b>
						<input name="Input" value="Сʱ" readonly="readonly" style="width:30px; border:0">
						<input type="hidden" id="realtime" name="realtime" value=""></div>
					<div class="bandingcfg" style="display: none">
						<strong>IP �� MAC ��ַ��</strong><span onClick="javascript:addmacip();">������</span><b>��ʾ��ǰDHCP�豸�б�</b>
					</div>
					<div class="ipmaclist" style="display: none">
						<ul>
							<li><input name="macaddr" id="macaddr" type="text" placeholder="MAC ��ַ" title="MAC ��ַ"> 
							&gt; 
							<input name="ipaddr" id="ipaddr" type="text" placeholder="IP ��ַ" title="IP ��ַ"></li>
							<li id="bangding1"><em><input type="text" readonly="readonly" id="bdmac1" name="bdmac1" title="MAC ��ַ" value="" placeholder="MAC ��ַ"> 
							&gt; 
							<input type="text" readonly="readonly" id="bdip1" name="bdip1" title="IP ��ַ" value="" placeholder="IP ��ַ">
							</em><span onClick="javascript:delmacip(1);"></span><input type="hidden" id="static1" name="static1" value=""></li>
							<li id="bangding2"><em><input type="text" readonly="readonly" id="bdmac2" name="bdmac2" title="MAC ��ַ" value="" placeholder="MAC ��ַ"> 
							&gt; 
							<input type="text" readonly="readonly" id="bdip2" name="bdip2" title="IP ��ַ" value="" placeholder="IP ��ַ">
							</em><span onClick="javascript:delmacip(2);"></span><input type="hidden" id="static2" name="static2" value=""></li>
							<li id="bangding3"><em><input type="text" readonly="readonly" id="bdmac3" name="bdmac3" title="MAC ��ַ" value="" placeholder="MAC ��ַ"> 
							&gt; 
							<input type="text" readonly="readonly" id="bdip3" name="bdip3" title="IP ��ַ" value="" placeholder="IP ��ַ">
							</em><span onClick="javascript:delmacip(3);"></span><input type="hidden" id="static3" name="static3" value=""></li>
						</ul>
					</div>
				</div>
		    </div>
			<div class="subpart">
                <ul>
                    <li><b id="subbtn">����</b></li>
                    <li><b class="cancel" onClick="javascript:parent.TINY.box.hide();">ȡ��</b></li>
                </ul>
            </div>
			

        </div>
    </div>
</div>
</form>
<script type="text/javascript">
    var dhcpenbl = <% getCfgZero(1, "dhcpEnabled"); %>;
	var dhcpstart = "<% getCfgGeneral(1, "dhcpStart"); %>";
	var dhcpend = "<% getCfgGeneral(1, "dhcpEnd"); %>";
	var dhcpleasetime = "<% getCfgGeneral(1, "dhcpLease"); %>";
	var staticmac1 = "<% getCfgNthGeneral(1, "dhcpStatic1", 0); %>";
	var staticip1 = "<% getCfgNthGeneral(1, "dhcpStatic1", 1); %>";
	var staticmac2 = "<% getCfgNthGeneral(1, "dhcpStatic2", 0); %>";
	var staticip2 = "<% getCfgNthGeneral(1, "dhcpStatic2", 1); %>";
	var staticmac3 = "<% getCfgNthGeneral(1, "dhcpStatic3", 0); %>";
	var staticip3 = "<% getCfgNthGeneral(1, "dhcpStatic3", 1); %>";
	//var dhcpenbl = 1;
	//var dhcpstart = "111.111.111.254";
	//var dhcpend = "111.111.111.254";
	//var dhcpleasetime = "86400"
	//var staticmac1 = "60:6C:66:BD:7B:03";
	//var staticip1 = "192.168.1.23";
	//var staticmac2 = "60:6C:66:BD:7B:04";
	//var staticip2 = "192.168.1.111";
	//var staticmac3 = "11:22:33:44:55:66";
	//var staticip3 = "10.10.10.12";
	//var staticmac3 = "";
	//var staticip3 = "";
	function addmacip()
	{
		if((document.dhcp_setting.bdmac1.value != "") && (document.dhcp_setting.bdip1.value != "") && (document.dhcp_setting.bdmac2.value != "") && (document.dhcp_setting.bdip2.value != "") && (document.dhcp_setting.bdmac3.value != "") && (document.dhcp_setting.bdip3.value != ""))
		{
			alert("���ֻ����������󶨣�");
			return;
		}
		else
		{
			document.getElementById("macaddr").disabled = "";
			document.getElementById("ipaddr").disabled = "";
		}
		
	}
	function delmacip(id)
	{
		if(id == '1')
		{
			document.getElementById("bangding1").style.display = "none";
			document.dhcp_setting.bdmac1.value ="";
			document.dhcp_setting.bdip1.value ="";
			document.dhcp_setting.static1.value = "";
		}
		else if(id == '2')
		{
			document.getElementById("bangding2").style.display = "none";
			document.dhcp_setting.bdmac2.value ="";
			document.dhcp_setting.bdip2.value ="";
			document.dhcp_setting.static2.value = "";
		}
		else
		{
			document.getElementById("bangding3").style.display = "none";
			document.dhcp_setting.bdmac3.value ="";
			document.dhcp_setting.bdip3.value ="";
			document.dhcp_setting.static3.value = "";
		}
	}
	function call_edip(max_length) 
	{
			var size = document.dhcp_setting.endip1.size; 
			
			if((document.dhcp_setting.endip1.value == null ) || (document.dhcp_setting.endip1.value == "" )) document.dhcp_setting.endip1.size = size;
			if((document.dhcp_setting.endip1.value.length >= size) && (document.dhcp_setting.endip1.value.length <= max_length)) document.dhcp_setting.endip1.size = document.dhcp_setting.endip1.value.length + 1;
			else document.dhcp_setting.endip1.size = size;
	}
	function call_stip(max_length) 
	{
		
			var size = document.dhcp_setting.startip1.size; 
			
			if((document.dhcp_setting.startip1.value == null ) || (document.dhcp_setting.startip1.value == "" )) document.dhcp_setting.startip1.size = size;
			if((document.dhcp_setting.startip1.value.length >= size) && (document.dhcp_setting.startip1.value.length <= max_length)) document.dhcp_setting.startip1.size = document.dhcp_setting.startip1.value.length + 1;
			else document.dhcp_setting.startip1.size = size;
			var size = document.dhcp_setting.endip1.size; 
			
			if((document.dhcp_setting.endip1.value == null ) || (document.dhcp_setting.endip1.value == "" )) document.dhcp_setting.endip1.size = size;
			if((document.dhcp_setting.endip1.value.length >= size) && (document.dhcp_setting.endip1.value.length <= max_length)) document.dhcp_setting.endip1.size = document.dhcp_setting.endip1.value.length + 1;
			else document.dhcp_setting.endip1.size = size;
	}
	function $$$$$(_sId)
	{
 		return document.getElementById(_sId);
 	}
	function hide(_sId)
	{
		$$$$$(_sId).style.display = $$$$$(_sId).style.display == "none" ? "" : "none";
	 }
	function pick(v,targetid,abc) 
	{
		document.getElementById(targetid).value=v;
		hide(abc);
	}
	$(document).ready(function()
	{
	  var switchcode=dhcpenbl;
	  document.dhcp_setting.dhcphidden.value = switchcode;
		if(dhcpenbl==0)
		{
			$("#state").addClass("switchoff");
			$(".swindow").css("display","none");
			$(".macinfo").css("display","none");
		}
		else
		{
			$("#state").removeClass("switchoff");
			$(".swindow").css("display","");
			$(".macinfo").css("display","");
		}
		
		stip = new Array;
		stip = dhcpstart.split(".");
		edip = new Array;
		edip = dhcpend.split(".");
		var sturl= stip[0] + "." + stip[1] + "." + stip[2];
		document.dhcp_setting.startip1.value = sturl;
		document.dhcp_setting.startip4.value = stip[3];
		call_stip(20);
		var edurl= edip[0] + "." + edip[1] + "." + edip[2];
		document.dhcp_setting.endip1.value = edurl;
		document.dhcp_setting.endip4.value = edip[3];
		call_edip(20);
		
		document.dhcp_setting.leasetime.value = dhcpleasetime/3600;
		document.getElementById("macaddr").disabled = "disabled";
		document.getElementById("ipaddr").disabled = "disabled";
		//document.dhcp_setting.macaddr.disabled = disabled;
		//document.dhcp_setting.ipaddr.disabled = disabled;
		if((staticmac1 != "") && (staticip1 != ""))
		{
			document.dhcp_setting.bdmac1.value =staticmac1;
			document.dhcp_setting.bdip1.value =staticip1;
			document.dhcp_setting.static1.value = staticmac1 + ";" + staticip1;
			document.getElementById("bangding1").style.display = "hidden";
		}
		else
		{
			document.getElementById("bangding1").style.display = "none";
		}
		
		if((staticmac2 != "") && (staticip2 != ""))
		{
			document.dhcp_setting.bdmac2.value =staticmac2;
			document.dhcp_setting.bdip2.value =staticip2;
			document.dhcp_setting.static2.value = staticmac2 + ";" + staticip2;
			document.getElementById("bangding2").style.display = "hidden";
		}
		else
		{
			document.getElementById("bangding2").style.display = "none";
		}
		if((staticmac3 != "") && (staticip3 != ""))
		{
			document.dhcp_setting.bdmac3.value =staticmac3;
			document.dhcp_setting.bdip3.value =staticip3;
			document.dhcp_setting.static3.value = staticmac3 + ";" + staticip3;
			document.getElementById("bangding3").style.display = "hidden";
		}
		else
		{
			document.getElementById("bangding3").style.display = "none";
		}
		
		$("#switch").click(function(){
			if(switchcode==1){
				 $("#state").addClass("switchoff");
				 switchcode=0;
				 document.dhcp_setting.dhcphidden.value =switchcode;
				 
				 $(".swindow").css("display","none");
				 $(".macinfo").css("display","none");
				}else{
				$("#state").removeClass("switchoff");
				$(".swindow").css("display","");
				$(".macinfo").css("display","");
				switchcode=1;
				document.dhcp_setting.dhcphidden.value =switchcode;
				}
		});
		$(".bandingcfg b").click(function(){
			$(".devicelist").css("display","")
		});
		$(".devicelist h2 span").click(function(){
			$(".devicelist").css("display","none")
		});
		$(".devicelist dl dt").click(function(){
			//alert($(this).parent().children("dd").asp());
			confirm($(this).parent().children("dd").asp()+"��MAC��ַ����ʹ��IP��ַ������ " );
		});
		
		$("#subbtn").click(function(){
			if(check_value()==false)
				return false;
				
		Alert("���ڱ������ã����Ժ�", 10);	
		setTimeout("Alert('���óɹ����������罫�Ͽ�������30������½��뱾ҳ��', 20)", 10100);	
      $.ajax({
      	type: "post",
        url: "/goform/dhcpbanding",     
        data: $("#dhcp_setting").serialize(),    
        success: function(data){
        	//alert("����ɹ���");
        },
        error: function(data) {
        	//alert("����ʧ�ܣ�\n" + data);
        }
      })
    });
    
	});


</script>
</body>
</html>
