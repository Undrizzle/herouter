<!doctype html> 
<head>
<meta name="KEYWords" Content="mainPageFlag">
<meta http-equiv="Pragma" CONTENT="no-cache">
<meta http-equiv="Cache-Control" CONTENT="no-cache">
<meta http-equiv="Expires" CONTENT="-1">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
<title>��·��-�й��ƶ�</title>
<link href="css/mainstyle.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/jquery.vegas.min.js"></script>
<script type="text/javascript" src="js/tinybox.js"></script>
<script type="text/javascript" src="js/herouter.js"></script>

<link href="css/jquery.vegas.css" rel="stylesheet" type="text/css" />
<link href="css/and.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/icons.css" />
<link rel="stylesheet" type="text/css" href="css/style1.css" />

<!--[if IE 8]>
<link rel="stylesheet" type="text/css" href="css/style1_ie8.css" />
<![endif]-->
<script type="text/javascript">

var WIFIAuthMode = "<% getCfgGeneral(1, "AuthMode"); %>";
var wifi_off='<% getCfgZero(1, "WiFiOff"); %>';
var EncrypType='<% getCfgZero(1, "EncrypType"); %>';	
var IEEE8021X  = '<% getCfgZero(1, "IEEE8021X"); %>';
var ConMode = "<% getCfgGeneral(1, "wanConnectionMode"); %>";
var WANIP = "<% getWanIp(); %>";
var isWanPortPlug = "<% getWanPortStatus(); %>";
var isNeedWizard = "<% getCfgGeneral(1, "needWizard"); %>";
var PingStatus = "<% getPingStatus(); %>";
var newUrl;

$(function() {
  $.vegas({
    src:'images/bodybg.jpg'
  });
});
function resetMenu(){
 TINY.box.show({iframe:'sysstate.asp',boxid:'frameless',width:700,height:420,fixed:false,maskopacity:40})
 
	 $("#bt-menu").removeClass("bt-menu-open");
	 $("#bt-menu").addClass("bt-menu-close");
	 
}
function advsetting(){
 TINY.box.show({iframe:'entconfig.asp',boxid:'frameless',width:700,height:420,fixed:false,maskopacity:40})
 
	$("#bt-menu").removeClass("bt-menu-open");
	 $("#bt-menu").addClass("bt-menu-close");
	
}

function reload()
{
  window.location.href="/herouter/login.asp";
}

function showupdating(){
	setTimeout("TINY.box.show({html:'<div class=waiting2 style=display:;><h2>·�������У����Ժ�</h2><div class=animation></div></div>',animate:false,close:false,boxid:'',top:5})",3000);
	setTimeout("TINY.box.show({html:'<div class=waiting3 style=display:;><h2>����ϵ磡�����У���رձ�ҳ�沢��5���Ӻ�ʹ�ú�·�ɡ�</h2><div class=animation></div></div>',animate:false,close:false,boxid:'',top:5})",10000);
	setTimeout("TINY.box.hide();reload();", 85000);
}

function showLocalupdating(){
	setTimeout("TINY.box.show({html:'<div class=waiting2 style=display:;><h2>·�������У����Ժ�</h2><div class=animation></div></div>',animate:false,close:false,boxid:'',top:5})",10000);
	setTimeout("TINY.box.show({html:'<div class=waiting3 style=display:;><h2>����ϵ磡�����У���رձ�ҳ�沢��5���Ӻ�ʹ�ú�·�ɡ�</h2><div class=animation></div></div>',animate:false,close:false,boxid:'',top:5})",10000);
	setTimeout("TINY.box.hide();reload();", 85000);
}

function restored_reload()
{
	window.location.replace("http://192.168.8.1/herouter/login.asp");
}

function showrestoring(){
	setTimeout("TINY.box.show({html:'<div class=waiting3 style=display:;><h2>�����У��������罫�Ͽ�����ر�ҳ�沢��1���Ӻ����½���</h2><div class=animation></div></div>',animate:false,close:false,boxid:'',top:5})",1000);
	setTimeout("TINY.box.hide();restored_reload()", 70000);
}

function showchangepwd(){
	setTimeout("TINY.box.show({html:'<div class=waiting3 style=display:;><h2>�����޸ĳɹ��������µ�¼</h2><div class=animation></div></div>',animate:false,close:false,boxid:'',top:5})",2000);
	setTimeout("TINY.box.hide();reload();", 6000);
}

function reload_main()
{
  window.location.href="/herouter/main.asp";
}

function showConfProcess(){
	setTimeout("TINY.box.show({html:'<div class=waiting3 style=display:;><h2>���óɹ����������罫�Ͽ�����ر�ҳ�沢��30������½���</h2><div class=animation></div></div>',animate:false,close:false,boxid:'',top:5})",3000);
	setTimeout("TINY.box.hide();reload_main();", 20000);
}

function showWifiConfProcess(){
	setTimeout("TINY.box.show({html:'<div class=waiting2 style=display:;><h2>��������·���������Ժ�</h2><div class=animation></div></div>',animate:false,close:false,boxid:'',top:5})",3000);
	setTimeout("TINY.box.show({html:'<div class=waiting3 style=display:;><h2>���óɹ����������罫�Ͽ�����ر�ҳ�沢��1���Ӻ����½���</h2><div class=animation></div></div>',animate:false,close:false,boxid:'',top:5})",10000);
	setTimeout("TINY.box.hide();reload_main();", 30000);
}

function showSettingProcess(){
	setTimeout("TINY.box.show({html:'<div class=waiting2 style=display:;><h2>���ڱ�������,���Ժ�</h2><div class=animation></div></div>',animate:false,close:false,boxid:'',top:5})",3000);
	setTimeout("TINY.box.show({html:'<div class=waiting3 style=display:;><h2>���óɹ����������罫�Ͽ�������30������½��뱾ҳ��</h2><div class=animation></div></div>',animate:false,close:false,boxid:'',top:5})",10000);
	setTimeout("TINY.box.hide();reload_main();", 30000);
}

function  getNewLinkValue(value)
{
  newUrl = value;
}

function reloadNewMain()
{
	window.location.replace(newUrl);
}

function showEntProcess(){
	setTimeout("TINY.box.show({html:'<div class=waiting3 style=display:;><h2>���ڱ������ã����Ժ�...</h2><div class=animation></div></div>',animate:false,close:false,boxid:'',top:5})",2000);
	//setTimeout("TINY.box.hide();Alert('���óɹ����������罫�Ͽ�������30������½��뱾ҳ��', 30);",30000);
	setTimeout("TINY.box.show({html:'<div class=waiting3 style=display:;><h2>���óɹ����������罫�Ͽ�������30������½��뱾ҳ��</h2><div class=animation></div></div>',animate:false,close:false,boxid:'',top:5});",30000);
	setTimeout("reloadNewMain();", 60000);
}

function openwifipage()
{
	TINY.box.show({iframe:'wifisetting1.asp',boxid:'frameless',width:700,height:420,fixed:false,maskopacity:40})		
}
function openMACpage()
{
	TINY.box.show({iframe:'wirelessMAC.asp',boxid:'frameless',width:700,height:420,fixed:false,maskopacity:40})		
}
function openQuick()
{
	TINY.box.show({iframe:'QuickSetUp.asp',boxid:'frameless',width:700,height:420,fixed:false,maskopacity:40})
}
$(document).ready(function(){
	
	//wifi enable
	if(wifi_off == 0){
		  
          $("#wifistate").addClass("wifiok");  
	}else{
		  $("#wifistate").addClass("wificlose");
	}

	//internet ico
  if (PingStatus != "pass")	{
  	  $("#internet").addClass("interr");  
  }else{
      $("#internet").removeClass("interr");	
  }
	
	if(isNeedWizard == 1)
	{
      TINY.box.show({iframe:'QuickSetUp.asp',boxid:'frameless',width:700,height:420,fixed:false,maskopacity:40})
	}
	
});

function reboot_alert()
{
    if (confirm("��ȷ����Ҫ������?")){ 
        document.reboot.submit(); 
        showrestoring();
    }else{ 
    	  /*do nothing*/
    }
}

</script>
</head>


<body>
<div class="head">
	<div class="logo"></div>
	<div class="menu">
		<ul>
			<li class="line" onClick="TINY.box.show({iframe:'netdiags.asp',boxid:'frameless',width:750,height:380,fixed:false,maskopacity:40})"><strong><span>�������</span></strong></li>
			<li class="line" onClick="TINY.box.show({iframe:'changepassword.asp',boxid:'frameless',width:700,height:420,fixed:false,maskopacity:40})"><strong><span>�޸Ĺ���Ա����</span></strong></li>
			<li class="line" onClick="TINY.box.show({iframe:'QuickSetUp.asp',boxid:'frameless',width:700,height:420,fixed:false,maskopacity:40})" ><strong><span class="qc"><b>������</b></span></strong></li>
			<li class="line"
			onClick="TINY.box.show({iframe:'ShowSysLog.asp',boxid:'frameless',width:700,height:420,fixed:false,maskopacity:40})"
			><strong><span class="qc"><b>ϵͳ��־</b></span></strong></li>
			<form method="post" name="reboot" target="submitFrame" id="reboot" action="/goform/reboot">
			<input type="hidden" name="LoadDefault" value="Load+Default"/>
			<li><strong><span class="reset" onclick="javascript:reboot_alert();"><b>����·��</b></span></strong></li>
			</form>
			<!--for reboot submint-->
			<iframe style="width:0; height:0; margin-top:-10px; visibility:hidden; display:none;" name="submitFrame" src="about:blank"></iframe>
		</ul>
	</div>
</div>
<div class="mainsetting">
	<div class="ccbg">
		<div class="section1">
			<div id="internet" class="intstate">
				<div class="intok "></div>
				<div class="btnarea">
					<div class="btnint" id="intbtn" style="position:absolute;" onClick="TINY.box.show({iframe:'intconfig.asp',boxid:'frameless',width:700,height:420,fixed:false,maskopacity:40})" >
						<b></b><span>������</span><strong></strong>
					</div>
				</div>
				<div class="stateline"></div>
			</div>
			<div class="wifistate" id="wifistate">
				<div class="wifiok"></div>
				<div class="btnarea">
					<div class="btnint" id="wifibtn" onClick="TINY.box.show({iframe:'wifisetting1.asp',boxid:'frameless',width:700,height:420,fixed:false,maskopacity:40})">
						<b></b><span>����</span><strong></strong>
					</div>
				</div>
				<div class="stateline"></div>
			</div>
			
		</div>
		<div class="section2">
			<div class="linkstate">
				<div class="btnarea">
					<div class="btnint"  onclick="TINY.box.show({iframe:'devicemag.asp',boxid:'frameless',width:700,height:530,fixed:false,maskopacity:40})">
						<span><em><% getCliNum(); %></em>̨�����豸���ӵ���·��</span><strong></strong>
					</div>
				</div>
			</div>
		</div>
</div>

<div class="testmusic" id="bottomNav" >
	<div class="qrcode"><img src="images/qrcode.png" /><p>�ֻ��ͻ�������</p></div>
  <div class="footer">
  <a href="http://www.andluyou.com">�ٷ���վ</a><span>|</span>�����ַ:<% getWanMac(); %><span>|</span>�汾:<% getSoftwareVersion(); %></div>
</div>

<nav id="bt-menu" class="bt-menu">
	<ul>
		<a href="#" onClick="resetMenu();" ><span style="background:url(images/sysstate.png) no-repeat center center;  display:block; width:90px; height:80px;"></span></a>
		<a href="#" onClick="advsetting();" ><span style="background:url(images/advsetting.png) no-repeat center center; display:block; width:90px; height:80px;"></span></a>
	</ul>
</nav>

</body>
<script src="js/classie.js"></script>
<script src="js/borderMenu.js"></script>
</html>
