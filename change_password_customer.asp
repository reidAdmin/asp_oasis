<html>
<head>
<title>Welcome to Oasis Car Wash Systems.</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="vstyle.css">
<style type="text/css">
<!--
.style1 {font-size: 7pt}
.style2 {font-weight: bold}
body {
	background-color: #006;
}
-->
</style>

<script language="JavaScript">
function validateform(){
	if (document.ChangePwdForm.Password.value == ''){
		alert('Please enter your new password.');
		document.ChangePwdForm.Password.focus();
		return false;
	}

	if (document.ChangePwdForm.cPassword.value == ''){
		alert('Please confirm your new password.');
		document.ChangePwdForm.cPassword.focus();
		return false;
	}

	var pwd = document.ChangePwdForm.Password.value;
	var cpwd = document.ChangePwdForm.cPassword.value;

	if (pwd == document.ChangePwdForm.oPwd.value){
		alert('You must select a different password from your previous password');
		return false;
		document.ChangePwdForm.Password.value = '';
		document.ChangePwdForm.cPassword.value = '';
	}

	if (pwd != cpwd){
		alert('Please re-confirm your new password.')
		document.ChangePwdForm.cPassword.value = '';
		document.ChangePwdForm.cPassword.focus();
		return false;		
	}

	return true;
}
</script>
</head>
<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<table width="792" border="0" align="center" cellpadding="0" cellspacing="0" id="Table_01">
  <!--DWLayoutTable-->
	<tr>
		<td colspan="10">
			<img src="images/top1.jpg" width="792" height="10" alt=""></td>
	</tr>
	<tr>
		<td colspan="3">
			<img src="images/logo.jpg" width="218" height="91" alt=""></td>
		<td colspan="7">
			<img src="images/top2.jpg" width="574" height="91" alt=""></td>
	</tr>
	<tr>
		<td colspan="10">
			<img src="images/top3.jpg" width="792" height="109" alt=""></td>
	</tr>
	<tr>
		<td width="15" background="images/frameleft.jpg">
			<img src="images/frameleft.jpg" width="15" height="33" alt=""></td>
		<td colspan="8" rowspan="2" valign="top" bgcolor="#000033"><table width="100%"  border="0" cellspacing="2" cellpadding="2">
          <tr>
            <td class="text2"><img src="images/deal_login.jpg" width="164" height="27"></td>
          </tr>
          <tr>
            <td height="176" valign="top" class="text" align="center">
			  <form name="ChangePwdForm" action="update_password_customer.asp" method="post" onSubmit="JavaScript:return validateform()">
			  <input type="hidden" name="oPwd" value="<%= Session("oPwd") %>">
			  <table cellpadding="2" cellspacing="0" border="0">
			    <tr>
				  <td colspan="2" class="text"><b>YOUR PASSWORD HAS EXPIRED.  Please enter and confirm a new password.</b></td></tr>
				<tr>
				  <td colspan="2"><hr size="1" color="#FFFFFF"></td></tr>
			    <tr>
				  <td class="text">New Password:</td>
				  <td><input type="password" name="Password" size="30"></td></tr>
				<tr>
				  <td class="text">Confirm New Password:</td>
				  <td><input type="password" name="cPassword" size="30"></td></tr>
				<tr>
				  <td colspan="2"><br></td></tr>
				<tr>
				  <td>&nbsp;</td>
				  <td align="center"><input type="submit" value="      CONTINUE      "></td></tr>
			  </table>
			  </form>
			</td>
          </tr>
      </table></td>
		<td width="13" background="images/frameright.jpg">
			<img src="images/frameright.jpg" width="13" height="33" alt=""></td>
	</tr>
	<tr>
		<td background="images/frameleft.jpg">&nbsp;			</td>
		<td background="images/frameright.jpg">&nbsp;			</td>
	</tr>
	<tr>
		<td colspan="10">
			<img src="images/bot.jpg" width="792" height="28" alt=""></td>
	</tr>
	<tr valign="top">
	  <td colspan="10"><!--#include file="bot_nav.htm" --></td>
	</tr>
	<tr>
		<td>
			<img src="images/spacer.gif" width="15" height="1" alt=""></td>
		<td width="78">
			<img src="images/spacer.gif" width="78" height="1" alt=""></td>
		<td width="125">
			<img src="images/spacer.gif" width="125" height="1" alt=""></td>
		<td width="11">
			<img src="images/spacer.gif" width="11" height="1" alt=""></td>
		<td width="89">
			<img src="images/spacer.gif" width="89" height="1" alt=""></td>
		<td width="110">
			<img src="images/spacer.gif" width="110" height="1" alt=""></td>
		<td width="112">
			<img src="images/spacer.gif" width="112" height="1" alt=""></td>
		<td width="118">
			<img src="images/spacer.gif" width="118" height="1" alt=""></td>
		<td width="121">
			<img src="images/spacer.gif" width="121" height="1" alt=""></td>
		<td>
			<img src="images/spacer.gif" width="13" height="1" alt=""></td>
	</tr>
</table>
<!-- End ImageReady Slices -->
<script type="text/javascript">
var gaJsHost = (("https:" == document.location.protocol) ? "https://ssl." : "http://www.");
document.write(unescape("%3Cscript src='" + gaJsHost + "google-analytics.com/ga.js' type='text/javascript'%3E%3C/script%3E"));
</script>
<script type="text/javascript">
try {
var pageTracker = _gat._getTracker("UA-13114034-1");
pageTracker._trackPageview();
} catch(err) {}</script>
<script type="text/javascript">
var gaJsHost = (("https:" == document.location.protocol) ? "https://ssl." : "http://www.");
document.write(unescape("%3Cscript src='" + gaJsHost + "google-analytics.com/ga.js' type='text/javascript'%3E%3C/script%3E"));
</script>
<script type="text/javascript">
try {
var pageTracker = _gat._getTracker("UA-12589244-1");
pageTracker._trackPageview();
} catch(err) {}</script>
</body>
</html>