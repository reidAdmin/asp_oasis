<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Thank You</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="vstyle.css">
<style type="text/css">
<!--
body {
	background-color: #006;
}
-->
</style></head>

<body topmargin="0">
<p>&nbsp;</p>
<div align="center">
<table width="419" border="0" cellpadding="0" cellspacing="0" height="432">
  <tr bgcolor="#000033">
    <td align="center" valign="top"> 
	<img src="images/thanks_pop.jpg" width="400" height="32" alt=""></td>
	</tr>
	<tr bgcolor="#000033">
    <td valign="top" width="400">
	<table width="106%" border="0" cellspacing="5" cellpadding="5" height="182">
      <tr>
        <td valign="top" class="text">
              <p align="left"><strong>Thank you for registering your Oasis 
				equipment.<br>
				You entered the following information:</strong><p align="left">
				<!--webbot bot="ConfirmationField" S-Field="owner" startspan --><%
Dim FP_SavedFields
FP_InitFormConfirmation
Sub FP_InitFormConfirmation
	On Error Resume Next
	Session("FP_OldCodePage") = Session.CodePage
	Session("FP_OldLCID") = Session.LCID
	Session.CodePage = 28591
	set FP_SavedFields = Server.CreateObject("Scripting.Dictionary")
	if IsArray(Session("FP_SavedFields")) and IsArray(Session("FP_SavedValues")) then
		Dim FP_arFields
		Dim FP_arValues
		Dim FP_idx
		FP_arFields = Session("FP_SavedFields")
		FP_arValues = Session("FP_SavedValues")
		for FP_idx = 0 to UBound(FP_arFields)
			FP_SavedFields.Item(FP_arFields(FP_idx)) = FP_arValues(FP_idx)
		next
	Session("FP_SavedFields") = ""
	Session("FP_SavedValues") = ""
	end if
	Session.CodePage = Session("FP_OldCodePage")
	Session.LCID = Session("FP_OldLCID")
End Sub
Sub FP_ConfirmField(sField)
	On Error Resume Next
	Session("FP_OldCodePage") = Session.CodePage
	Session("FP_OldLCID") = Session.LCID
	Session.CodePage = 28591
	sOut = FP_SavedFields(sField)
	sOut = Replace(sOut,"&","^^@^^")
	sOut = Server.HTMLEncode(sOut)
	sOut = Replace(sOut,"^^@^^","&")
	Response.Write sOut
	Session.CodePage = Session("FP_OldCodePage")
	Session.LCID = Session("FP_OldLCID")
End Sub
%><%FP_ConfirmField("owner")%><!--webbot bot="ConfirmationField" i-checksum="64477" endspan --><br>
				<!--webbot bot="ConfirmationField" S-Field="mail_address" startspan --><%FP_ConfirmField("mail_address")%><!--webbot bot="ConfirmationField" i-checksum="30926" endspan --><br>
				<!--webbot bot="ConfirmationField" S-Field="city_owner" startspan --><%FP_ConfirmField("city_owner")%><!--webbot bot="ConfirmationField" i-checksum="25109" endspan --><br>
				<!--webbot bot="ConfirmationField" S-Field="state_owner" startspan --><%FP_ConfirmField("state_owner")%><!--webbot bot="ConfirmationField" i-checksum="27844" endspan --><br>
				<!--webbot bot="ConfirmationField" S-Field="zip_code_owner" startspan --><%FP_ConfirmField("zip_code_owner")%><!--webbot bot="ConfirmationField" i-checksum="40743" endspan --><br>
				<!--webbot bot="ConfirmationField" S-Field="country_owner" startspan --><%FP_ConfirmField("country_owner")%><!--webbot bot="ConfirmationField" i-checksum="44154" endspan --><br>
				<!--webbot bot="ConfirmationField" S-Field="phone" startspan --><%FP_ConfirmField("phone")%><!--webbot bot="ConfirmationField" i-checksum="13930" endspan --><br>
				<!--webbot bot="ConfirmationField" S-Field="email" startspan --><%FP_ConfirmField("email")%><!--webbot bot="ConfirmationField" i-checksum="14050" endspan --><br>
				<br>
				<!--webbot bot="ConfirmationField" S-Field="car_wash_name" startspan --><%FP_ConfirmField("car_wash_name")%><!--webbot bot="ConfirmationField" i-checksum="41425" endspan --><br>
				<!--webbot bot="ConfirmationField" S-Field="address_site" startspan --><%FP_ConfirmField("address_site")%><!--webbot bot="ConfirmationField" i-checksum="31106" endspan --><br>
				<!--webbot bot="ConfirmationField" S-Field="city_site" startspan --><%FP_ConfirmField("city_site")%><!--webbot bot="ConfirmationField" i-checksum="26935" endspan --><br>
				<!--webbot bot="ConfirmationField" S-Field="state_site" startspan --><%FP_ConfirmField("state_site")%><!--webbot bot="ConfirmationField" i-checksum="25121" endspan --><br>
				<!--webbot bot="ConfirmationField" S-Field="zip_code_site" startspan --><%FP_ConfirmField("zip_code_site")%><!--webbot bot="ConfirmationField" i-checksum="39869" endspan --><br>
				<!--webbot bot="ConfirmationField" S-Field="country_site" startspan --><%FP_ConfirmField("country_site")%><!--webbot bot="ConfirmationField" i-checksum="33517" endspan --><br>
				<br>
				<!--webbot bot="ConfirmationField" S-Field="make" startspan --><%FP_ConfirmField("make")%><!--webbot bot="ConfirmationField" i-checksum="4117" endspan --><br>
				<!--webbot bot="ConfirmationField" S-Field="model" startspan --><%FP_ConfirmField("model")%><!--webbot bot="ConfirmationField" i-checksum="13986" endspan --><br>
				<!--webbot bot="ConfirmationField" S-Field="serial_number" startspan --><%FP_ConfirmField("serial_number")%><!--webbot bot="ConfirmationField" i-checksum="40780" endspan --><p align="left">
				<strong>
				<br>
				</strong><font size="2" face="Arial, Helvetica, sans-serif">
				<strong><img src="images/close.gif" value="Close Help Window" onClick="window.close()" width="175" height="19"><br>
                </strong></font></td>
      </tr>
    </table> </td>
	</tr>
</table>
</div>
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