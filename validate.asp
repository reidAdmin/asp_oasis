<!--#INCLUDE file="inc/functions.asp" -->
<!--#INCLUDE file="inc/settings.asp" -->
<!--#INCLUDE file="inc/db_conn_open.asp" -->
<%
Dim strRedirect

strRedirect = "dealer_resources/dealer_front.asp"

blnShouldValidate = TRUE
blnSuccessfulLogin = TRUE
strUsername = UCase(Request.Form("Username"))
strPassword = UCase(Request.Form("Password"))

Set objRec = Server.CreateObject("ADODB.RecordSet")

If SQLInject(strUsername) OR SQLInject(strPassword) Then
	LockoutLogin
	blnShouldValidate = FALSE
	blnSuccessfulLogin = FALSE
End If

If blnShouldValidate = TRUE Then
	objRec.Open "SELECT * FROM Users WHERE Username = '" & strUsername & "' AND Password = '" & strPassword & "' AND Active = TRUE", objConn
	If NOT objRec.EOF Then
		UserID = objRec("UserID")
		dtPasswordExpires = objRec("PasswordExpires")
	Else
		strRedirect = "dealer_login.asp"
		blnSuccessfulLogin = FALSE
	End If
	objRec.Close
End If

objRec.CursorType = adOpenKeyset
objRec.LockType = adLockOptimistic

If blnSuccessfulLogin = TRUE Then
	AddLogFile TRUE, strUsername
	If dtPasswordExpires <= Date Then
		objRec.Open "SELECT * FROM Settings", objConn
		intDaysUserInactive = objRec("DaysUserInactive")
		objRec.Close

		If intDaysUserInactive <> 0 Then
			If (dtPasswordExpires + intDaysUserInactive) <= Date+intDaysUserInactive Then
				Session("Username") = strUsername
				strRedirect = "change_password.asp"
				Session("oPwd") = strPassword
			Else
				strRedirect = "account_inactivated.asp"
			End If
		End If
	Else
		Session("Username") = CStr(UserID)
	End If
Else
	AddLoginAttempt
	AddLogFile FALSE, strUsername
End If

Set objRec = NOTHING
%>
<!--#INCLUDE file="inc/db_conn_close.asp" -->
<%
Response.Redirect strRedirect
%>