<!doctype html> 
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>�������</title>
<link href="css/mainstyle.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/herouter.js"></script>
<script type="text/javascript" src="js/jquery.js"></script>
<style type="text/css">
<!--
body{ color:#676767;}
*{-moz-transition: all 0.3s ease-in;-webkit-transition: all 0.3s ease-in;-o-transition: all 0.3s ease-in;transition: all 0.3s ease-in;}
*:hover{-moz-transition: all 0.3s ease-in;-webkit-transition: all 0.3s ease-in;-o-transition: all 0.3s ease-in;transition: all 0.3s ease-in;}
.int { height:350px; width:730px; overflow:hidden; background:#fffdfa url(images/check_03.gif) repeat-x 0 -2px; padding:15px 10px;}
.mainpart{ height:200px; padding:44px 0px 0 85px;}
.internet{ float:left; width:100px; height:165px; background:url(images/check_13.png) no-repeat center center; font-size:14px; text-align:center; padding-top:35px;}
.internet2{ float:left; width:100px; height:165px; background:url(images/check_12.png) no-repeat center center; font-size:14px; text-align:center; padding-top:35px;}
.link1{ float:left; width:120px; height:18px; margin-top:91px;}
.link1 span{ display:block; width:120px; background:url(images/linktoint.png) no-repeat center 0; height:18px; }
.check_interr span{ background-position:0 -18px;}
.checking span{ display:none;}
.and{ float:left; width:130px; height:200px; background:url(images/check_07.png) no-repeat center center;}
.link2{ float:left; width:110px; height:22px; margin-top:89px;}
.link2 .gor{ height:11px;}
.link2 .gor span{background:url(images/entline.png) no-repeat center 0; height:11px; width:110px; display:block;}
.link2 .gorwarn span{ background-position:center -11px;}
.link2 .gorerr span{ background-position: center -22px;}
.link2 .checking span{ display:none;}
.link2 .gol{  height:11px;}
.link2 .gol span{background:url(images/entline.png) no-repeat center -33px; height:11px; width:110px; display:block;}
.link2 .golwarn span{ background-position: center -44px;}
.link2 .golerr span{ background-position:center -55px;}
.link2 .checking span{ display:none;}
.device{ float:right; width:145px; height:165px; background:url(images/devicedisp.png) no-repeat 1px center; color:#42b6d9; font-size:14px; text-align:center; padding-top:35px;}
.devicelaptop{float:right; width:155px; height:145px; color:#42b6d9; font-size:14px; text-align:center; padding-top:55px;}
.devicelaptop ul{}
.devicelaptop li{ height:24px; background:url(images/dcomp2.png) no-repeat 0 center;;  text-align:left; line-height:24px; padding:10px 0 10px 28px;}
.recheck{ height:68px; padding-right:20px; }
.recheck strong{ float:right; height:48px; line-height:48px; font-size:22px; color:#666; font-weight:normal; padding:0 15px 0 45px; background:url(images/check2_19.png) no-repeat 10px center;}
.recheck span{ display:block; height:48px; width:160px; text-align:center; line-height:48px; color:#fff; font-size:24px; float:right; background:#29b8e4; cursor:pointer;}
.recheck span:hover{ background:#42c6ee;}
.testlist{ position:absolute; width:155px; height:100px;left:15px; top:245px; z-index:100;}
.testlist .arrow{ height:12px; }
.testlist .listbox{ height:70px; width:138px; padding:7px;}
.testlist .listbox h3{ font-size:12px; line-height:18px; color:#666;}
.testlist .listbox ul{}
.testlist .listbox li{ line-height:18px; font-size:12px; color:#666; padding-left:18px;}
.testlist .listbox .getready{}
.testlist .listbox .getready li{ background:url(images/check_26.png) no-repeat 3px center;}
.testlist .listbox .linkfail li{ background:url(images/check3_20.png) no-repeat 3px center;}
.testlist .listbox .linkok li{ background:url(images/check2_16.png) no-repeat 3px center;}
.testlist .listbox .untest li{ background:url(images/check4_24.png) no-repeat 3px center;}



.waiting1{ height:300px; width:300px; position:absolute; z-index:101; top:22px; left:230px; }
@-webkit-keyframes rotate {
  from {
    -webkit-transform: rotate(0deg);
  }
  to { 
    -webkit-transform: rotate(360deg);
  }
}
@-moz-keyframes rotate {
  from {
    -moz-transform: rotate(0deg);
  }
  to { 
    -moz-transform: rotate(360deg);
  }
}
@-o-keyframes rotate {
  from {
    -o-transform: rotate(0deg);
  }
  to { 
    -o-transform: rotate(360deg);
  }
}
@-ms-keyframes rotate {
  from {
    -ms-transform: rotate(0deg);
  }
  to { 
    -ms-transform: rotate(360deg);
  }
}
@keyframes rotate {
  from {
    transform: rotate(0deg);
  }
  to { 
    transform: rotate(360deg);
  }
}

@-webkit-keyframes rotate-cc {
  from {
    -webkit-transform: rotate(0deg);
  }
  to { 
    -webkit-transform: rotate(-360deg);
  }
}
@-moz-keyframes rotate-cc {
  from {
    -moz-transform: rotate(0deg);
  }
  to { 
    -moz-transform: rotate(-360deg);
  }
}
@-o-keyframes rotate-cc {
  from {
    -o-transform: rotate(0deg);
  }
  to { 
    -o-transform: rotate(-360deg);
  }
}
@-ms-keyframes rotate-cc {
  from {
    -ms-transform: rotate(0deg);
  }
  to { 
    -ms-transform: rotate(-360deg);
  }
}
@keyframes rotate-cc {
  from {
    transform: rotate(0deg);
  }
  to { 
    transform: rotate(-360deg);
  }
}

.loading { margin: 20px auto; width: 295px; height: 295px; border-right: 5px solid #bae6f1; border-top: 5px solid transparent; border-left: 5px solid transparent; border-bottom: 5px solid transparent; border-radius: 300px;  -moz-border-radius: 300px; -webkit-border-radius: 300px;  -webkit-animation: rotate 4s linear 0 infinite normal; -moz-animation: rotate 4s linear 0s infinite normal; -o-animation: rotate 4s linear 0 infinite normal;  -ms-animation: rotate 4s linear 0 infinite normal; animation: rotate 4s linear 0 infinite normal;}
  .loading-medium { margin: 15px auto; display: block; width: 255px; height: 255px; border-right: 5px solid #bae6f1;border-top: 5px solid transparent;border-left: 5px solid transparent; border-bottom: 5px solid transparent;   border-radius: 280px; -moz-border-radius: 280px; -webkit-border-radius: 280px;  -webkit-animation: rotate 6s linear 0 infinite normal; -moz-animation: rotate 6s linear 0s infinite normal; -o-animation: rotate 6s linear 0 infinite normal;  -ms-animation: rotate 6s linear 0 infinite normal; animation: rotate 6s linear 0 infinite normal; }
    .loading-small {  margin: 15px auto; display: block; width: 215px; height: 215px; border-right: 5px solid #bae6f1; border-top: 5px solid transparent; border-left: 5px solid transparent; border-bottom: 5px solid transparent; border-radius: 260px;  -moz-border-radius: 260px; -webkit-border-radius: 260px;  -webkit-animation: rotate 6s linear 0 infinite normal;  -moz-animation: rotate 6s linear 0s infinite normal; -o-animation: rotate 6s linear 0 infinite normal; -ms-animation: rotate 6s linear 0 infinite normal; animation: rotate 6s linear 0 infinite normal;}
.loading.cc,.loading-medium.cc,.loading-small.cc { -webkit-animation: rotate-cc 2s linear 0 infinite normal; -moz-animation: rotate-cc 2s linear 0s infinite normal; -o-animation: rotate-cc 2s linear 0 infinite normal;  -ms-animation: rotate-cc 2s linear 0 infinite normal;  animation: rotate-cc 2s linear 0 infinite normal;  }
.loading.slow,.loading-medium.slow,.loading-small.slow { -webkit-animation: rotate 3s linear 0 infinite normal; -moz-animation: rotate 3s linear 0s infinite normal; -o-animation: rotate 3s linear 0 infinite normal;  -ms-animation: rotate 3s linear 0 infinite normal; animation: rotate 3s linear 0 infinite normal;}
.waiting2{ height:44px; width:160px; background:#fff;-moz-border-radius: 22px;border-radius: 22px;-webkit-border-radius: 22px; position:absolute; top:170px; left:295px; -moz-box-shadow:3px 4px 0px #b2b2b2;-webkit-box-shadow:3px 4px 0px #b2b2b2;box-shadow:3px 4px 0px #b2b2b2; z-index:102;}
.waiting2 h2{ font-size:14px; color:#0e84b0; text-align:center; line-height:20px; padding-top:5px;}
.waiting2 .animation{ height:10px; width:120px; margin:0 auto; background:url(images/waitinganimation.gif) no-repeat; }


.interr{ height:120px; width:240px; position:absolute; top:65px; left:45px; z-index:104;}
.interr .inf{ height:32px; line-height:16px; padding:6px 6px 6px 45px; background:url(images/check3_24.png) no-repeat 8px center; border:1px #ff0505 solid;-moz-border-radius: 5px;border-radius: 5px;-webkit-border-radius: 5px; }
.interr .line{ float:right; width:55px; height:70px; background:url(images/check4_11.png) no-repeat center bottom; }

.entalert{ height:120px; width:240px; position:absolute; top:65px; left:475px; z-index:104;}
.entalert .inf{ height:32px; line-height:16px; padding:6px 6px 6px 45px; background:url(images/check3_07.png) no-repeat 8px center; border:1px #ffb628 solid;-moz-border-radius: 5px;border-radius: 5px;-webkit-border-radius: 5px; }
.entalert .inf span{ color:#1e8eb1;}
.entalert .line{ float:left; width:55px; height:70px; background:url(images/check3_11.png) no-repeat center bottom; }

.enterr{ height:120px; width:240px; position:absolute; top:65px; left:475px; z-index:104;}
.enterr .inf{ height:32px; line-height:16px; padding:6px 6px 6px 45px; background:url(images/check3_24.png) no-repeat 8px center; border:1px #ff0505 solid;-moz-border-radius: 5px;border-radius: 5px;-webkit-border-radius: 5px; }
.enterr .inf span{ color:#1e8eb1;}
.enterr .line{ float:left; width:55px; height:70px; background:url(images/check4_11.png) no-repeat center bottom; }




.testlisterr{ height:44px; width:295px; position:absolute; top:290px; left:180px; z-index:104;}
.testlisterr .inf{ height:32px; width:185px; float:right; line-height:16px; padding:6px 6px 6px 45px; background:url(images/check3_24.png) no-repeat 8px center; border:1px #ffb628 solid;-moz-border-radius: 5px;border-radius: 5px;-webkit-border-radius: 5px; }
.testlisterr .inf span{ color:#1e8eb1;}
.testlisterr .line{ float:left; width:55px; height:44px; background:url(images/check3_27.png) no-repeat left center; }

-->
</style>

<script type="text/javascript">
var http_request = false;
var rst_buf = new Array();
var isIEVers7to9;
var curr_site_status;
var curr_lan_up_status;
var curr_lan_down_status;
var curr_wan_status;
var curr_lan_status;

function isHiddenField(ishidden,hid_id){

    if(ishidden == 1){
	      document.getElementById(hid_id).style.display = "none";

    }else{
	      document.getElementById(hid_id).style.display = "block";
    }
} 

function detectInit(){

    isHiddenField(0,"waiting2");
    
    if(isIEVers7to9 == 1){
        isHiddenField(1,"waiting1");	
    }else{
    	  isHiddenField(0,"waiting1");	
    }
    
    isHiddenField(1,"downloadstate");
    isHiddenField(1,"uploadstate");
    isHiddenField(1,"recheck");
    isHiddenField(1,"stateok");
    isHiddenField(1,"cableerr");
    isHiddenField(1,"netdisaccess");
    isHiddenField(1,"interr");
    isHiddenField(1,"entalert");
    isHiddenField(1,"enterr");
    isHiddenField(1,"linkfail");
	$("#teststate").removeClass(curr_site_status);
    $("#teststate").addClass("getready");
    
	$("#uploadstate").removeClass(curr_lan_status);
    $("#uploadstate").addClass("gor checking");
    
    $("#downloadstate").removeClass(curr_lan_status);
    $("#downloadstate").addClass("gor checking");
    
    $("#intstateline").addClass("link1 checking");
    
	  curr_site_status = "getready";
	  curr_lan_up_status = "gor checking";
	  curr_lan_down_status = "gor checking";
	  curr_wan_status = "link1 checking";
	  
} 

function getBrowserInfo()
{
	var agent = navigator.userAgent.toLowerCase() ;
	
	var IEVersion;
	var regStr_ie = /msie [\d.]+;/gi ;

	//IE
	if(agent.indexOf("msie") > 0)
	{
	  IEVersion = agent.match(regStr_ie) ;
	  if(IEVersion >= 7 && IEVersion <= 9)
	    isIEVers7to9 = 1;   
	  else
	  	isIEVers7to9 = 0;       
	}
	else
	    isIEVers7to9 = 0;    
	    
}


function LANsideProcess(LANstate) {
    if(LANstate == 1){
    	isHiddenField(0,"entalert");
    	$("#downloadstate").removeClass("gor checking");
    	$("#uploadstate").removeClass("gol checking");
        $("#uploadstate").addClass("gol golwarn");
        $("#downloadstate").addClass("gor gorerr");
        curr_lan_up_status = "gol golwarn";
        curr_lan_down_status = "gor gorerr"
    }else{
    	$("#downloadstate").removeClass("gor checking");
    	$("#uploadstate").removeClass("gol checking");
        $("#uploadstate").addClass("gol stateok");
        $("#downloadstate").addClass("gor stateok");
        curr_lan_up_status = "gor stateok";
        curr_lan_down_status = "gor stateok"
    }
		isHiddenField(0,"downloadstate");
		isHiddenField(0,"uploadstate");
}

function WANsideProcess(WANstate) {

    if(WANstate == 1){
        isHiddenField(0,"cableerr");
        $("#intstateline").removeClass("link1 checking");
        $("#intstateline").addClass("link1 check_interr");
        curr_wan_status = "link1 check_interr";
				$("#teststate").removeClass(curr_site_status);
        $("#teststate").addClass("linkfail");
        curr_site_status = "linkfail";
        $("div.internet").css("display","none");
        $("div.internet2").css("display","block");
    }else if(WANstate == 2){
    	  isHiddenField(0,"interr");
    	  $("#intstateline").removeClass("link1 checking");
        $("#intstateline").addClass("link1 check_interr");
        curr_wan_status = "link1 check_interr";
		    $("#teststate").removeClass(curr_site_status);
        $("#teststate").addClass("linkfail");
        curr_site_status = "linkfail";
        $("div.internet").css("display","none");
        $("div.internet2").css("display","block");
    }else if(WANstate == 3){
    	  isHiddenField(0,"netdisaccess");
    	  $("#intstateline").removeClass("link1 checking");
        $("#intstateline").addClass("link1 check_interr");
        curr_wan_status = "link1 check_interr";
		    $("#teststate").removeClass(curr_site_status);
        $("#teststate").addClass("linkfail");
        curr_site_status = "linkfail";
        $("div.internet").css("display","none");
        $("div.internet2").css("display","block");
    }else{
    		$("#intstateline").removeClass("checking");
    		$("#teststate").removeClass(curr_site_status);
        $("#teststate").addClass("linkok");
        curr_site_status = "linkok";
        $("div.internet2").css("display","none");
        $("div.internet").css("display","block");
    }
}

function USBDiskProcess(USB)
{
		if(1 == USB){
			document.getElementById("unplug").style.display = "none";
			document.getElementById("plugin").style.display = "block";
		}else{
			document.getElementById("unplug").style.display = "block";
			document.getElementById("plugin").style.display = "none";
		}
}

function parseResponse(rtBuf) {

/*response result:
			  cablePlug: pass
			  wanIp: pass
			  siteAccess: pass
			  lanNetwork: pass
			  usb:1
			  lan1:pass
        lan2:pass
*/
  var wan_ok;
  var lan_ok;
	rst_buf = rtBuf.split("\n");
	
  isHiddenField(1,"waiting2");	
  isHiddenField(1,"waiting1");		
	//WAN SIDE
	if(rst_buf[0].indexOf("pass") == -1){
	    WANsideProcess(1);	
	}else if(rst_buf[1].indexOf("pass") == -1){
		  WANsideProcess(2);	
	}else if(rst_buf[2].indexOf("pass") == -1){
		  WANsideProcess(3);	
	}else{
		  wan_ok = 1;
		  WANsideProcess(4);	
	}
	
	//LAN SIDE
	if(rst_buf[3].indexOf("pass") == -1){
	    LANsideProcess(1);	
	}else{
		  LANsideProcess(2);	
		  lan_ok = 1;
	}

	isHiddenField(0,"recheck");
	if(wan_ok == 1 && lan_ok == 1){
	    isHiddenField(0,"stateok");
	}
		
	//USBDisk check
	if(rst_buf[4].indexOf("1") == -1)
		USBDiskProcess(0);
	else
		USBDiskProcess(1);
		
	//LANPort update
  if(rst_buf[5].indexOf("pass") == -1)
  {
		isHiddenField(1,"lan2connect");
		isHiddenField(0,"lan2disconn");
	}
	else
	{
		isHiddenField(0,"lan2connect");
		isHiddenField(1,"lan2disconn");
	}
		
  if(rst_buf[6].indexOf("pass") == -1)
  {
		isHiddenField(1,"lan1connect");
		isHiddenField(0,"lan1disconn");
	}
	else
	{
		isHiddenField(0,"lan1connect");
		isHiddenField(1,"lan1disconn");
	}
		
}


function DiagnosisResult() {
	if (http_request.readyState == 4) {
		if (http_request.status == 200) {
			parseResponse(http_request.responseText);
		} else {

		}
	}
}


function requestNetState() {
		http_request = false;
		if (window.XMLHttpRequest) { // Mozilla, Safari,...
			http_request = new XMLHttpRequest();
			if (http_request.overrideMimeType) {
				http_request.overrideMimeType('text/xml');
			}
		} else if (window.ActiveXObject) { // IE
			try {
				http_request = new ActiveXObject("Msxml2.XMLHTTP");
			} catch (e) {
				try {
				http_request = new ActiveXObject("Microsoft.XMLHTTP");
				} catch (e) {}
			}
		}
		if (!http_request) {
			alert('��ϳ�ʼ��ʧ��');
			return false;
		}
		
		detectInit();
		
		http_request.onreadystatechange = DiagnosisResult;
		http_request.open('POST', "/goform/netDiagnosis", true);
		http_request.send("netDiagnosis=true");
}

function networkDiagnosis(){
	  curr_site_status = "getready";
	  curr_lan_up_status = "gor checking";
	  curr_lan_down_status = "gor checking"
	  curr_wan_status = "link1 checking";
	  getBrowserInfo();
    requestNetState();
} 

</script>

</head>

<body style="overflow:hidden" onLoad="networkDiagnosis()">
<div class="int">
  <h1>�������</h1>
  <div class="mainpart">
    <div class="internet" style="display:none;">������</div>
    <div class="internet2">������</div>
    <div class="link1 checking" id="intstateline" ><span></span></div>
    <div id = "plugin" style="display:none;">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp USB��������</div>
    <div id = "unplug" style="display:none;">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp USB��δ����</div>
    <div class="and"></div>
    <div class="link2">
      <ul>
        <li class="gor checking" id="downloadstate" ><span></span></li>
        <li class="gol checking" id="uploadstate" ><span></span></li>
      </ul>
    </div>
    <div id="devicedisplay" class="devicelaptop">
        <ul>
            <li style="display:none;" id = "lan1connect">����1������������</li>
            <li style="display:;" id = "lan1disconn">����1������δ����</li>
            <li style="display:none;" id = "lan2connect">����2������������</li>
            <li style="display:;" id = "lan2disconn">����2������δ����</li>
        </ul>
    </div>

  </div>
  <div class="recheck"><span id="recheck" style="display:none;" onclick="location.reload();">���¼��</span><strong id="stateok" style="display:none;">������������ ��������������</strong></div>
  <!--�����б�BEGIN-->
  <div class="testlist">
  	<div class="arrow"></div>
	<div class="listbox">
		<h3>����վ��</h3>
		<ul class="getready" id="teststate">
			<li>����</li>
			<li>�ٶ�</li>
			<li>�Ѻ�</li>
		</ul>
	</div>
  </div>
  <!--�����б�END-->
  <!--��ת��ʾBEGIN-->
  <div id="waiting1" class="waiting1" style="display:;">
		<div class="loading slow">
		  <div class="loading-medium slow">
			<div class="loading-small slow"></div>
		  </div>
		</div>
  </div>
  <!--��ת��ʾEND-->
  <!--��ͳ��ʾBEGIN-->
  <div id="waiting2" class="waiting2" style="display:;">
  	<h2>��������У����Ժ�</h2>
	<div class="animation"></div>
  </div>
  <!--��ͳ��ʾend-->
  <!--�������Ӵ���BEGIN-->
  <div class="interr" id="cableerr" style="display:none;">
  		<div class="inf">�������Ӵ������⣬���������Ƿ��ã�</div>
		<div class="line"></div>
  </div>
  <!--�������Ӵ���Een->
  <!--�����Ӫ�̴���BEGIN-->
  <div class="interr" id="interr" style="display:none;">
  		<div class="inf">�������Ӵ������⣬������Ӫ����ϵ��</div>
		<div class="line"></div>
  </div>
  <!--�����Ӫ�̴���end-->
  <!--�����Ӫ�̴���BEGIN-->
  <div class="interr" id="netdisaccess" style="display:none;">
  		<div class="inf">���粻ͨ����������Ӫ����ϵ��</div>
		<div class="line"></div>
  </div>
  <!--�����Ӫ�̴���end-->
  <!--�ڲ��ŵ�ӵ��BEGIN-->
  <div class="entalert" id="entalert"  style="display:none;">
  		<div class="inf">·����ʹ���ŵ�ӵ����������� <span><a href="#">WIFI�ŵ�</a></span>Ϊ6</div>
		<div class="line"></div>
  </div>
  <!--�ڲ��ŵ�ӵ��end-->
    <!--�ڲ��ŵ�����BEGIN-->
  <div class="enterr" id="enterr" style="display:none;">
  		<div class="inf">·����ʹ���ŵ����󣡽������ <span><a href="#">WIFI�ŵ�</a></span>Ϊ6</div>
		<div class="line"></div>
  </div>
  <!--�ڲ��ŵ�����end-->
  <!--������վ����BEGIN-->
  <div class="testlisterr" id="linkfail" style="display:none;">
  		<div class="line"></div>
		<div class="inf">��վ������쳣������ϵ�����Ӫ�� �� �޸� <a href="#">DNS����</a></div>
  </div>
  <!--������վ����END-->
  <!--
  <div id="USBDisk0" style="display:none; background:#29b8e4;width:100px;">U��δ����</div>  
  <div id="USBDisk1" style="display:none; background:#29b8e4;width:100px;">U��������</div>
  -->
</div>
</body>
</html>
