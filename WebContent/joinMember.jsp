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
    alert('이름을 입력하십시오.')
    document.forms[fname].elements['name'].select()
    document.forms[fname].elements['name'].focus()
    return false

  } else if (nid == ""){
    alert('아이디를 입력하십시오.')
    document.forms[fname].elements['username'].select()
    document.forms[fname].elements['username'].focus()
    return false

  } else if (npw1 == ""){
    alert('비밀번호를 입력하십시오.')
    document.forms[fname].elements['password'].select()
    document.forms[fname].elements['password'].focus()
    return false

  } else if (nem1 == "" || nem2 == ""){
    alert('이메일을 입력하십시오.')
    document.forms[fname].elements['email-id'].select()
    document.forms[fname].elements['email-id'].focus()
    return false

  } else if (ncp1 == "" || ncp2 == "" || ncp3 == ""){
    alert('전화번호를 입력하십시오.')
    document.forms[fname].elements['phone1(c)'].select()
    document.forms[fname].elements['phone1(c)'].focus()
    return false

  } else if (npw1 != npw2){
    alert('비밀번호를 다시 확인해주십시오.')
    document.forms[fname].elements['passwordcheck'].select()
    document.forms[fname].elements['passwordcheck'].focus()
    return false

  } else{
    var istrue = confirm('회원가입 하시겠습니까?')

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
                <p align="center"><span style="font-size:10pt;"><img src="images/newinbar.png" width="179" height="61" border="0"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<font face="돋움" color="blue">※</font>&nbsp;</span><font face="휴먼엽서체" color="red"><span style="font-size:14pt;">*</span></font><span style="font-size:10pt;"><font face="돋움"
color="blue">은 필수 입력 사항입니다.</font></span></p>
            </td>
        </tr>
        <tr>
            <td width="205" height="30" align="right" valign="top">
                <p align="right"><span style="font-size:14pt;"><font face="휴먼엽서체" color="red">*</font><font face="휴먼엽서체">이름:&nbsp;</font></span></p>
            </td>
            <td width="445" height="30" align="left" valign="top">
                <p><font face="돋움">
                <input type="text" id="name" name="name" maxlength="4" size="20"></font></p>
            </td>
        </tr>
        <tr>
            <td width="205" height="30" valign="top" align="right">
                <p align="right"><span style="font-size:14pt;"><font face="휴먼엽서체" color="red">*</font></span><span style="font-size:14pt;"><font face="휴먼엽서체">아이디:&nbsp;</font></span></p>
            </td>
            <td width="445" align="left" valign="top">
                <p><font face="돋움">
                <input type="text" id="username" name="username" size="20" maxlength="15"></font><span style="font-size:10pt;"> <font face="돋움" color="blue">※ 영문, 숫자&nbsp;및 특수문자 조합, 15자 이내</font></span></p>
            </td>
        </tr>
        <tr>
            <td width="205" height="30" valign="top" align="right">
                <p align="right"><span style="font-size:14pt;"><font face="휴먼엽서체" color="red">*</font></span><span style="font-size:14pt;"><font face="휴먼엽서체">비밀번호:&nbsp;</font></span></p>
            </td>
            <td width="445" align="left" valign="top" height="30">
                <p><font face="돋움">
                <input type="password" id="password" name="password" size="20" maxlength="15"></font><span style="font-size:10pt;"> <font face="돋움" color="blue">&nbsp;※ 영문, 숫자&nbsp;및 특수문자 조합, 15자 이내</font></span></p>
            </td>
        </tr>
        <tr>
            <td width="205" height="30" align="right" valign="top">
                <p align="right"><span style="font-size:14pt;"><font face="휴먼엽서체" color="red">*</font></span><span style="font-size:14pt;"><font face="휴먼엽서체">비밀번호 확인:&nbsp;</font></span></p>
            </td>
            <td width="445" height="30" align="left" valign="top">
                <p align="left"><font face="돋움">
                <input type="password" id="passwordcheck" name="passwordcheck" size="20" maxlength="15"></font></p>
            </td>
        </tr>
        <tr>
            <td width="205" height="30" valign="top" align="right">
                <p align="right"><span style="font-size:14pt;"><font face="휴먼엽서체" color="red">*</font></span><span style="font-size:14pt;"><font face="휴먼엽서체">E-mail: </font></span><font face="휴먼엽서체"><span style="font-size:14pt;">&nbsp;</span></font><span style="font-size:14pt;"><font face="휴먼매직체"></font></span></p>
            </td>
            <td width="445" align="left" valign="top" height="30">
                <p><span style="font-size:12pt;"><font face="돋움">
                <input type="text" id="email-id" name="email-id" size="16" maxlength="15"> @ 
                <input type="text" id="email-other" name="email-other" size="16" maxlength="15"></font></span></p>
            </td>
        </tr>
        <tr>
            <td width="205" height="30" valign="top" align="right">
                <p align="right"><span style="font-size:14pt;"><font face="휴먼엽서체" color="red">*</font></span><span style="font-size:14pt;"><font face="휴먼엽서체">폰 번호:&nbsp;</font></span><font face="돋움"><span style="font-size:14pt;"></span></font></p>
            </td>
            <td width="445" align="left" valign="top" height="30">
                <p><font face="돋움">
                <input type="text" id="phone1(c)" name="phone1(c)" size="5" maxlength="4" OnBlur="na_number_validate('joining', 'phone1(c)', '숫자만 입력해주십시오.');"> - 
                <input type="text" id="phone2(c)" name="phone2(c)" size="5" maxlength="4" OnBlur="na_number_validate('joining', 'phone2(c)', '숫자만 입력해주십시오.');"> - 
                <input type="text" id="phone3(c)" name="phone3(c)" size="5" maxlength="4"
OnBlur="na_number_validate('joining', 'phone3(c)', '숫자만 입력해주십시오.');"></font><span style="font-size:10pt;"> <font face="돋움" color="blue">※ &nbsp;숫자만 입력</font></span></p>
            </td>
        </tr>
        <tr>
            <td width="205" height="30" valign="top" align="right">
                <p align="right"><span style="font-size:14pt;"><font face="휴먼엽서체">직업:&nbsp;</font></span><font face="돋움"><span style="font-size:14pt;"></span></font></p>
            </td>
            <td width="445" align="left" valign="top" height="30"><font face="돋움">
            <select id="job" name="job" size="1">
                    <option value="(select)">(직업을 선택하십시오)</option>
                    <option value="초등학생">초등학생</option>
                    <option value="중학생">중학생</option>
                    <option value="고등학생">고등학생</option>
                    <option value="대학생">대학생</option>
                    <option value="직장인">직장인</option>
                    <option value="직장인">무직</option>
                    <option value="기타">기타</option>
			</select>
			</font></td>
        </tr>
        <tr>
            <td width="205" height="30" align="right" valign="top">
                <p><span style="font-size:14pt;"><font face="휴먼엽서체">성별:&nbsp;</font></span></p>
            </td>
            <td width="445" height="30" align="left" valign="top">
                <p><font face="돋움">
                <input type="radio" id="gender" name="gender" value="m">남자 &nbsp;</font><font face="돋움">
                <input type="radio" id="gender" name="gender" value="f">여자</font></p>
            </td>
        </tr>
        <tr>
            <td width="205" height="30" valign="top" align="right">
                <p align="right"><span style="font-size:14pt;"><font face="휴먼엽서체">게임 관심분야:&nbsp;</font></span><font face="돋움"><span style="font-size:14pt;"></span></font></p>
            </td>
            <td width="445" align="left" valign="top">
                <p><font face="돋움">액션
                <input type="checkbox" id="interest" name="interest" value="액션"> &nbsp;레이싱</font><font face="돋움">
                <input type="checkbox" id="interest" name="interest" value="레이싱"> &nbsp;어드벤처</font><font face="돋움">
                <input type="checkbox" id="interest" name="interest" value="어드벤처"> &nbsp;기타</font><font face="돋움">
                <input type="checkbox" id="interest" name="interest" value="기타"></font></p>
            </td>
        </tr>
        <tr>
            <td width="205" height="50" valign="top" align="right">
                <p align="right"><span style="font-size:14pt;"><font face="휴먼엽서체" color="red">*</font></span><span style="font-size:14pt;"><font face="휴먼엽서체">수신여부(각종 이벤트):&nbsp;</font></span><font face="돋움"><span style="font-size:14pt;"></span></font></p>
            </td>
            <td width="445" align="left" valign="top" height="50">
                <p><font face="돋움"><b>이메일:</b>&nbsp;&nbsp;</font><font face="돋움">
                <input type="radio" id="email-send" name="email-send" value="1">수신 &nbsp;</font><font face="돋움">
                <input type="radio" id="email-send" name="email-send" value="0">수신안함</font><font face="돋움"><br>
<b>핸드폰:</b> &nbsp;</font><font face="돋움">
<input type="radio" id="phone-send" name="phone-send" value="1">수신 &nbsp;</font><font face="돋움">
<input type="radio" id="phone-send" name="phone-send" value="0">수신안함</font></p>
            </td>
        </tr>
        <tr>
            <td width="205" height="30" valign="top" align="right">
                <p align="right"><span style="font-size:14pt;"><font face="휴먼엽서체">프로필 사진:&nbsp;</font></span><font face="돋움"><span style="font-size:14pt;"></span></font></p>
            </td>
            <td width="445" align="left" valign="top"><font face="돋움">
            <input type="file" id="profile_image" name="profile_image" size="30"></font></td>
        </tr>
        <tr>
            <td width="205" height="158" valign="top" align="right">
                <p align="right"><span style="font-size:14pt;"><font face="휴먼엽서체">자기소개:&nbsp;</font></span><font face="돋움"><span style="font-size:14pt;"></span></font></p>
            </td>
            <td width="445" align="left" valign="top" height="158"><font face="돋움"><textarea id="explanation" name="explanation" rows="8" cols="45"></textarea></font></td>
        </tr>
        <tr>
            <td width="650" height="30" valign="top" align="right" colspan="2">
                <p align="center"><font face="돋움">
                <input type="submit" name="submit" value=" 가입하기 "> &nbsp;&nbsp;
                <input type="reset" name="reset" value=" 다시작성 "></font></p>
            </td>
        </tr>
    </table>
</form>
</body>

</html>