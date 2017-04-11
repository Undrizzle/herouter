<!doctype html> 
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>����������</title>
<link href="css/mainstyle.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery.js"></script>
<style type="text/css">
<!--
body{ color:#676767;}
*{-moz-transition: all 0.3s ease-in;-webkit-transition: all 0.3s ease-in;-o-transition: all 0.3s ease-in;transition: all 0.3s ease-in;}
*:hover{-moz-transition: all 0.3s ease-in;-webkit-transition: all 0.3s ease-in;-o-transition: all 0.3s ease-in;transition: all 0.3s ease-in;}
.int { height:410px; width:670px; overflow:hidden; background:#fcfcfa url(images/fullbg.gif) repeat-x; padding:5px 15px;}
.int h1{ font-size:18px; line-height:50px; border-bottom:1px #d3d3d3 solid;}
.int h1 span{ font-size:12px; color:#919191; padding-left:15px; font-weight:normal;}
.state{ padding:15px 0; color:#757575;}
.state1{ float:left; width:335px;; padding:10px ;}
.state2{ float:right; width:295px;  padding:10px ;}
.basicinfo{ padding:5px 0px 20px 0; border-bottom:1px #ddd solid;}
.basicinfo ul{}
.basicinfo li{ line-height:28px; font-size:12px; height:28px;}
.basicinfo li b{ width:80px; display:block; float:left;}
.basicinfo li span{ display:block; float:left;}
.intstate{ padding-top:15px;}
.intstate h3{ font-size:16px; color:#3aaec1; line-height:28px;}
.intstate ul{}
.intstate li{line-height:28px; font-size:12px; height:28px;}
.intstate li b{width:70px; display:block; float:left;}
.intstate li span{display:block; float:left;}
.intstate li a,.intstate li a:visited{ display:block; height:28px; padding:0 12px; background:#77d1df; float:left; color:#fff; margin-left:10px; }
.intstate li a:hover,.intstate li a:active{ text-decoration:none; background:#56bbcb;}

.entstate{  padding-bottom:10px; border-bottom:1px #ddd solid;}
.entstate h3{ font-size:16px; color:#3aaec1; line-height:28px;}
.entstate ul{}
.entstate li{line-height:28px; font-size:12px; height:28px;}
.entstate li b{width:70px; display:block; float:left;}
.entstate li span{display:block; float:left;}
.entstate li a,.intstate li a:visited{ display:block; height:28px; padding:0 12px; background:#77d1df; float:left; color:#fff; margin-left:10px; }
.entstate li a:hover,.intstate li a:active{ text-decoration:none; background:#56bbcb;}

.wifistate{ }
.wifistate h3{ font-size:16px; padding-top:10px; color:#3aaec1; line-height:28px;}
.wifistate ul{}
.wifistate li{line-height:28px; font-size:12px; height:28px;}
.wifistate li b{width:70px; display:block; float:left;}
.wifistate li span{display:block; float:left;}
.wifistate li a,.intstate li a:visited{ display:block; height:28px; padding:0 12px; background:#77d1df; float:left; color:#fff; margin-left:10px; }
.wifistate li a:hover,.intstate li a:active{ text-decoration:none; background:#56bbcb;}


-->
</style>
<script type="text/javascript">
function $$$$$(_sId){
 return document.getElementById(_sId);
 }
function hide(_sId){
	$$$$$(_sId).style.display = $$$$$(_sId).style.display == "none" ? "" : "none";
 }
function pick(v,targetid,abc) {
	document.getElementById(targetid).value=v;
	hide(abc);
}
var switchcode=0;
$(document).ready(function(){
	$("#switch").click(function(){
		if(switchcode==0){
			 $("#state").addClass("switchoff");
			 switchcode=1;
			}else{
			$("#state").removeClass("switchoff");
			switchcode=0;
			}
	})
	


	
});

var ChannelSeleted ='<% getChannelSelected(); %>';

function aa(){
	parent.TINY.box.hide();
}
function PageInit()
{
	var PhyMode  = '<% getCfgZero(1, "WirelessMode"); %>';
	var wifi_off = '<% getCfgZero(1, "WiFiOff"); %>';
	var Autochannel = '<% getWlanChannel(); %>';
	var WIFIAuthMode = "<% getCfgGeneral(1, "AuthMode"); %>";
	var CurrentChannel = '<% GetCurrentChannel(); %>'; 
	
	if(wifi_off == '0')
	{
		document.getElementById("wifiup").style.display = "block";
		document.getElementById("wifidown").style.display = "none";
	}
	else
	{
		document.getElementById("wifiup").style.display = "none";
		document.getElementById("wifidown").style.display = "block";
	}

	if(ChannelSeleted == 'AutoSelect' || Autochannel == '0')
	{
		wirelesschannel.innerHTML = CurrentChannel + " (�Զ�ѡ��)";
		document.getElementById("manualselect").style.display = "none";
		document.getElementById("autoselect").style.display = "block";
	}
	else
	{
		document.getElementById("manualselect").style.display = "block";
		document.getElementById("autoselect").style.display = "none";
	}
	 
	if(WIFIAuthMode == 'OPEN')
	{
		document.getElementById("wifiopen").style.display = "block";
		document.getElementById("wifisecurity").style.display = "none";
	}
	else
	{
		document.getElementById("wifiopen").style.display = "none";
		document.getElementById("wifisecurity").style.display = "block";
	}
	
}
</script>
</head>

<body onLoad="PageInit()">
<div class="int">
  <h1>ϵͳ״̬</h1>
  <div class="state">
    <div class="state1">
      <div class="basicinfo">
        <ul>
          <li><b>����ʱ��</b><span>
            <% getSysUptime(); %>
          </span></li>
        </ul>
        <ul>
          <li><b>STBID</b><span style="width:130px;">
            <% getStbid(); %>(����ר��)
           </span></li>
        </ul>
        <div class="clean"></div>
      </div>
      <div class="intstate">
        <h3>������</h3>
        <ul>
          <li><b>������ʽ</b><span>
            <% getCfgGeneral(1, "wanConnectionMode"); %>
          </span></li>
          <li><b>IPv4��ַ</b><span>
            <% getWanIp(); %>
            /
            <% getWanNetmask(); %>
          </span><!--<a href="#">�޸�</a>--></li>
          <li><b>IPv6��ַ</b><span>
            <% getCfgGeneral(1, "IPv6WANIPAddr"); %>
            /
            <% getCfgGeneral(1, "IPv6WANPrefixLen"); %>
          </span></li>
          <li><b>MAC��ַ</b><span>
            <% getWanMac(); %>
          </span></li>
          <li><b>DNS��ַ</b><span>
            <% getDns(1); %>
            /
            <% getDns(2); %>
          </span></li>
          <li><b>���ص�ַ</b><span>
            <% getWanGateway(); %>
          </span></li>
        </ul>
      </div>
    </div>
    <div class="state2">
	  <div class="entstate">
        <h3>������</h3>
        <ul>
          <li><b>IPv4��ַ</b><span>
            <% getLanIp(); %>
            /
            <% getLanNetmask(); %>
          </span><!--<a href="#">�޸�</a>--></li>
          <li><b>IPv6��ַ</b><span>
            <% getCfgGeneral(1, "IPv6IPAddr"); %>
            /
            <% getCfgGeneral(1, "IPv6PrefixLen"); %>
          </span></li>
          <li><b>MAC��ַ</b><span>
            <% getLanMac(); %>
            </span></li>
        </ul>
      </div>
      <div class="wifistate">
        <h3>��������</h3>
        <ul>
          <li id="wifiup"><b>����״̬</b><span >������</span><!--<a href="#">�޸�</a>--></li>
          <li id="wifidown"><b>����״̬</b><span>�ѹر�</span><!--<a href="#">�޸�</a>--></li>
          <li><b>��������</b><span>
            <% getCfgToHTML(1, "SSID1"); %>
          </span></li>
		  <li id="wifiopen"><b>��ȫ����</b><span>����</span></li>
          <li id="wifisecurity"><b>��ȫ����</b><span>ǿ����</span></li>
          <li id="manualselect"><b>�����ŵ�</b><span>
            <% getWlanChannel(); %>
            ���ֶ�ѡ��</span></li>
          <li id="autoselect"><b>�����ŵ�</b><span id=wirelesschannel></span></li>
        </ul>
      </div>
    </div>
    <div class="clean"></div>
  </div>
</div>
</body>
</html>
