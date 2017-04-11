<!doctype html> 
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>����������</title>
<link href="css/mainstyle.css" rel="stylesheet" type="text/css" />
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

.cfgright{ width:600px; padding-top:70px; margin:0 auto;}
.cfgright td{ height:36px; font-size:14px;}
.cfgright td span{ padding-left:80px; font-size:14px;}
.cfgright .spheight{ height:60px; }
.cfgright td label{ font-size:14px; line-height:60px;}
.cfgright td em{ font-style:normal; padding-left:20px; color:#ff7428; background:url(images/check.png) no-repeat left bottom; margin-left:15px;}
.radiobox{ margin-top:-2px;}
.inp1 {height:26px; border:1px #d2d2d2 solid; width:160px;font-family:"΢���ź�"; color:#666; padding:0 10px;}
.subpart{ height:48px; padding-left:170px; padding-top:25px;}
.subpart ul{}
.subpart li{ float:left; padding-right:10px;}
.subpart b{ display:block; height:48px; cursor:pointer; width:170px; font-weight:normal; float:left; background:#77d1df; font-size:18px; color:#fff; text-align:center; line-height:48px;}
.subpart b:hover{ background:#56bbcb;}
.subpart .cancel{ width:110px; background:#99e4f0; }

-->
</style>
</head>

<script language="JavaScript" type="text/javascript">

function save()
{
	var oldpass = "<% getCfgGeneral(1, "Password"); %>";
	var newpass = document.Adm.newpass.value;
	var admpass = document.Adm.admpass.value;
	var len = newpass.length;
		
	if (document.Adm.oldpass.value != oldpass) 
	{
		document.getElementById("defaultpwd").style.visibility = "hidden";
		document.getElementById("defaultpwd").style.display = "none";
		document.getElementById("pwderr").style.display = "block";
		return false;
	}
	else
	{
		document.getElementById("pwderr").style.display = "none";	
	}
	
	if (len < 4 || len > 15) 
	{
		document.getElementById("lenerr").style.display = "block";
		document.getElementById("differr").style.display = "none";
		document.getElementById("buferr").style.display = "none";
		return false;
	}
	else
	{
		document.getElementById("lenerr").style.display = "none";	
	}
	
	if (admpass != newpass) 
	{
		document.getElementById("differr").style.display = "block";
		document.getElementById("buferr").style.display = "none";
		return false;
	}
	else
	{
		document.getElementById("differr").style.display = "none";	
	}


  var reg =/\s/;

  if(reg.test(admpass))
  {
		document.getElementById("buferr").style.display = "block";
		return false;
  }
  else
  {
    document.getElementById("buferr").style.display = "none";	
  }
	
  
  
	document.getElementById("Adm").submit();
	parent.showchangepwd();
	return true;
}

</script>

<body>
<div class="int">
	<h1>�޸ĺ�·�ɹ�������¼����</h1>
    <div class="cfg">
      <div class="cfgright">
      	<form method="post" name="Adm" id="Adm" action="/goform/setSysAdm">
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
            	<tr id="user" style="display:none">
                <td><span>�û���</span></td>
                <td><input class="inp1" name="admuser" value="<% getCfgGeneral(1, "Login"); %>"/></td>
              </tr>
              <tr>
                <td><span>��������</span></td>
                <td><input class="inp1" type="password" name="oldpass" value=""/></td>
                <td id="defaultpwd"><font color="#CF9E9E"><h5>(��ʼ����:123456)</h5></font></td>
                <td><em id="pwderr" style="display:none;">�������������</em></td>
              </tr>
              <tr>
                <td width="29%"><span>������</span></td>
                <td width="28%"><input class="inp1" type="password" name="newpass" value=""/></td>
                <td id="lenerr" style="display:none;"><em>���볤��4-15λ</em></td>
                <td id="buferr" style="display:none;"><em>���ܰ����ո�</em></td>
              </tr>
              <tr>
                <td><span>�ظ�������</span></td>
                <td><input class="inp1" type="password" name="admpass" value=""/></td>
                <td><em id="differr" style="display:none;">���������뱣��һ��</em></td>
              </tr>
            </table>
            <div class="subpart">
                <ul>
                    <li><b class="save" onClick="save()">����</b></li>
                    <li><b class="cancel" onClick="javascript:parent.TINY.box.hide();">ȡ��</b></li>
                </ul>
            </div>
        </form>
      </div>
    </div>
</div>
</body>
</html>
