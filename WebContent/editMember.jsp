<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="model.Member"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="content-type" content="text/html; charset=euc-kr">
<title>���� ����</title>
<meta name="generator" content="Namo WebEditor(Trial)">
<script language="JavaScript">
<!--

function checking(fname)
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
    var istrue = confirm('ȸ�������� �����Ͻðڽ��ϱ�?')

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
function ocomplete(str1)
{
  var i = confirm(str1)

  if(i){
    return true
  } else{
    return false
  }
}



// -->
</script>
<script language="JavaScript">
<!--
function na_alert(str)
{
  alert(str);
}

// -->
</script></head>

<body bgcolor="white" text="black" link="blue" vlink="purple" alink="red">
<%
	Member member = (Member) request.getAttribute("member");
%>
<form id="editForm" name="editForm" OnSubmit="checking('editForm');" action="<%=request.getContextPath()%>/EditMemberController" method="post">
    <table width="650" align="center" cellpadding="0" cellspacing="0" height="778">
        <tr>
            <td width="650" height="65" valign="top" align="right" colspan="2">
                <p align="center"><img src="images/accountbar.png" width="180" height="61" border="0"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
            </td>
        </tr>
        <tr>
            <td width="205" height="30" align="right" valign="top">
                <p align="right"><span style="font-size:14pt;"><font face="�޸տ���ü">����:&nbsp;</font></span></p>
            </td>
            <td width="445" height="30" align="left" valign="top">
                <p><font face="����"><input type="text" id="name" name="name" maxlength="4" size="20" value="<%=member.getName()%>"></font></p>
            </td>
        </tr>
        <tr>
            <td width="205" height="30" valign="top" align="right">
                <p align="right"><span style="font-size:14pt;"><font face="�޸տ���ü">���̵�:&nbsp;</font></span></p>
            </td>
            <td width="445" align="left" valign="top">
                <p><font face="����"><input type="text" id="username" name="username" size="20" maxlength="15" value="<%=member.getUsername()%>" readonly></font><span style="font-size:10pt;"> <font face="����" color="blue">�� ���� �� Ư������ ����, 15�� �̳�</font></span></p>
            </td>
        </tr>
        <tr>
            <td width="205" height="30" valign="top" align="right">
                <p align="right"><span style="font-size:14pt;"><font face="�޸տ���ü">��й�ȣ:&nbsp;</font></span></p>
            </td>
            <td width="445" align="left" valign="top">
                <p><font face="����"><input type="password" id="password" name="password" size="20" maxlength="15" value="<%=member.getPassword()%>"></font><span style="font-size:10pt;"> <font face="����" color="blue">&nbsp;�� ���� �� Ư������ ����, 15�� �̳�</font></span></p>
            </td>
        </tr>
        <tr>
            <td width="205" height="30" valign="top" align="right">
                <p align="right"><span style="font-size:14pt;"><font face="�޸տ���ü">E-mail: </font></span><font face="�޸տ���ü"><span style="font-size:14pt;">&nbsp;</span></font><span style="font-size:14pt;"><font face="�޸ո���ü"></font></span></p>
            </td>
            <td width="445" align="left" valign="top" height="30">
                <p><span style="font-size:12pt;"><font face="����"><input type="text" id="email-id" name="email-id" size="16" maxlength="15" value='<%=member.getEmail().split("@")[0]%>'> @ <input type="text" id="email-other" name="email-other" size="16" maxlength="15" value='<%=member.getEmail().split("@")[1]%>'></font></span></p>
            </td>
        </tr>
        <tr>
            <td width="205" height="30" valign="top" align="right">
                <p align="right"><span style="font-size:14pt;"><font face="�޸տ���ü">�� ��ȣ:&nbsp;</font></span><font face="����"><span style="font-size:14pt;"></span></font></p>
            </td>
            <td width="445" align="left" valign="top" height="30">
                <p><font face="����"><input type="text" id="phone1(c)" name="phone1(c)" size="5" maxlength="4" value="010"> - <input type="text" id="phone2(c)" name="phone2(c)" size="5" maxlength="4" value="7587"> - <input type="text" id="phone3(c)" name="phone3(c)" size="5" maxlength="4" value="8478"></font><span style="font-size:10pt;"> <font face="����" color="blue">�� &nbsp;���ڸ� �Է�</font></span></p>
            </td>
        </tr>
        <tr>
            <td width="205" height="30" valign="top" align="right">
                <p align="right"><span style="font-size:14pt;"><font face="�޸տ���ü">����:&nbsp;</font></span><font face="����"><span style="font-size:14pt;"></span></font></p>
            </td>
            <td width="445" align="left" valign="top" height="30"><font face="����"><select id="job" name="job" size="1">
                    <option value="(select)">(������ �����Ͻʽÿ�)</option>
                    <option value="�ʵ��л�">�ʵ��л�</option>
                    <option value="���л�">���л�</option>
                    <option value="����л�">����л�</option>
                    <option value="���л�">���л�</option>
                    <option value="������">������</option>
                    <option value="��Ÿ">��Ÿ</option>
</select></font></td>
        </tr>
        <tr>
            <td width="205" height="30" align="right" valign="top">
                <p><span style="font-size:14pt;"><font face="�޸տ���ü">����:&nbsp;</font></span></p>
            </td>
            <td width="445" height="30" align="left" valign="top">
                <p><font face="����"><input type="radio" id="gender" name="gender" value="m" <%if(member.getGender().equals("m")){%> checked <%}%> >���� &nbsp;</font><font face="����"><input type="radio" id="gender" name="gender" value="f" <%if(member.getGender().equals("f")){%> checked <%}%> >����</font></p>
            </td>
        </tr>
        <tr>
            <td width="205" height="30" valign="top" align="right">
                <p align="right"><span style="font-size:14pt;"><font face="�޸տ���ü">���� ���ɺо�:&nbsp;</font></span><font face="����"><span style="font-size:14pt;"></span></font></p>
            </td>
            <td width="445" align="left" valign="top">
                <p><font face="����">�׼�<input type="checkbox" id="interest" name="interest" value="�׼�" checked> &nbsp;���̽�</font><font face="����"><input type="checkbox" id="interest" name="interest" value="���̽�" checked> &nbsp;��庥��</font><font face="����"><input type="checkbox" id="interest" name="interest" value="��庥��"> &nbsp;��Ÿ</font><font face="����"><input type="checkbox" id="interest" name="interest" value="��Ÿ"></font></p>
            </td>
        </tr>
        <tr>
            <td width="205" height="50" valign="top" align="right">
                <p align="right"><span style="font-size:14pt;"><font face="�޸տ���ü">���ſ���(���� �̺�Ʈ):&nbsp;</font></span><font face="����"><span style="font-size:14pt;"></span></font></p>
            </td>
            <td width="445" align="left" valign="top" height="50">
                <p><font face="����"><b>�̸���:</b>&nbsp;&nbsp;</font><font face="����"><input type="radio" name="email-send" value="y" <%if(member.isGetEmail()==1){%> checked <%}%> >���� &nbsp;</font><font face="����"><input type="radio" name="email-send" value="n" <%if(member.isGetEmail()==0){%> checked <%}%> >���ž���</font><font face="����"><br>
<b>�ڵ���:</b> &nbsp;</font><font face="����"><input type="radio" name="phone-send" value="y" <%if(member.isGetPhone()==1){%> checked <%}%> >���� &nbsp;</font><font face="����"><input type="radio" name="phone-send" value="n" <%if(member.isGetPhone()==0){%> checked <%}%> >���ž���</font></p>
            </td>
        </tr>
        <tr>
            <td width="205" height="30" valign="top" align="right">
                <p align="right"><span style="font-size:14pt;"><font face="�޸տ���ü">������ ����:&nbsp;</font></span><font face="����"><span style="font-size:14pt;"></span></font></p>
            </td>
            <td width="445" align="left" valign="top"><font face="����"><input type="file" id="profileImage" name="profileImage" size="30"></font></td>
        </tr>
        <tr>
            <td width="205" height="158" valign="top" align="right">
                <p align="right"><span style="font-size:14pt;"><font face="�޸տ���ü">�ڱ�Ұ�:&nbsp;</font></span><font face="����"><span style="font-size:14pt;"></span></font></p>
            </td>
            <td width="445" align="left" valign="top" height="158"><font face="����"><textarea id="explanation" name="explanation" rows="8" cols="45"><%=member.getExplanation()%></textarea></font></td>
        </tr>
        <tr>
            <td width="650" height="30" align="right" valign="top" colspan="2">
                <p align="center"><font face="����"><input type="submit" name="submit" value=" �����ϱ� "> &nbsp;&nbsp;</font><font face="����"><input type="reset" name="reset" value=" �ʱ�ȭ "></font></p>
            </td>
        </tr>
    </table>
</form>
</body>

</html>