<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="KEYWords" Content="loginPageFlag">
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
<script type="text/javascript" src="js/base64.js"></script>
<script type="text/javascript" src="js/herouter.js"></script>
<link href="css/jquery.vegas.css" rel="stylesheet" type="text/css" />
<link href="css/and.css" rel="stylesheet" type="text/css" />


<script language="JavaScript" type="text/javascript">
	
var xmlhttp;
var xmlhttp2;

$(function() {
  $.vegas({
    src:'images/bodybg.jpg'
  });
});

function create_base_auth(user, password) {
  var tok = user + ':' + password;
  
  var obj=new Base64();
  var hash=obj.Encode64(tok);
  return "Basic " + hash;
} 


$(document).keydown(function(event){ 
    if(event.keyCode == 13){ 
        sendAuth();
    }
});


function openNewUrl(url){
    if(document.all){  
        var gotoLink = document.createElement('a');   
        gotoLink .href = url;  
        document.body.appendChild(gotoLink);   
        gotoLink .click();  
    } 
}

function callback(){  
	
  var maccept = "image/gif, image/ico, image/jpeg, image/pjpeg, image/pjpeg, application/x-shockwave-flash, application/vnd.ms-excel, application/vnd.ms-powerpoint, application/msword, application/xaml+xml, application/x-ms-xbap, application/x-ms-application, */*";
  var Referer = "herouter/login.asp";
	
  if (xmlhttp.readyState== 4) {
    //if (xmlhttp.status == 200){  
    	
    	var ResText = xmlhttp.responseText;
    	var needLogin = isLogin(ResText);
      if(0 == needLogin){	
      	if (window.ActiveXObject) { // IE
        	openNewUrl("/herouter/main.asp");
				}
				else if(navigator.userAgent.indexOf("MSIE")>0){
					openNewUrl("/herouter/main.asp");
				}
				else{
					setTimeout("javascript:location.href='/herouter/main.asp'", 1);	
				}
      }
      else/* if(1 == needLogin)*/{    
      	  alert("�������,����������.");
          window.location.reload();
      }
    //}  
  }  
}

function sendAuth() {
	
	var maccept = "image/gif, image/ico, image/jpeg, image/pjpeg, image/pjpeg, application/x-shockwave-flash, application/vnd.ms-excel, application/vnd.ms-powerpoint, application/msword, application/xaml+xml, application/x-ms-xbap, application/x-ms-application, */*";

   
  with ( document.forms[0] ) {
  	 var pwd = mpassword.value;
	}	
	
 	var auth = create_base_auth('admin',pwd); 
  
	if (window.XMLHttpRequest) { // Mozilla, Safari,...
		xmlhttp = new XMLHttpRequest();
		if (xmlhttp.overrideMimeType) {
			xmlhttp.overrideMimeType('text/xml');
		}
	} else if (window.ActiveXObject) { // IE
		try {
			xmlhttp = new ActiveXObject("Msxml2.XMLHTTP");
		} catch (e) {
			try {
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
			} catch (e) {}
		}
	}
	if (!xmlhttp) {
		alert('Giving up :( Cannot create an XMLHTTP instance');
		return false;
	}
	xmlhttp.onreadystatechange = callback;
	xmlhttp.open('GET', '/');
	xmlhttp.setRequestHeader("Authorization", auth);
  xmlhttp.setRequestHeader("Accept", maccept);
	xmlhttp.send(null); 
} 

</script>
</head>

<body>
<form>
<div class="full">
	<div class="slg"></div>
	<div class="loginpart">
		<input type="text" style="display:none">
		<h2 class="err">�������·�ɹ���Ա����</h2>
		<div class="inparea"><input name="mpassword" type="password" />
		<span></span>
		</div>
		<font color="#FFECEC"><h4>(��ʼ����:123456)</h4></font>
		<div class="logbtn" ><b onclick="javascript:sendAuth()">��¼</b></div>
	</div>
	<div class="dy" style="display:none">ϵͳ�汾��V1.0124</div>
</div>
</form>
<div style="position:absolute; bottom:-6px; width:100%; margin:10 auto; height:35px;  font-size:14px; color:#fff; text-align:center;" >
	Ϊ�˻�ø��õ����Ч����������ʹ��IE8.0�����ϰ汾�������¼��վ��
</div>

</body>
</html>
