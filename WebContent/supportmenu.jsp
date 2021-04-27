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

function na_alert(str)
{
  alert(str);
}

// -->
</script>
</head>

<body bgcolor="white" text="black" link="blue" vlink="purple" alink="red" OnLoad="na_preload_img(false, 'images/support-ob1.gif', 'images/support-ob2.gif');">
<p><a name="veryTOP"></a></p>
<table width="660" cellpadding="0" cellspacing="0" align="center" height="45">
    <tr>
        <td width="660" height="45">            
            <div align="left">
                <table border="0" width="170" height="30">
                    <tr>
                        <td width="164" background="images/titlebar.png" height="26">
                            <p align="center"><b><font face="휴먼엽서체" color="white">고객센터</font></b></p>
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
            <p align="left"><a href="support-qna.jsp" OnMouseOut="na_restore_img_src('game_b1', 'document')" OnMouseOver="na_change_img_src('game_b1', 'document', 'images/support-ob1.gif', true);" target="ifrm1"><img border="0" src="images/support-b1.gif" width="79" height="35" name="game_b1"></a>&nbsp;&nbsp;&nbsp;
            <a 
			<%
				session = request.getSession(false);
            	String str = null;
				
				if(!session.isNew()){
					str = (String) session.getAttribute("username");
				}
				
				if(str != null){
			%>
            	href="support-1n1.jsp"
			<%
				}
				else{
			%>
            	href="#" OnClick="na_alert('로그인 후에 이용하실 수 있습니다.');"
            <%
            	}
            %>
            OnMouseOut="na_restore_img_src('game_b2', 'document')" OnMouseOver="na_change_img_src('game_b2', 'document', 'images/support-ob2.gif', true);" target="ifrm1"><img border="0" src="images/support-b2.gif" width="83" height="35" name="game_b2"></a><FONT color=blue face=돋움> &nbsp;※&nbsp;왼쪽의 버튼을 클릭하세요!</FONT></p>
        </td>
    </tr>
</table>
<p align="center"><iframe name="ifrm1" src="null.jsp" frameborder="0" align="middle" width="1090" height="2000"></iframe></p>
<form name="form1">
    <p align="center"><input type="button" name="formbutton1" value="제일 위로" OnClick="namosw_goto('#veryTOP', 'self')"></p>
</form>
</body>

</html>