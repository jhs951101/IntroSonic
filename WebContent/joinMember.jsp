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

function join(fname)
{
  nname = document.getElementById('name').value
  nid = document.getElementById('username').value
  npw1 = document.getElementById('password').value
  npw2 = document.getElementById('passwordcheck').value
  nem1 = document.getElementById('email-id').value
  nem2 = document.getElementById('email-other').value
  ncp1 = document.getElementById('phone1(c)').value
  ncp2 = document.getElementById('phone2(c)').value
  ncp3 = document.getElementById('phone3(c)').value


  if (nname == ""){
    alert('�̸��� �Է��Ͻʽÿ�.')
    document.forms[fname].elements['name'].select()
    document.forms[fname].elements['name'].focus()
    return false

  } else if (nid == ""){
    alert('���̵� �Է��Ͻʽÿ�.')
    document.forms[fname].elements['username'].select()
    document.forms[fname].elements['username'].focus()
    return false

  } else if (npw1 == ""){
    alert('��й�ȣ�� �Է��Ͻʽÿ�.')
    document.forms[fname].elements['password'].select()
    document.forms[fname].elements['password'].focus()
    return false

  } else if (nem1 == "" || nem2 == ""){
    alert('�̸����� �Է��Ͻʽÿ�.')
    document.forms[fname].elements['email-id'].select()
    document.forms[fname].elements['email-id'].focus()
    return false

  } else if (ncp1 == "" || ncp2 == "" || ncp3 == ""){
    alert('��ȭ��ȣ�� �Է��Ͻʽÿ�.')
    document.forms[fname].elements['phone1(c)'].select()
    document.forms[fname].elements['phone1(c)'].focus()
    return false

  } else if (npw1 != npw2){
    alert('��й�ȣ�� �ٽ� Ȯ�����ֽʽÿ�.')
    document.forms[fname].elements['passwordcheck'].select()
    document.forms[fname].elements['passwordcheck'].focus()
    return false

  } else{
    var istrue = confirm('ȸ������ �Ͻðڽ��ϱ�?')

    if(istrue){
    	return true
    }
    else{
    	return false
    }
  }
}

// -->
</script>
<script language="JavaScript">
<!--
function na_number_validate (fname, type_name, str) 
{
  num_Val = document.forms[fname].elements[type_name].value
  var numStr = "0123456789";
  var thisChar;
  var counter = 0;
    for (var n = 0; n < num_Val.length; n++) {
      thisChar = num_Val.substring(n, n+1);
      if (numStr.indexOf(thisChar) != -1)
        counter ++;
      }
  if (counter == num_Val.length) 
    return true;
  else 
    alert(str);    
    return false;
}

// -->
</script></head>

<body bgcolor="white" text="black" link="blue" vlink="purple" alink="red">
<form name="joinForm" id="joinForm" onsubmit="return join('joinForm');" action="<%=request.getContextPath()%>/JoinMemberController" method="post">
    <table width="650" align="center" cellpadding="0" cellspacing="0" height="793">
        <tr>
            <td width="650" height="80" valign="top" align="right" colspan="2">
                <p align="center"><span style="font-size:10pt;"><img src="images/newinbar.png" width="179" height="61" border="0"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<font face="����" color="blue">��</font>&nbsp;</span><font face="�޸տ���ü" color="red"><span style="font-size:14pt;">*</span></font><span style="font-size:10pt;"><font face="����"
color="blue">�� �ʼ� �Է� �����Դϴ�.</font></span></p>
            </td>
        </tr>
        <tr>
            <td width="205" height="30" align="right" valign="top">
                <p align="right"><span style="font-size:14pt;"><font face="�޸տ���ü" color="red">*</font><font face="�޸տ���ü">�̸�:&nbsp;</font></span></p>
            </td>
            <td width="445" height="30" align="left" valign="top">
                <p><font face="����">
                <input type="text" id="name" name="name" maxlength="4" size="20"></font></p>
            </td>
        </tr>
        <tr>
            <td width="205" height="30" valign="top" align="right">
                <p align="right"><span style="font-size:14pt;"><font face="�޸տ���ü" color="red">*</font></span><span style="font-size:14pt;"><font face="�޸տ���ü">���̵�:&nbsp;</font></span></p>
            </td>
            <td width="445" align="left" valign="top">
                <p><font face="����">
                <input type="text" id="username" name="username" size="20" maxlength="15"></font><span style="font-size:10pt;"> <font face="����" color="blue">�� ����, ����&nbsp;�� Ư������ ����, 15�� �̳�</font></span></p>
            </td>
        </tr>
        <tr>
            <td width="205" height="30" valign="top" align="right">
                <p align="right"><span style="font-size:14pt;"><font face="�޸տ���ü" color="red">*</font></span><span style="font-size:14pt;"><font face="�޸տ���ü">��й�ȣ:&nbsp;</font></span></p>
            </td>
            <td width="445" align="left" valign="top" height="30">
                <p><font face="����">
                <input type="password" id="password" name="password" size="20" maxlength="15"></font><span style="font-size:10pt;"> <font face="����" color="blue">&nbsp;�� ����, ����&nbsp;�� Ư������ ����, 15�� �̳�</font></span></p>
            </td>
        </tr>
        <tr>
            <td width="205" height="30" align="right" valign="top">
                <p align="right"><span style="font-size:14pt;"><font face="�޸տ���ü" color="red">*</font></span><span style="font-size:14pt;"><font face="�޸տ���ü">��й�ȣ Ȯ��:&nbsp;</font></span></p>
            </td>
            <td width="445" height="30" align="left" valign="top">
                <p align="left"><font face="����">
                <input type="password" id="passwordcheck" name="passwordcheck" size="20" maxlength="15"></font></p>
            </td>
        </tr>
        <tr>
            <td width="205" height="30" valign="top" align="right">
                <p align="right"><span style="font-size:14pt;"><font face="�޸տ���ü" color="red">*</font></span><span style="font-size:14pt;"><font face="�޸տ���ü">E-mail: </font></span><font face="�޸տ���ü"><span style="font-size:14pt;">&nbsp;</span></font><span style="font-size:14pt;"><font face="�޸ո���ü"></font></span></p>
            </td>
            <td width="445" align="left" valign="top" height="30">
                <p><span style="font-size:12pt;"><font face="����">
                <input type="text" id="email-id" name="email-id" size="16" maxlength="15"> @ 
                <input type="text" id="email-other" name="email-other" size="16" maxlength="15"></font></span></p>
            </td>
        </tr>
        <tr>
            <td width="205" height="30" valign="top" align="right">
                <p align="right"><span style="font-size:14pt;"><font face="�޸տ���ü" color="red">*</font></span><span style="font-size:14pt;"><font face="�޸տ���ü">�� ��ȣ:&nbsp;</font></span><font face="����"><span style="font-size:14pt;"></span></font></p>
            </td>
            <td width="445" align="left" valign="top" height="30">
                <p><font face="����">
                <input type="text" id="phone1(c)" name="phone1(c)" size="5" maxlength="4" OnBlur="na_number_validate('joining', 'phone1(c)', '���ڸ� �Է����ֽʽÿ�.');"> - 
                <input type="text" id="phone2(c)" name="phone2(c)" size="5" maxlength="4" OnBlur="na_number_validate('joining', 'phone2(c)', '���ڸ� �Է����ֽʽÿ�.');"> - 
                <input type="text" id="phone3(c)" name="phone3(c)" size="5" maxlength="4"
OnBlur="na_number_validate('joining', 'phone3(c)', '���ڸ� �Է����ֽʽÿ�.');"></font><span style="font-size:10pt;"> <font face="����" color="blue">�� &nbsp;���ڸ� �Է�</font></span></p>
            </td>
        </tr>
        <tr>
            <td width="205" height="30" valign="top" align="right">
                <p align="right"><span style="font-size:14pt;"><font face="�޸տ���ü">����:&nbsp;</font></span><font face="����"><span style="font-size:14pt;"></span></font></p>
            </td>
            <td width="445" align="left" valign="top" height="30"><font face="����">
            <select id="job" name="job" size="1">
                    <option value="(select)">(������ �����Ͻʽÿ�)</option>
                    <option value="�ʵ��л�">�ʵ��л�</option>
                    <option value="���л�">���л�</option>
                    <option value="����л�">����л�</option>
                    <option value="���л�">���л�</option>
                    <option value="������">������</option>
                    <option value="������">����</option>
                    <option value="��Ÿ">��Ÿ</option>
			</select>
			</font></td>
        </tr>
        <tr>
            <td width="205" height="30" align="right" valign="top">
                <p><span style="font-size:14pt;"><font face="�޸տ���ü">����:&nbsp;</font></span></p>
            </td>
            <td width="445" height="30" align="left" valign="top">
                <p><font face="����">
                <input type="radio" id="gender" name="gender" value="m">���� &nbsp;</font><font face="����">
                <input type="radio" id="gender" name="gender" value="f">����</font></p>
            </td>
        </tr>
        <tr>
            <td width="205" height="30" valign="top" align="right">
                <p align="right"><span style="font-size:14pt;"><font face="�޸տ���ü">���� ���ɺо�:&nbsp;</font></span><font face="����"><span style="font-size:14pt;"></span></font></p>
            </td>
            <td width="445" align="left" valign="top">
                <p><font face="����">�׼�
                <input type="checkbox" id="interest" name="interest" value="�׼�"> &nbsp;���̽�</font><font face="����">
                <input type="checkbox" id="interest" name="interest" value="���̽�"> &nbsp;��庥ó</font><font face="����">
                <input type="checkbox" id="interest" name="interest" value="��庥ó"> &nbsp;��Ÿ</font><font face="����">
                <input type="checkbox" id="interest" name="interest" value="��Ÿ"></font></p>
            </td>
        </tr>
        <tr>
            <td width="205" height="50" valign="top" align="right">
                <p align="right"><span style="font-size:14pt;"><font face="�޸տ���ü" color="red">*</font></span><span style="font-size:14pt;"><font face="�޸տ���ü">���ſ���(���� �̺�Ʈ):&nbsp;</font></span><font face="����"><span style="font-size:14pt;"></span></font></p>
            </td>
            <td width="445" align="left" valign="top" height="50">
                <p><font face="����"><b>�̸���:</b>&nbsp;&nbsp;</font><font face="����">
                <input type="radio" id="email-send" name="email-send" value="1">���� &nbsp;</font><font face="����">
                <input type="radio" id="email-send" name="email-send" value="0">���ž���</font><font face="����"><br>
<b>�ڵ���:</b> &nbsp;</font><font face="����">
<input type="radio" id="phone-send" name="phone-send" value="1">���� &nbsp;</font><font face="����">
<input type="radio" id="phone-send" name="phone-send" value="0">���ž���</font></p>
            </td>
        </tr>
        <tr>
            <td width="205" height="30" valign="top" align="right">
                <p align="right"><span style="font-size:14pt;"><font face="�޸տ���ü">������ ����:&nbsp;</font></span><font face="����"><span style="font-size:14pt;"></span></font></p>
            </td>
            <td width="445" align="left" valign="top"><font face="����">
            <input type="file" id="profile_image" name="profile_image" size="30"></font></td>
        </tr>
        <tr>
            <td width="205" height="158" valign="top" align="right">
                <p align="right"><span style="font-size:14pt;"><font face="�޸տ���ü">�ڱ�Ұ�:&nbsp;</font></span><font face="����"><span style="font-size:14pt;"></span></font></p>
            </td>
            <td width="445" align="left" valign="top" height="158"><font face="����"><textarea id="explanation" name="explanation" rows="8" cols="45"></textarea></font></td>
        </tr>
        <tr>
            <td width="650" height="30" valign="top" align="right" colspan="2">
                <p align="center"><font face="����">
                <input type="submit" name="submit" value=" �����ϱ� "> &nbsp;&nbsp;
                <input type="reset" name="reset" value=" �ٽ��ۼ� "></font></p>
            </td>
        </tr>
    </table>
</form>
</body>

</html>