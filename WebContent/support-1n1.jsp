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
function sending(str)
{
  i = confirm('���Ǹ� �����Ͻðڽ��ϱ�?')

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
        <td width="817" height="32"><b><span style="font-size:14pt;"><font face="����" color="#00B050">&nbsp;&nbsp;1:1����</font></span></b></td>
    </tr>
    <tr>
        <td width="817" height="27">
            <p align="center"><font face="����" color="blue">�� ���������� �����ϴ� ���Դϴ�.&nbsp;���ǿ� ���� �亯�� �̸��Ϸ� ���۵˴ϴ�.</font></p>
        </td>
    </tr>
</table>
<form id="questionForm" name="questionForm" action="<%=request.getContextPath()%>/SendEmailController" method="post">
    <table border="0" width="831" align="center" height="352">
        <tr>
            <td width="96" height="37">
                <p align="right"><font face="�޸տ���ü"><span style="font-size:12pt;">�з�:&nbsp;</span></font></p>
            </td>
            <td width="725" height="37">
                <p align="left"><select id="type" name="type" size="1">
                    <option value="(select)">(�з��� �����ϼ���)</option>
                    <option value="���ǻ���">���ǻ���</option>
                    <option value="����">����</option>
                    <option value="ȸ������">ȸ������</option>
                    <option value="Ȩ������">Ȩ������</option>
                    <option value="��Ÿ">��Ÿ</option>
</select></p>
            </td>
        </tr>
        <tr>
            <td width="96" height="37">
                <p align="right"><font face="�޸տ���ü"><span style="font-size:12pt;">����:&nbsp;</span></font></p>
            </td>
            <td width="725" height="37"><input type="text" id="title" name="title" size="60"></td>
        </tr>
        <tr>
            <td width="96" height="172" valign="top">
                <p align="right"><font face="�޸տ���ü"><span style="font-size:12pt;">����:&nbsp;</span></font></p>
            </td>
            <td width="725" height="172" valign="top"><textarea id="content" name="content" rows="10" cols="60"></textarea></td>
        </tr>
        <tr>
            <td width="96" height="37">
                <p align="right"><font face="�޸տ���ü"><span style="font-size:12pt;">÷������:&nbsp;</span></font></p>
            </td>
            <td width="725" height="37"><input type="file" id="file" name="file" size="45"></td>
        </tr>
        <tr>
            <td width="825" colspan="2" height="57">
                <p align="center"><input type="submit" name="send" value="���� ������ "> &nbsp;&nbsp;<input type="reset" name="cancel" value="�ٽ� �ۼ��ϱ�"></p>
            </td>
        </tr>
    </table>
</form>
<p>&nbsp;</p>
