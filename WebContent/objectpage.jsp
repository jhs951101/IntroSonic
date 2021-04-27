<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="model.Model"%>
<%@ page import="model.Game"%>
<%@ page import="model.SonicImage"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="content-type" content="text/html; charset=euc-kr">
<title>제목 없음</title>
<meta name="generator" content="Namo WebEditor(Trial)">
<script language="JavaScript">
<!--
function na_alert(str)
{
  alert(str);
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

<body bgcolor="white" text="black" link="blue" vlink="purple" alink="red">
<%
	Model[] models = (Model[]) request.getAttribute("models");
	String type = (String) request.getAttribute("type");
	String model = (String) request.getAttribute("model");
	int numOfPage = (int) request.getAttribute("numOfPage");	
	
	Game[] games = null;
	SonicImage[] images = null;
	
	if(model.equals("game")){
		games = new Game[models.length];
		
		for(int i=0; i<models.length; i++)
			games[i] = (Game) models[i];
	}
	else if(model.equals("image")){
		images = new SonicImage[models.length];
		
		for(int i=0; i<models.length; i++)
			images[i] = (SonicImage) models[i];
	}
%>
<div id="layer1" style="width:49px; height:45px; position:absolute; left:738px; top:1146px; z-index:1;">
    <p><a href="#" OnClick="na_alert('죄송합니다. 준비중입니다.');"><img src="images/searchicon.jpg" width="49" height="45" border="0"></a></p>
</div>
<table border="0" width="833" align="center" height="65">
    <tr>
        <td width="827" height="32"><b><span style="font-size:14pt;"><font face="돋움" color="#00B050">&nbsp;&nbsp;
        	<%
        		if(type.equals("korea")){
        	%>
        		국내게임
        	<%
	        	}
	        	else if(type.equals("recommend")){
        	%>
        		추천게임
        	<%
	        	}
	        	else if(type.equals("all")){
        	%>
        		ALL
        	<%
	        	}
	        	else if(type.equals("wallpaper")){
        	%>
        		바탕화면
        	<%
	        	}
	        	else if(type.equals("icon")){
        	%>
        		아이콘
        	<%
	        	}
        	%>
        	
        </font></span></b><font face="돋움"></font></td>
    </tr>
    <tr>
        <td width="827" height="27">
            <p align="center"><font face="돋움" color="blue">
            	<%
	        		if(type.equals("korea")){
	        	%>
	        		※ 소닉 더 헤지혹이 등장한 게임 중 정식적으로 수입한 게임들만 소개합니다.
	        	<%
		        	}
		        	else if(type.equals("recommend")){
	        	%>
	        		※ 많은 사람들로부터 인기를 얻은 게임들만 모아 놓았습니다. 참고해주세요!
	        	<%
		        	}
		        	else if(type.equals("all")){
	        	%>
	        		※ 소닉 더 헤지혹이 등장한 모든 게임을 소개합니다!
	        	<%
		        	}
		        	else if(type.equals("wallpaper")){
	        	%>
	        		※ 귀여운 소닉 캐릭터들이 담긴 바탕화면을 다운로드해보세요!
	        	<%
		        	}
		        	else if(type.equals("icon")){
	        	%>
	        		※ 다운받은 소닉 아이콘은 버디버디, 카카오톡 등에서 사용하실 수 있습니다.
	        	<%
		        	}
	        	%>
            </font><font face="돋움"></font></p>
        </td>
    </tr>
</table>
<p align="center"><font face="돋움">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</font><b><span style="font-size:14pt;"><font face="돋움" color="#00B050"><a name="TOP"></a></font></span></b></p>
<table border="3" width="764" align="center" height="822" cellspacing="0" bordercolordark="#FF9900" bordercolorlight="yellow" bordercolor="yellow">
	<%
		int i = 0;
	
		if(model.equals("game")){
			while(i < models.length){
	%>
		    <tr>
		        <td width="250" height="200">
		            <p align="center"><font face="돋움"><img src="<%=games[i].getImageLink()%>" alt="NO IMAGE" width="200" height="157" border="0"></font></p>
		        </td>
		        <td width="500" height="164">
		            <p><b><font face="돋움">
		            	<%=games[i].getTitle()%>
		            </font></b><font face="돋움"></font></p>
		            <p><font face="돋움">
		            	장르: <%=games[i].getGenre()%> <br>
						등급: <%=games[i].getDegree()%> <br>
						제작사: <%=games[i].getCompany()%> </p>
		            <p><font face="돋움">&lt;<a href="#DOWN">DOWN</a>&gt;</font></p>
		        </td>
		    </tr>
	<%
				i++;
			}
		}
		else if(model.equals("image")){
			while(i < models.length){
	%>
		    <tr>
		        <td width="60%" height="210" align="center" valign="middle">
		            <p><img src="<%=images[i].getLink()%>" width="300" height="187" border="0"></p>
		        </td>
		        <td width="40%" height="210" valign="middle">
		            <p><a href="<%=images[i].getLink()%>" OnMouseOut="na_restore_img_src('b1', 'document')" OnMouseOver="na_change_img_src('b1', 'document', 'images/download_o.gif', true)" target="_blank"><img src="images/download.gif" width="104" height="37" border="0" name="b1"></a></p>
		        </td>
		    </tr>
	<%
				i++;
			}
		}
	%>
</table>
<table width="836" align="center" height="45" cellpadding="0" cellspacing="0">
    <tr>
        <td width="1084" align="center" valign="middle" height="45">
            <p><span style="font-size:14pt;"><font face="돋움"><a name="DOWN"></a>&lt;</font><a href="#TOP"><font face="돋움">TOP</font></a><font face="돋움">&gt;
	            <% for(int n=1; n<=numOfPage; n++){%>
	            	<a href="<%=request.getContextPath()%>/ObjectLoadController?model=<%=model%>&type=<%=type%>&page=<%=n%>"><%=n%></a>
	            <%}%>
            </font></span></p>
        </td>
    </tr>
</table>
</body>

</html>