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
function sending(str)
{
  i = confirm('문의를 전송하시겠습니까?')

  if(i){
    alert(str);
    document.forms['form1'].elements['title'].value = "";
    document.forms['form1'].elements['content'].value = "";
    document.forms['form1'].elements['select'].value = "(select it)";
  } else{
    return false
  }
}

// -->
</script></head>

<body bgcolor="white" text="black" link="blue" vlink="purple" alink="red">
<table border="0" width="831" align="center" height="59" bordercolordark="black" bordercolorlight="black" cellspacing="0">
    <tr>
        <td width="817" height="32"><b><span style="font-size:14pt;"><font face="돋움" color="#00B050">&nbsp;&nbsp;1:1문의</font></span></b></td>
    </tr>
    <tr>
        <td width="817" height="27">
            <p align="center"><font face="돋움" color="blue">※ 개인적으로 문의하는 곳입니다.&nbsp;문의에 대한 답변은 이메일로 전송됩니다.</font></p>
        </td>
    </tr>
</table>
<form id="questionForm" name="questionForm" action="<%=request.getContextPath()%>/SendEmailController" method="post">
    <table border="0" width="831" align="center" height="352">
        <tr>
            <td width="96" height="37">
                <p align="right"><font face="휴먼엽서체"><span style="font-size:12pt;">분류:&nbsp;</span></font></p>
            </td>
            <td width="725" height="37">
                <p align="left"><select id="type" name="type" size="1">
                    <option value="(select)">(분류를 선택하세요)</option>
                    <option value="건의사항">건의사항</option>
                    <option value="결제">결제</option>
                    <option value="회원정보">회원정보</option>
                    <option value="홈페이지">홈페이지</option>
                    <option value="기타">기타</option>
</select></p>
            </td>
        </tr>
        <tr>
            <td width="96" height="37">
                <p align="right"><font face="휴먼엽서체"><span style="font-size:12pt;">제목:&nbsp;</span></font></p>
            </td>
            <td width="725" height="37"><input type="text" id="title" name="title" size="60"></td>
        </tr>
        <tr>
            <td width="96" height="172" valign="top">
                <p align="right"><font face="휴먼엽서체"><span style="font-size:12pt;">내용:&nbsp;</span></font></p>
            </td>
            <td width="725" height="172" valign="top"><textarea id="content" name="content" rows="10" cols="60"></textarea></td>
        </tr>
        <tr>
            <td width="96" height="37">
                <p align="right"><font face="휴먼엽서체"><span style="font-size:12pt;">첨부파일:&nbsp;</span></font></p>
            </td>
            <td width="725" height="37"><input type="file" id="file" name="file" size="45"></td>
        </tr>
        <tr>
            <td width="825" colspan="2" height="57">
                <p align="center"><input type="submit" name="send" value="내용 보내기 "> &nbsp;&nbsp;<input type="reset" name="cancel" value="다시 작성하기"></p>
            </td>
        </tr>
    </table>
</form>
<p>&nbsp;</p>
