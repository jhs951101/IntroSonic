<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="content-type" content="text/html; charset=euc-kr">
<title>제목 없음</title>
<meta name="generator" content="Namo WebEditor(Trial)">
<script language="JavaScript">
<!--
function namosw_scrollstatus()
{
  var str = '';
  if (namosw_scrollstatus.arguments.length > 0) {
    var i;
    for (str = '', i = 0; i < 100; i++)
      str += ' ';
    for (i = 0; i < namosw_scrollstatus.arguments.length; i++)
      str += namosw_scrollstatus.arguments[i] + ' ';
    document.namosw_scrollstatus = str;
  } else {
    var src_str = document.namosw_scrollstatus;
    str  = src_str.substring(1, src_str.length);
    str += src_str.substring(0, 1);
    document.namosw_scrollstatus = str;
  }
  window.status = str;
  setTimeout('namosw_scrollstatus()', 100);
}

// -->
</script>
<script language="JavaScript">
<!--
function na_open_window(name, url, left, top, width, height, toolbar, menubar, statusbar, scrollbar, resizable)
{
  toolbar_str = toolbar ? 'yes' : 'no';
  menubar_str = menubar ? 'yes' : 'no';
  statusbar_str = statusbar ? 'yes' : 'no';
  scrollbar_str = scrollbar ? 'yes' : 'no';
  resizable_str = resizable ? 'yes' : 'no';

  cookie_str = document.cookie;
  cookie_str.toString();

  pos_start  = cookie_str.indexOf(name);
  pos_end    = cookie_str.indexOf('=', pos_start);

  cookie_name = cookie_str.substring(pos_start, pos_end);

  pos_start  = cookie_str.indexOf(name);
  pos_start  = cookie_str.indexOf('=', pos_start);
  pos_end    = cookie_str.indexOf(';', pos_start);
  
  if (pos_end <= 0) pos_end = cookie_str.length;
  cookie_val = cookie_str.substring(pos_start + 1, pos_end);
  if (cookie_name == name && cookie_val  == "done")
    return;

  window.open(url, name, 'left='+left+',top='+top+',width='+width+',height='+height+',toolbar='+toolbar_str+',menubar='+menubar_str+',status='+statusbar_str+',scrollbars='+scrollbar_str+',resizable='+resizable_str);
}

// -->
</script>
</head>

<body bgcolor="white" text="black" link="blue" vlink="purple" alink="red" intotheSonic "', ' OnLoad="na_open_window('win1', 'notice2.jsp', 200, 100, 370, 420, 0, 0, 0, 0, 0); namosw_scrollstatus('Welcome~!! ', '', '')">
<div id="layer2" style="width:188px; height:291px; position:absolute; left:257px; top:135px; z-index:1;">
    <p><img src="images/shadow-p.png" width="188" height="291" border="0"></p>
</div>
<table border="0" width="726" align="center">
    <tr>
        <td width="716"><font face="휴먼매직체" color="blue"><span style="font-size:25pt;">W</span></font><span style="font-size:25pt;"><font face="휴먼매직체" color="#00B0F0">e</font><font face="휴먼매직체" color="blue">l</font><font face="휴먼매직체" color="#00B0F0">c</font><font face="휴먼매직체" color="blue">o</font><font face="휴먼매직체" color="#00B0F0">m</font><font face="휴먼매직체" color="blue">e</font><font face="휴먼매직체" color="red">~!! </font><font face="휴먼매직체" color="black">&quot;</font><font face="휴먼매직체" color="#B2B2B2">intothe
</font><font face="휴먼매직체" color="#388194">S</font><font face="휴먼매직체" color="#93CDDC">O</font><font face="휴먼매직체" color="#388194">N</font><font face="휴먼매직체" color="#93CDDC">I</font><font face="휴먼매직체" color="#388194">C</font></span><font face="휴먼매직체" color="black"><span style="font-size:25pt;">&quot;</span></font></td>
    </tr>
</table>
<form name="form1">
    <div id="layer1" style="width:170px; height:291px; position:absolute; left:901px; top:135px; z-index:1;">
        <p><img src="images/sonic-p1.png" width="167" height="291" border="0"></p>
    </div>
    <table border="0" width="538" align="center" height="353">
        <tr>
            <td width="532">
                <p><font face="돋움">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</font><span style="font-size:15pt;"><font face="휴먼엽서체" color="red">-&nbsp;공지사항 -</font></span></p>
                <p align="center"><iframe name="notice" src="notice.jsp" frameborder="1" width="400" scrolling="yes" height="100"></iframe></p>
            </td>
        </tr>
        <tr>
            <td width="532" height="202" valign="bottom">
                <p align="center"><a href="http://www.sega-spk.co.kr " target="_blank"><img src="images/cooperate2.jpg" width="147" height="60" border="0"></a>&nbsp;&nbsp;&nbsp;<a href="http://www.sonicteam.com" target="_blank"><img src="images/cooperate1.jpg" width="203" height="60" border="0"></a><br>
<span style="font-size:10pt;"><font face="돋움" color="#7F7F7F">Copyright (C) 2014 <b>intotheSonic</b>&nbsp;all rights reserved.</font></span></p>
            </td>
        </tr>
    </table>
</form>

</body>

</html>