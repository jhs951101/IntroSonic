<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="content-type" content="text/html; charset=euc-kr">
<title>���� ����</title>
<meta name="generator" content="Namo WebEditor(Trial)">
<script language="JavaScript">
<!--
function namosw_goto(url, targetstr)
{
  if (url == 'backward')
    history.back(1);
  else if (url == 'forward')
    history.forward(1);
  else {
     if (targetstr == 'blank') {
       window.open(url, 'win1');
     } else {
       var frameobj;
       if (targetstr == '') targetstr = 'self';
       if ((frameobj = eval(targetstr)) != null)
         frameobj.location = url;
     }
  }
}

// -->
</script>
<script language="JavaScript">
<!--
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
</script>
</head>

<body bgcolor="white" text="black" link="blue" vlink="purple" alink="red" OnLoad="na_preload_img(false, 'images/game-ob1.gif', 'images/game-ob3.gif', 'images/game-ob2.gif');">
<p><a name="veryTOP"></a></p>
<table width="660" cellpadding="0" cellspacing="0" align="center" height="45">
    <tr>
        <td width="660" height="45">            <div align="left">
                <table border="0" width="170" height="30">
                    <tr>
                        <td width="164" background="images/titlebar.png" height="26">
                            <p align="center"><b><font face="�޸տ���ü" color="white">���ӼҰ�</font></b></p>
                        </td>
                    </tr>
                </table>
            </div>
        </td>
    </tr>
</table>
<table border="0" width="666" height="41" align="center">
    <tr>
        <td width="660" height="37" valign="bottom">
            <p align="left"><a href="#" OnMouseOut="na_restore_img_src('game_b1', 'document')" OnMouseOver="na_change_img_src('game_b1', 'document', 'images/game-ob1.gif', true);" target="ifrm1"><img border="0" src="images/game-b1.gif" width="83" height="35" name="game_b1"></a>&nbsp;&nbsp;&nbsp;<FONT color=blue face=����><a href="#" OnMouseOut="na_restore_img_src('game_b3', 'document')" OnMouseOver="na_change_img_src('game_b3', 'document', 'images/game-ob3.gif', true);" target="ifrm1"><img border="0" src="images/game-b3.gif" width="83" height="35" name="game_b3"></a>&nbsp; &nbsp;</FONT><a href="<%=request.getContextPath()%>/ObjectLoadController?model=game&type=all&page=1" OnMouseOut="na_restore_img_src('game_b2', 'document')" OnMouseOver="na_change_img_src('game_b2', 'document', 'images/game-ob2.gif', true);" target="ifrm1"><img border="0" src="images/game-b2.gif" width="79" height="35" name="game_b2"></a><FONT color=blue face=����> &nbsp;�� ������ ��ư�� Ŭ���ϼ���!</FONT></p>
        </td>
    </tr>
</table>
<p align="center"><iframe name="ifrm1" src="null.jsp" frameborder="0" align="middle" width="1090" height="1205"></iframe></p>
<form name="form1">
    <p align="center"><input type="button" name="formbutton1" value="���� ����" OnClick="namosw_goto('#veryTOP', 'self')"></p>
</form>
<p>&nbsp;</p>
</body>

</html>