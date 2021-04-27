<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="content-type" content="text/html; charset=euc-kr">
<title>intotheSonic</title>
<meta name="generator" content="Namo WebEditor(Trial)">
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

<body bgcolor="white" text="black" link="blue" vlink="purple" alink="red" OnLoad="na_preload_img(false, 'images/menubar-ob1.gif', 'images/menubar-ob2.gif', 'images/menubar-ob3.gif', 'images/menubar-ob4.gif', 'images/menubar-ob5.gif', 'images/menubar-ob6.gif');">
<div id="layer1" style="width:180px; height:152px; position:absolute; left:144px; top:3px; z-index:1;">
    <p><img src="images/logopicture1.png" width="180" height="151" border="0"></p>
</div>
<div id="layer2" style="width:180px; height:152px; position:absolute; left:994px; top:3px; z-index:1;">
    <p><img src="images/logopicture2.png" width="180" height="151" border="0"></p>
</div>
<table border="0" width="669" align="center"> <!-- height="152"  -->
    <tr>
        <td width="663" height="72" align="center" valign="middle" colspan="2"> <!--  -->
            <p align="left"><img src="images/logo.png" width="369" border="0"></p> <!-- height="60"  -->
        </td>
    </tr>
    <tr>
        <td width="663" background="images/menubar.png" align="center" valign="middle" colspan="2">
            <p align="center"><a href="intro.jsp" OnMouseOut="na_restore_img_src('menu_b1', 'document')" OnMouseOver="na_change_img_src('menu_b1', 'document', 'images/menubar-ob1.gif', true);" target="bottom"><img border="0" src="images/menubar-b1.gif" width="79" height="35" name="menu_b1"></a> &nbsp;<a href="character.jsp" OnMouseOut="na_restore_img_src('menu_b2', 'document')" OnMouseOver="na_change_img_src('menu_b2', 'document', 'images/menubar-ob2.gif', true);" target="bottom"><img border="0" src="images/menubar-b2.gif"
width="102" height="35" name="menu_b2"></a> &nbsp;<a href="gamemenu.jsp" OnMouseOut="na_restore_img_src('menu_b3', 'document')" OnMouseOver="na_change_img_src('menu_b3', 'document', 'images/menubar-ob3.gif', true);" target="bottom"><img border="0" src="images/menubar-b3.gif" width="81" height="35" name="menu_b3"></a> &nbsp;<a href="#" OnMouseOut="na_restore_img_src('menu_b4', 'document')" OnMouseOver="na_change_img_src('menu_b4', 'document', 'images/menubar-ob4.gif', true);" OnClick="na_alert('죄송합니다. 준비중입니다.');"><img border="0"
src="images/menubar-b4.gif" width="81" height="35" name="menu_b4"></a> &nbsp;<a href="imagemenu.jsp" OnMouseOut="na_restore_img_src('menu_b5', 'document')" OnMouseOver="na_change_img_src('menu_b5', 'document', 'images/menubar-ob5.gif', true);" target="bottom"><img border="0" src="images/menubar-b5.gif" width="79" height="35" name="menu_b5"></a> &nbsp;<a href="supportmenu.jsp" OnMouseOut="na_restore_img_src('menu_b6', 'document')" OnMouseOver="na_change_img_src('menu_b6', 'document', 'images/menubar-ob6.gif', true);"
target="bottom"><img border="0" src="images/menubar-b6.gif" width="81" height="35" name="menu_b6"></a></p>
        </td>
    </tr>
    <tr>
        <td width="330" align="center" valign="top"> <!--  height="19"  -->
            <p align="left"><span style="font-size:10pt;">&nbsp;&nbsp;&nbsp;</span><a href="home.jsp" target="bottom"><span style="font-size:10pt;">HOME</span></a><span style="font-size:10pt;"> ㅣ
			<%
				session = request.getSession(false);
            	String str = null;
				
				if(!session.isNew()){
					str = (String) session.getAttribute("username");
				}
				
				if(str == null){
			%>
				<a href="login.jsp" target="bottom">Log-in</a>
			<%
				}
				else{
			%>
				<a href="<%=request.getContextPath()%>/LogoutController" target="_parent">Log-out</a>
			<%
				}
			%>
            </span></p>
        </td>
        <td width="330"  align="center" valign="top"> <!-- height="19" -->
        	<%
        		if(str != null){
        	%>
	            <p align="right">
		            <span style="font-size:10pt;">
			            <b><font color="black">
			            <%=session.getAttribute("username")%>
			            </font></b>&nbsp;
			            <a href="accept.jsp" target="bottom">My-account</a>&nbsp;&nbsp;&nbsp;
		            </span>
	            </p>
            <%
            	}
            %>
        </td>
    </tr>
</table>
</body>

</html>