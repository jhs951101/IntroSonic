<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="model.Member"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="content-type" content="text/html; charset=euc-kr">
<title>제목 없음</title>
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
    var istrue = confirm('회원정보를 수정하시겠습니까?')

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
                <p align="right"><span style="font-size:14pt;"><font face="휴먼엽서체">성명:&nbsp;</font></span></p>
            </td>
            <td width="445" height="30" align="left" valign="top">
                <p><font face="돋움"><input type="text" id="name" name="name" maxlength="4" size="20" value="<%=member.getName()%>"></font></p>
            </td>
        </tr>
        <tr>
            <td width="205" height="30" valign="top" align="right">
                <p align="right"><span style="font-size:14pt;"><font face="휴먼엽서체">아이디:&nbsp;</font></span></p>
            </td>
            <td width="445" align="left" valign="top">
                <p><font face="돋움"><input type="text" id="username" name="username" size="20" maxlength="15" value="<%=member.getUsername()%>" readonly></font><span style="font-size:10pt;"> <font face="돋움" color="blue">※ 영문 및 특수문자 조합, 15자 이내</font></span></p>
            </td>
        </tr>
        <tr>
            <td width="205" height="30" valign="top" align="right">
                <p align="right"><span style="font-size:14pt;"><font face="휴먼엽서체">비밀번호:&nbsp;</font></span></p>
            </td>
            <td width="445" align="left" valign="top">
                <p><font face="돋움"><input type="password" id="password" name="password" size="20" maxlength="15" value="<%=member.getPassword()%>"></font><span style="font-size:10pt;"> <font face="돋움" color="blue">&nbsp;※ 영문 및 특수문자 조합, 15자 이내</font></span></p>
            </td>
        </tr>
        <tr>
            <td width="205" height="30" valign="top" align="right">
                <p align="right"><span style="font-size:14pt;"><font face="휴먼엽서체">E-mail: </font></span><font face="휴먼엽서체"><span style="font-size:14pt;">&nbsp;</span></font><span style="font-size:14pt;"><font face="휴먼매직체"></font></span></p>
            </td>
            <td width="445" align="left" valign="top" height="30">
                <p><span style="font-size:12pt;"><font face="돋움"><input type="text" id="email-id" name="email-id" size="16" maxlength="15" value='<%=member.getEmail().split("@")[0]%>'> @ <input type="text" id="email-other" name="email-other" size="16" maxlength="15" value='<%=member.getEmail().split("@")[1]%>'></font></span></p>
            </td>
        </tr>
        <tr>
            <td width="205" height="30" valign="top" align="right">
                <p align="right"><span style="font-size:14pt;"><font face="휴먼엽서체">폰 번호:&nbsp;</font></span><font face="돋움"><span style="font-size:14pt;"></span></font></p>
            </td>
            <td width="445" align="left" valign="top" height="30">
                <p><font face="돋움"><input type="text" id="phone1(c)" name="phone1(c)" size="5" maxlength="4" value="010"> - <input type="text" id="phone2(c)" name="phone2(c)" size="5" maxlength="4" value="7587"> - <input type="text" id="phone3(c)" name="phone3(c)" size="5" maxlength="4" value="8478"></font><span style="font-size:10pt;"> <font face="돋움" color="blue">※ &nbsp;숫자만 입력</font></span></p>
            </td>
        </tr>
        <tr>
            <td width="205" height="30" valign="top" align="right">
                <p align="right"><span style="font-size:14pt;"><font face="휴먼엽서체">직업:&nbsp;</font></span><font face="돋움"><span style="font-size:14pt;"></span></font></p>
            </td>
            <td width="445" align="left" valign="top" height="30"><font face="돋움"><select id="job" name="job" size="1">
                    <option value="(select)">(직업을 선택하십시오)</option>
                    <option value="초등학생">초등학생</option>
                    <option value="중학생">중학생</option>
                    <option value="고등학생">고등학생</option>
                    <option value="대학생">대학생</option>
                    <option value="직장인">직장인</option>
                    <option value="기타">기타</option>
</select></font></td>
        </tr>
        <tr>
            <td width="205" height="30" align="right" valign="top">
                <p><span style="font-size:14pt;"><font face="휴먼엽서체">성별:&nbsp;</font></span></p>
            </td>
            <td width="445" height="30" align="left" valign="top">
                <p><font face="돋움"><input type="radio" id="gender" name="gender" value="m" <%if(member.getGender().equals("m")){%> checked <%}%> >남자 &nbsp;</font><font face="돋움"><input type="radio" id="gender" name="gender" value="f" <%if(member.getGender().equals("f")){%> checked <%}%> >여자</font></p>
            </td>
        </tr>
        <tr>
            <td width="205" height="30" valign="top" align="right">
                <p align="right"><span style="font-size:14pt;"><font face="휴먼엽서체">게임 관심분야:&nbsp;</font></span><font face="돋움"><span style="font-size:14pt;"></span></font></p>
            </td>
            <td width="445" align="left" valign="top">
                <p><font face="돋움">액션<input type="checkbox" id="interest" name="interest" value="액션" checked> &nbsp;레이싱</font><font face="돋움"><input type="checkbox" id="interest" name="interest" value="레이싱" checked> &nbsp;어드벤쳐</font><font face="돋움"><input type="checkbox" id="interest" name="interest" value="어드벤쳐"> &nbsp;기타</font><font face="돋움"><input type="checkbox" id="interest" name="interest" value="기타"></font></p>
            </td>
        </tr>
        <tr>
            <td width="205" height="50" valign="top" align="right">
                <p align="right"><span style="font-size:14pt;"><font face="휴먼엽서체">수신여부(각종 이벤트):&nbsp;</font></span><font face="돋움"><span style="font-size:14pt;"></span></font></p>
            </td>
            <td width="445" align="left" valign="top" height="50">
                <p><font face="돋움"><b>이메일:</b>&nbsp;&nbsp;</font><font face="돋움"><input type="radio" name="email-send" value="y" <%if(member.isGetEmail()==1){%> checked <%}%> >수신 &nbsp;</font><font face="돋움"><input type="radio" name="email-send" value="n" <%if(member.isGetEmail()==0){%> checked <%}%> >수신안함</font><font face="돋움"><br>
<b>핸드폰:</b> &nbsp;</font><font face="돋움"><input type="radio" name="phone-send" value="y" <%if(member.isGetPhone()==1){%> checked <%}%> >수신 &nbsp;</font><font face="돋움"><input type="radio" name="phone-send" value="n" <%if(member.isGetPhone()==0){%> checked <%}%> >수신안함</font></p>
            </td>
        </tr>
        <tr>
            <td width="205" height="30" valign="top" align="right">
                <p align="right"><span style="font-size:14pt;"><font face="휴먼엽서체">프로필 사진:&nbsp;</font></span><font face="돋움"><span style="font-size:14pt;"></span></font></p>
            </td>
            <td width="445" align="left" valign="top"><font face="돋움"><input type="file" id="profileImage" name="profileImage" size="30"></font></td>
        </tr>
        <tr>
            <td width="205" height="158" valign="top" align="right">
                <p align="right"><span style="font-size:14pt;"><font face="휴먼엽서체">자기소개:&nbsp;</font></span><font face="돋움"><span style="font-size:14pt;"></span></font></p>
            </td>
            <td width="445" align="left" valign="top" height="158"><font face="돋움"><textarea id="explanation" name="explanation" rows="8" cols="45"><%=member.getExplanation()%></textarea></font></td>
        </tr>
        <tr>
            <td width="650" height="30" align="right" valign="top" colspan="2">
                <p align="center"><font face="돋움"><input type="submit" name="submit" value=" 수정하기 "> &nbsp;&nbsp;</font><font face="돋움"><input type="reset" name="reset" value=" 초기화 "></font></p>
            </td>
        </tr>
    </table>
</form>
</body>

</html>