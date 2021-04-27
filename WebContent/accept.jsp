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
function na_redirect_alert(str, url)
{
  alert(str);
  location = url;
}

function na_restore_img_src(name, nsdoc)
{
  var img = eval((navigator.appName.indexOf('Netscape', 0) != -1) ? nsdoc+'.'+name : 'document.all.'+name);
  if (name == '')
    return;
  if (img && img.altsrc) {
    img.src    = img.altsrc;
    img.altsrc = null;
  } 
}

function na_preload_img()
{ 
  var img_list = na_preload_img.arguments;
  if (document.preloadlist == null) 
    document.preloadlist = new Array();
  var top = document.preloadlist.length;
  for (var i=0; i < img_list.length-1; i++) {
    document.preloadlist[top+i] = new Image;
    document.preloadlist[top+i].src = img_list[i+1];
  } 
}

function na_change_img_src(name, nsdoc, rpath, preload)
{ 
  var img = eval((navigator.appName.indexOf('Netscape', 0) != -1) ? nsdoc+'.'+name : 'document.all.'+name);
  if (name == '')
    return;
  if (img) {
    img.altsrc = img.src;
    img.src    = rpath;
  } 
}

// -->
</script></head>

<body bgcolor="white" text="black" link="blue" vlink="purple" alink="red" OnLoad="na_preload_img(false, 'images/gogo_o.gif');">
<form id="confirmPassword" name="confirmPassword" action="<%=request.getContextPath()%>/ConfirmPasswordController" method="post">
    <p>&nbsp;</p>
    <table border="0" width="525" align="center" height="231">
        <tr>
            <td width="350" colspan="2" height="127" align="center" valign="middle">
                <p align="left"><font face="돋움"><img src="images/accountbar.png" width="180" height="61" border="0"></font><font face="돋움">&nbsp;<br>
</font><font face="돋움" color="blue">본인인증을 위해 비밀번호를 다시 입력해주세요!</font><font face="휴먼매직체"><span style="font-size:14pt;"></span></font></p>
            </td>
            <td width="165" height="227" align="center" valign="middle" rowspan="3">
                <p><img src="images/login-p.png" width="163" height="190" border="0"></p>
            </td>
        </tr>
        <tr>
            <td width="45" height="32" align="center" valign="middle">
                <p align="right"><font face="휴먼매직체"><span style="font-size:14pt;">PW: &nbsp;</span></font></p>
            </td>
            <td width="301" height="32" align="center" valign="middle">
                <p align="left"><font face="휴먼매직체"><span style="font-size:14pt;">
                <input type="password" id="password" name="password" size="20" maxlength="15"></span></font></p>
            </td>
        </tr>
        <tr>
            <td width="350" height="52" colspan="2" align="center" valign="middle">
                <p><a href="#" OnMouseOut="na_restore_img_src('gogo', 'document')" OnMouseOver="na_change_img_src('gogo', 'document', 'images/gogo_o.gif', true);" OnClick="document.getElementById('confirmPassword').submit();"><img border="0" src="images/gogo.gif" width="83" height="35" name="gogo"></a></p>
            </td>
        </tr>
    </table>
</form>
<p>&nbsp;</p>
</body>

</html>