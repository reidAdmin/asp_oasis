<%

On Error Resume Next
Session("FP_OldCodePage") = Session.CodePage
Session("FP_OldLCID") = Session.LCID
Session.CodePage = 28591
Err.Clear

strErrorUrl = ""

If Request.ServerVariables("REQUEST_METHOD") = "POST" Then
If Request.Form("VTI-GROUP") = "0" Then
	Err.Clear

	Set fp_conn =  Server.CreateObject("ADODB.Connection")
	FP_DumpError strErrorUrl, "Cannot create connection"

	Set fp_rs = Server.CreateObject("ADODB.Recordset")
	FP_DumpError strErrorUrl, "Cannot create record set"

	fp_conn.Open Application("product_registration4_ConnectionString")
	FP_DumpError strErrorUrl, "Cannot open database"

	fp_rs.Open "Results", fp_conn, 1, 3, 2 ' adOpenKeySet, adLockOptimistic, adCmdTable
	FP_DumpError strErrorUrl, "Cannot open record set"

	fp_rs.AddNew
	FP_DumpError strErrorUrl, "Cannot add new record set to the database"
	Dim arFormFields0(17)
	Dim arFormDBFields0(17)
	Dim arFormValues0(17)

	arFormFields0(0) = "zip_code_owner"
	arFormDBFields0(0) = "zip_code_owner"
	arFormValues0(0) = Request("zip_code_owner")
	arFormFields0(1) = "country_site"
	arFormDBFields0(1) = "country_site"
	arFormValues0(1) = Request("country_site")
	arFormFields0(2) = "country_owner"
	arFormDBFields0(2) = "country_owner"
	arFormValues0(2) = Request("country_owner")
	arFormFields0(3) = "serial_number"
	arFormDBFields0(3) = "serial_number"
	arFormValues0(3) = Request("serial_number")
	arFormFields0(4) = "city_site"
	arFormDBFields0(4) = "city_site"
	arFormValues0(4) = Request("city_site")
	arFormFields0(5) = "model"
	arFormDBFields0(5) = "model"
	arFormValues0(5) = Request("model")
	arFormFields0(6) = "city_owner"
	arFormDBFields0(6) = "city_owner"
	arFormValues0(6) = Request("city_owner")
	arFormFields0(7) = "address_site"
	arFormDBFields0(7) = "address_site"
	arFormValues0(7) = Request("address_site")
	arFormFields0(8) = "mail_address"
	arFormDBFields0(8) = "mail_address"
	arFormValues0(8) = Request("mail_address")
	arFormFields0(9) = "email"
	arFormDBFields0(9) = "email"
	arFormValues0(9) = Request("email")
	arFormFields0(10) = "phone"
	arFormDBFields0(10) = "phone"
	arFormValues0(10) = Request("phone")
	arFormFields0(11) = "state_owner"
	arFormDBFields0(11) = "state_owner"
	arFormValues0(11) = Request("state_owner")
	arFormFields0(12) = "owner"
	arFormDBFields0(12) = "owner"
	arFormValues0(12) = Request("owner")
	arFormFields0(13) = "state_site"
	arFormDBFields0(13) = "state_site"
	arFormValues0(13) = Request("state_site")
	arFormFields0(14) = "car_wash_name"
	arFormDBFields0(14) = "car_wash_name"
	arFormValues0(14) = Request("car_wash_name")
	arFormFields0(15) = "zip_code_site"
	arFormDBFields0(15) = "zip_code_site"
	arFormValues0(15) = Request("zip_code_site")
	arFormFields0(16) = "make"
	arFormDBFields0(16) = "make"
	arFormValues0(16) = Request("make")

	FP_SaveFormFields fp_rs, arFormFields0, arFormDBFields0

	FP_SaveFieldToDB fp_rs, Now, "Timestamp"

	fp_rs.Update
	FP_DumpError strErrorUrl, "Cannot update the database"

	fp_rs.Close
	fp_conn.Close

	Session("FP_SavedFields")=arFormFields0
	Session("FP_SavedValues")=arFormValues0
	Session.CodePage = Session("FP_OldCodePage")
	Session.LCID = Session("FP_OldLCID")
	Response.Redirect "registration_thanks.asp"

End If
End If

Session.CodePage = Session("FP_OldCodePage")
Session.LCID = Session("FP_OldLCID")

%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
< TITLE >OASIS CAR WASH SYSTEMS PRODUCT REGISTRATION</TITLE>

 <META NAME="description" CONTENT="Online Product Registration for Oasis Car Wash Equipment. Also, oasis car wash product registration,oasis car wash warranty registration,oasis car wash product registration,oasis typhoon car wash equipment registration,oasis typhoon xp car wash equipment registration,oasis monsoon car wash equipment registration,oasis jetstream car wash equipment registration,oasis mirage car wash equipment registration,oasis galeforce dryer equipment registation,oasis car wash warranty registration,oasis typhoon car wash warranty registration,oasis typhoon xp warranty registration,oasis monsoon car wash warranty registration,oasis jetstream car wash warranty registration,oasis mirage car wash warranty registration,oasis galeforce dryer warranty registration,carwash equipment registration online,carwash systems warranty registration online and car wash manufacturer oasis online equipment registration.">

<META NAME="keywords" CONTENT="oasis car wash product registration,oasis car wash warranty registration,oasis car wash product registration,oasis typhoon car wash equipment registration,oasis typhoon xp car wash equipment registration,oasis monsoon car wash equipment registration,oasis jetstream car wash equipment registration,oasis mirage car wash equipment registration,oasis galeforce dryer equipment registation,oasis car wash warranty registration,oasis typhoon car wash warranty registration,oasis typhoon xp warranty registration,oasis monsoon car wash warranty registration,oasis jetstream car wash warranty registration,oasis mirage car wash warranty registration,oasis galeforce dryer warranty registration,carwash equipment registration online,carwash systems warranty registration online,car wash manufacturer oasis online equipment registration">

<META NAME="robots" CONTENT="INDEX,FOLLOW">
<meta name="GOOGLEBOT" content="index,follow">
<META NAME="revisit-after" CONTENT="14 Days">

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="vstyle.css">
<style type="text/css">
<!--
body {
	background-color: #006;
}
-->
</style>
<script language="javascript">



function validate() {

if(document.MyForm.fullname.value == '') 
{alert('Please enter your Full Name.');
document.MyForm.fullname.focus();
return false;}

if(document.MyForm.address.value == '') 
{alert('Please enter your address.');
document.MyForm.address.focus();
return false;}

if(document.MyForm.city.value == '') 
{alert('Please enter your city.');
document.MyForm.city.focus();
return false;}

if(document.MyForm.state.value == '') 
{alert('Please enter your state.');
document.MyForm.state.focus();
return false;}

if(document.MyForm.zipcode.value == '') 
{alert('Please enter your zip code.');
document.MyForm.zipcode.focus();
return false;}

if(document.MyForm.phone.value == '') 
{alert('Please enter your phone number.');
document.MyForm.phone.focus();
return false;}

if((!document.MyForm.CD.checked)&&(!document.MyForm.HardCopy.checked))
{alert('Please select a literature format.');
return false;}



}

</script>
</head>

<body topmargin="0">
<p><b><font face="Arial" size="2" color="#FFFFFF">Equipment Registration</font></b></p>
<p align="justify"><b><font face="Arial" size="2" color="#FFFFFF">By completing 
the Registration Form below, you will apply for a password that will permit 
access to restricted pages.&nbsp; Upon submission of the form, you will be 
contacted by email or telephone within 2 business days with your username and 
password.</font></b></p>
<p><b><font face="Arial" size="2" color="#FFFFFF">Thank you for using Oasis 
Car Wash Systems website.</font></b></p>
<div align="center">
<table width="545" border="0" cellpadding="0" cellspacing="0" height="585">
  <tr bgcolor="#000033">
	<td width="4"></td>
    <td width="541" height="18" valign="top" class="text2"><span class="text2">
	<strong>EQUIPMENT REGISTRATION - (All Fields Required)</strong></span></td>
  </tr>
	<tr>
    <td height="567" valign="top" bgcolor="#000033" colspan="2"><table width="100%" border="0" cellspacing="5" cellpadding="5">
      <tr>
        <td bgcolor="#000033" class="text">
		<!--webbot BOT="GeneratedScript" PREVIEW=" " startspan --><script Language="JavaScript" Type="text/javascript"><!--
function FrontPage_Form1_Validator(theForm)
{

  if (theForm.owner.value == "")
  {
    alert("Please enter a value for the \"Full Name\" field.");
    theForm.owner.focus();
    return (false);
  }

  if (theForm.owner.value.length < 5)
  {
    alert("Please enter at least 5 characters in the \"Full Name\" field.");
    theForm.owner.focus();
    return (false);
  }

  if (theForm.owner.value.length > 40)
  {
    alert("Please enter at most 40 characters in the \"Full Name\" field.");
    theForm.owner.focus();
    return (false);
  }

  if (theForm.mail_address.value == "")
  {
    alert("Please enter a value for the \"Mailing Address\" field.");
    theForm.mail_address.focus();
    return (false);
  }

  if (theForm.mail_address.value.length < 5)
  {
    alert("Please enter at least 5 characters in the \"Mailing Address\" field.");
    theForm.mail_address.focus();
    return (false);
  }

  if (theForm.mail_address.value.length > 40)
  {
    alert("Please enter at most 40 characters in the \"Mailing Address\" field.");
    theForm.mail_address.focus();
    return (false);
  }

  if (theForm.city_owner.value == "")
  {
    alert("Please enter a value for the \"City\" field.");
    theForm.city_owner.focus();
    return (false);
  }

  if (theForm.city_owner.value.length < 5)
  {
    alert("Please enter at least 5 characters in the \"City\" field.");
    theForm.city_owner.focus();
    return (false);
  }

  if (theForm.city_owner.value.length > 40)
  {
    alert("Please enter at most 40 characters in the \"City\" field.");
    theForm.city_owner.focus();
    return (false);
  }

  if (theForm.state_owner.value == "")
  {
    alert("Please enter a value for the \"State\" field.");
    theForm.state_owner.focus();
    return (false);
  }

  if (theForm.state_owner.value.length < 2)
  {
    alert("Please enter at least 2 characters in the \"State\" field.");
    theForm.state_owner.focus();
    return (false);
  }

  if (theForm.state_owner.value.length > 40)
  {
    alert("Please enter at most 40 characters in the \"State\" field.");
    theForm.state_owner.focus();
    return (false);
  }

  if (theForm.zip_code_owner.value == "")
  {
    alert("Please enter a value for the \"Zip Code\" field.");
    theForm.zip_code_owner.focus();
    return (false);
  }

  if (theForm.zip_code_owner.value.length < 5)
  {
    alert("Please enter at least 5 characters in the \"Zip Code\" field.");
    theForm.zip_code_owner.focus();
    return (false);
  }

  if (theForm.zip_code_owner.value.length > 40)
  {
    alert("Please enter at most 40 characters in the \"Zip Code\" field.");
    theForm.zip_code_owner.focus();
    return (false);
  }

  if (theForm.country_owner.value == "")
  {
    alert("Please enter a value for the \"Country\" field.");
    theForm.country_owner.focus();
    return (false);
  }

  if (theForm.country_owner.value.length < 2)
  {
    alert("Please enter at least 2 characters in the \"Country\" field.");
    theForm.country_owner.focus();
    return (false);
  }

  if (theForm.country_owner.value.length > 40)
  {
    alert("Please enter at most 40 characters in the \"Country\" field.");
    theForm.country_owner.focus();
    return (false);
  }

  if (theForm.phone.value == "")
  {
    alert("Please enter a value for the \"Phone Number\" field.");
    theForm.phone.focus();
    return (false);
  }

  if (theForm.phone.value.length < 10)
  {
    alert("Please enter at least 10 characters in the \"Phone Number\" field.");
    theForm.phone.focus();
    return (false);
  }

  if (theForm.phone.value.length > 40)
  {
    alert("Please enter at most 40 characters in the \"Phone Number\" field.");
    theForm.phone.focus();
    return (false);
  }

  if (theForm.email.value == "")
  {
    alert("Please enter a value for the \"Email Address\" field.");
    theForm.email.focus();
    return (false);
  }

  if (theForm.email.value.length < 6)
  {
    alert("Please enter at least 6 characters in the \"Email Address\" field.");
    theForm.email.focus();
    return (false);
  }

  if (theForm.email.value.length > 40)
  {
    alert("Please enter at most 40 characters in the \"Email Address\" field.");
    theForm.email.focus();
    return (false);
  }

  if (theForm.car_wash_name.value == "")
  {
    alert("Please enter a value for the \"Car Wash Name\" field.");
    theForm.car_wash_name.focus();
    return (false);
  }

  if (theForm.car_wash_name.value.length < 5)
  {
    alert("Please enter at least 5 characters in the \"Car Wash Name\" field.");
    theForm.car_wash_name.focus();
    return (false);
  }

  if (theForm.car_wash_name.value.length > 40)
  {
    alert("Please enter at most 40 characters in the \"Car Wash Name\" field.");
    theForm.car_wash_name.focus();
    return (false);
  }

  if (theForm.address_site.value == "")
  {
    alert("Please enter a value for the \"Site Address\" field.");
    theForm.address_site.focus();
    return (false);
  }

  if (theForm.address_site.value.length < 5)
  {
    alert("Please enter at least 5 characters in the \"Site Address\" field.");
    theForm.address_site.focus();
    return (false);
  }

  if (theForm.address_site.value.length > 40)
  {
    alert("Please enter at most 40 characters in the \"Site Address\" field.");
    theForm.address_site.focus();
    return (false);
  }

  if (theForm.city_site.value == "")
  {
    alert("Please enter a value for the \"Site City\" field.");
    theForm.city_site.focus();
    return (false);
  }

  if (theForm.city_site.value.length < 3)
  {
    alert("Please enter at least 3 characters in the \"Site City\" field.");
    theForm.city_site.focus();
    return (false);
  }

  if (theForm.city_site.value.length > 40)
  {
    alert("Please enter at most 40 characters in the \"Site City\" field.");
    theForm.city_site.focus();
    return (false);
  }

  if (theForm.state_site.value == "")
  {
    alert("Please enter a value for the \"Site State\" field.");
    theForm.state_site.focus();
    return (false);
  }

  if (theForm.state_site.value.length < 2)
  {
    alert("Please enter at least 2 characters in the \"Site State\" field.");
    theForm.state_site.focus();
    return (false);
  }

  if (theForm.state_site.value.length > 40)
  {
    alert("Please enter at most 40 characters in the \"Site State\" field.");
    theForm.state_site.focus();
    return (false);
  }

  if (theForm.zip_code_site.value == "")
  {
    alert("Please enter a value for the \"Site Zip Code\" field.");
    theForm.zip_code_site.focus();
    return (false);
  }

  if (theForm.zip_code_site.value.length < 5)
  {
    alert("Please enter at least 5 characters in the \"Site Zip Code\" field.");
    theForm.zip_code_site.focus();
    return (false);
  }

  if (theForm.zip_code_site.value.length > 40)
  {
    alert("Please enter at most 40 characters in the \"Site Zip Code\" field.");
    theForm.zip_code_site.focus();
    return (false);
  }

  if (theForm.country_site.value == "")
  {
    alert("Please enter a value for the \"Site Country\" field.");
    theForm.country_site.focus();
    return (false);
  }

  if (theForm.country_site.value.length < 2)
  {
    alert("Please enter at least 2 characters in the \"Site Country\" field.");
    theForm.country_site.focus();
    return (false);
  }

  if (theForm.country_site.value.length > 40)
  {
    alert("Please enter at most 40 characters in the \"Site Country\" field.");
    theForm.country_site.focus();
    return (false);
  }

  if (theForm.make.selectedIndex < 0)
  {
    alert("Please select one of the \"Select an Option\" options.");
    theForm.make.focus();
    return (false);
  }

  var checkOK = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz&#402;&#352;&#338;&#381;&#353;&#339;&#382;&#376;��������������������������������������������������������������0123456789-";
  var checkStr = theForm.model.value;
  var allValid = true;
  var validGroups = true;
  for (i = 0;  i < checkStr.length;  i++)
  {
    ch = checkStr.charAt(i);
    for (j = 0;  j < checkOK.length;  j++)
      if (ch == checkOK.charAt(j))
        break;
    if (j == checkOK.length)
    {
      allValid = false;
      break;
    }
  }
  if (!allValid)
  {
    alert("Please enter only letter and digit characters in the \"Model Number\" field.");
    theForm.model.focus();
    return (false);
  }

  var checkOK = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz&#402;&#352;&#338;&#381;&#353;&#339;&#382;&#376;��������������������������������������������������������������0123456789-";
  var checkStr = theForm.serial_number.value;
  var allValid = true;
  var validGroups = true;
  for (i = 0;  i < checkStr.length;  i++)
  {
    ch = checkStr.charAt(i);
    for (j = 0;  j < checkOK.length;  j++)
      if (ch == checkOK.charAt(j))
        break;
    if (j == checkOK.length)
    {
      allValid = false;
      break;
    }
  }
  if (!allValid)
  {
    alert("Please enter only letter and digit characters in the \"Serial Number\" field.");
    theForm.serial_number.focus();
    return (false);
  }
  return (true);
}
//--></script><!--webbot BOT="GeneratedScript" endspan --><form name="FrontPage_Form1" onsubmit="return FrontPage_Form1_Validator(this)" method="POST" action="product_registration.asp" language="JavaScript" webbot-action="--WEBBOT-SELF--">
          <!--webbot bot="SaveDatabase" startspan SuggestedExt="asp" S-DataConnection="product_registration4" S-RecordSource="Results" U-Database-URL="fpdb/product_registration.mdb" S-Builtin-Fields="Timestamp" S-Builtin-DBFields="Timestamp" S-Form-Fields="zip_code_owner country_site country_owner serial_number city_site model city_owner address_site mail_address email phone state_owner owner state_site car_wash_name zip_code_site make" S-Form-DBFields="zip_code_owner country_site country_owner serial_number city_site model city_owner address_site mail_address email phone state_owner owner state_site car_wash_name zip_code_site make" U-ASP-Include-Url="_fpclass/fpdbform.inc" U-Confirmation-Url="registration_thanks.asp" --><input NAME="VTI-GROUP" TYPE="hidden" VALUE="0"><!--#include file="_fpclass/fpdbform.inc"--><!--webbot bot="SaveDatabase" endspan i-checksum="34670" -->
          <table width="100%"  border="0" cellspacing="2" cellpadding="2">
            <tr>
              <td width="50%" align="right"><font color="#FFFFFF" size="2">
				<strong>Owner's Full 
				Name: </strong>
				</font></td>
              <td width="50%" bgcolor="#000033"><font color="#FFFFFF">
				&nbsp;<!--webbot bot="Validation" s-display-name="Full Name" b-value-required="TRUE" i-minimum-length="5" i-maximum-length="40" --><input type="text" name="owner" size="40" maxlength="40" style="font-family: Verdana; font-size: 8pt; background-color:#FFFFFF" tabindex="1"></font></td>
            </tr>
            <tr>
              <td align="right"><strong><font color="#FFFFFF" size="2">Mailing Address:</font></strong></td>
              <td bgcolor="#000033"><font color="#FFFFFF">
				&nbsp;<!--webbot bot="Validation" s-display-name="Mailing Address" b-value-required="TRUE" i-minimum-length="5" i-maximum-length="40" --><input type="text" name="mail_address" size="40" tabindex="2" style="font-family: Verdana; font-size: 8pt; background-color:#FFFFFF" maxlength="40"></font></td>
            </tr>
            <tr>
              <td align="right"><font color="#FFFFFF" size="2"><b>City:</b></font></td>
              <td bgcolor="#000033"><font color="#FFFFFF">
				&nbsp;<!--webbot bot="Validation" s-display-name="City" b-value-required="TRUE" i-minimum-length="5" i-maximum-length="40" --><input type="text" name="city_owner" size="40" style="font-family: Verdana; font-size: 8pt; background-color:#FFFFFF" tabindex="3" maxlength="40"></font></td>
            </tr>
            <tr>
              <td align="right"><font color="#FFFFFF" size="2"><b>State:</b></font></td>
              <td bgcolor="#000033"><font color="#FFFFFF">
				&nbsp;<!--webbot bot="Validation" s-display-name="State" b-value-required="TRUE" i-minimum-length="2" i-maximum-length="40" --><input type="text" name="state_owner" size="40" tabindex="4" style="font-family: Verdana; font-size: 8pt; background-color:#FFFFFF" maxlength="40"></font></td>
            </tr>
            <tr>
              <td align="right"><font color="#FFFFFF" size="2"><b>Zip Code:</b></font></td>
              <td bgcolor="#000033"><font color="#FFFFFF">
				&nbsp;<!--webbot bot="Validation" s-display-name="Zip Code" b-value-required="TRUE" i-minimum-length="5" i-maximum-length="40" --><input type="text" name="zip_code_owner" size="40" tabindex="5" style="font-family: Verdana; font-size: 8pt; background-color:#FFFFFF" maxlength="40"></font></td>
            </tr>
            <tr>
              <td align="right"><font color="#FFFFFF" size="2"><strong> Country:</strong></font></td>
              <td bgcolor="#000033"><font color="#FFFFFF">
				&nbsp;<!--webbot bot="Validation" s-display-name="Country" b-value-required="TRUE" i-minimum-length="2" i-maximum-length="40" --><input type="text" name="country_owner" size="40" tabindex="6" style="font-family: Verdana; font-size: 8pt; background-color:#FFFFFF" maxlength="40"></font></td>
            </tr>
            <tr>
              <td align="right"> <font size="2" color="#FFFFFF"><b>Phone</b></font><b><font color="#FFFFFF" size="2">:</font></b></td>
              <td bgcolor="#000033"><font color="#FFFFFF">
				&nbsp;<!--webbot bot="Validation" s-display-name="Phone Number" b-value-required="TRUE" i-minimum-length="10" i-maximum-length="40" --><input type="text" name="phone" size="40" tabindex="7" style="font-family: Verdana; font-size: 8pt; background-color:#FFFFFF" maxlength="40"></font></td>
            </tr>
            <tr>
              <td align="right"> <font size="2" color="#FFFFFF"><b>Email</b></font><b><font color="#FFFFFF" size="2">:</font></b></td>
              <td bgcolor="#000033"><font color="#FFFFFF">
				&nbsp;<!--webbot bot="Validation" s-display-name="Email Address" b-value-required="TRUE" i-minimum-length="6" i-maximum-length="40" --><input type="text" name="email" size="40" tabindex="8" style="font-family: Verdana; font-size: 8pt; background-color:#FFFFFF" maxlength="40"></font></td>
            </tr>
            <tr>
              <td align="right">&nbsp; </td>
              <td bgcolor="#000033">&nbsp;</td>
            </tr>
            <tr>
              <td align="right"> <font color="#FFFFFF" size="2"><b>Car Wash Name:</b></font></td>
              <td bgcolor="#000033"><font color="#FFFFFF">
				&nbsp;<!--webbot bot="Validation" s-display-name="Car Wash Name" b-value-required="TRUE" i-minimum-length="5" i-maximum-length="40" --><input type="text" name="car_wash_name" size="40" tabindex="9" style="font-family: Verdana; font-size: 8pt; background-color:#FFFFFF" maxlength="40"></font></td>
            </tr>
            <tr>
              <td align="right"><strong><font size="2" color="#FFFFFF">Site Address:</font></strong></td>
              <td bgcolor="#000033"><font color="#FFFFFF">
				&nbsp;<!--webbot bot="Validation" s-display-name="Site Address" b-value-required="TRUE" i-minimum-length="5" i-maximum-length="40" --><input type="text" name="address_site" size="40" tabindex="10" style="font-family: Verdana; font-size: 8pt; background-color:#FFFFFF" maxlength="40"></font></td>
            </tr>
            <tr>
              <td align="right"> <font color="#FFFFFF" size="2"><b>City:</b></font></td>
              <td bgcolor="#000033"><font color="#FFFFFF">
				&nbsp;<!--webbot bot="Validation" s-display-name="Site City" b-value-required="TRUE" i-minimum-length="3" i-maximum-length="40" --><input type="text" name="city_site" size="40" tabindex="11" style="font-family: Verdana; font-size: 8pt; background-color:#FFFFFF" maxlength="40"></font></td>
            </tr>
            <tr>
              <td align="right"> <font color="#FFFFFF" size="2"><b>State:</b></font></td>
              <td bgcolor="#000033"><font color="#FFFFFF">
				&nbsp;<!--webbot bot="Validation" s-display-name="Site State" b-value-required="TRUE" i-minimum-length="2" i-maximum-length="40" --><input type="text" name="state_site" size="40" tabindex="12" style="font-family: Verdana; font-size: 8pt; background-color:#FFFFFF" maxlength="40"></font></td>
            </tr>
			<tr>
              <td align="right"><font color="#FFFFFF" size="2"><b>Zip Code:</b></font></td>
              <td bgcolor="#000033"><font color="#FFFFFF">
				&nbsp;<!--webbot bot="Validation" s-display-name="Site Zip Code" b-value-required="TRUE" i-minimum-length="5" i-maximum-length="40" --><input type="text" name="zip_code_site" size="40" tabindex="13" style="font-family: Verdana; font-size: 8pt; background-color:#FFFFFF" maxlength="40"></font></td>
            </tr>
			<tr>
              <td align="right"><font color="#FFFFFF" size="2"><strong> Country:</strong></font></td>
              <td bgcolor="#000033"><font color="#FFFFFF">
				&nbsp;<!--webbot bot="Validation" s-display-name="Site Country" b-value-required="TRUE" i-minimum-length="2" i-maximum-length="40" --><input type="text" name="country_site" size="40" tabindex="14" style="font-family: Verdana; font-size: 8pt; background-color:#FFFFFF" maxlength="40"></font></td>
            </tr>
            <tr>
              <td align="right">&nbsp; </td>
              <td bgcolor="#000033">&nbsp;</td>
            </tr>
            <tr>
              <td align="right"> <b><font color="#FFFFFF" size="2">Make:</font></b></td>
              <td style="font-family: Verdana; font-size: 8pt" align="left" bgcolor="#000033">
				<font color="#FFFFFF">
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<!--webbot bot="Validation" s-display-name="Select an Option" b-value-required="TRUE" -->
                <select size="1" name="make" style="font-family:Verdana; font-size:8pt; background-color:#FFFFFF" tabindex="15">
				<option selected>Select One</option>
				<option>Eclipse&#8482;</option>
				<option>BayWash i5</option>
				<option>Typhoon&#8482; 8540</option>
				<option>Typhoon&#8482; 8550</option>
				<option>Typhoon&#8482; 8560</option>
				<option>XP&#8482;</option>
				<option>Monsoon&#8482;</option>
				<option>JetStream&#8482;</option>
				</select></font></td>
            </tr>
            <tr>
              <td align="right"> <font color="#FFFFFF" size="2"> <strong>Model No.:</strong></font></td>
              <td align="left" bgcolor="#000033"><font color="#FFFFFF">
				&nbsp;<!--webbot bot="Validation" s-display-name="Model Number" s-data-type="String" b-allow-letters="TRUE" b-allow-digits="TRUE" --><input type="text" name="model" size="30" style="font-family: Verdana; font-size: 8pt; background-color:#FFFFFF" tabindex="16"></font></td>
            </tr>
            <tr>
              <td align="right"> <font color="#FFFFFF"><b><font size="2">Serial No.</font></b></font><b><font size="2" color="#FFFFFF">:</font></b></td>
              <td align="left" bgcolor="#000033"><font color="#FFFFFF">
				&nbsp;<!--webbot bot="Validation" s-display-name="Serial Number" s-data-type="String" b-allow-letters="TRUE" b-allow-digits="TRUE" --><input type="text" name="serial_number" size="30" tabindex="17" style="font-family: Verdana; font-size: 8pt; background-color:#FFFFFF"></font></td>
            </tr>
            <tr>
              <td align="right">&nbsp; </td>
              <td bgcolor="#000033"><font color="#FFFFFF">&nbsp;
                </font></td>
            </tr>
            <tr>
              <td colspan="2"><table  border="0" align="center" cellpadding="0" cellspacing="0">
                <tr>
                  <td align="center">
					<INPUT TYPE=submit VALUE="Submit Form" name="Product_Registration" style="font-family: Verdana; font-size: 8pt; font-weight: bold; background-color:#FFFFFF"></td>
                  <td align="center">&nbsp;&nbsp;
					<INPUT name="Reset" TYPE=reset VALUE="Reset Form" style="font-family: Verdana; font-size: 8pt; font-weight: bold; background-color:#FFFFFF"></td>
                </tr>
              </table></td>
              </tr>
          </table>
        </form></td>
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