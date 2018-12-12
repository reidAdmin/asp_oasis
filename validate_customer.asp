<!--#INCLUDE file="inc/functions_customers.asp" -->
<!--#INCLUDE file="inc/settings.asp" -->
<!--#INCLUDE file="inc/db_conn_open.asp" -->
<%
Dim strRedirect

strRedirect = "customer_resources/customer_front.asp"

blnShouldValidate = TRUE
blnSuccessfulLogin = TRUE
strUsername = UCase(Request.Form("Username"))
strPassword = UCase(Request.Form("Password"))
isRUser = FALSE

Set objRec = Server.CreateObject("ADODB.RecordSet")

If SQLInject(strUsername) OR SQLInject(strPassword) Then
	LockoutLogin
	blnShouldValidate = FALSE
	blnSuccessfulLogin = FALSE
End If

If blnShouldValidate = TRUE Then
	objRec.Open "SELECT * FROM C_Users WHERE Username = '" & strUsername & "' AND Password = '" & strPassword & "' AND Active = TRUE", objConn
	If NOT objRec.EOF Then
		UserID = objRec("UserID")
		dtPasswordExpires = objRec("PasswordExpires")
	Else
		strRedirect = "c_log.asp"
		blnSuccessfulLogin = FALSE
	End If
	objRec.Close
End If

If blnSuccessfulLogin = FALSE Then
	objRec.Open "SELECT * FROM Users WHERE Username = '" & strUsername & "' AND Password = '" & strPassword & "' AND Active = TRUE", objConn
	If NOT objRec.EOF Then
		blnSuccessfulLogin = TRUE
		strRedirect = "customer_resources/customer_front.asp"
		isRUser = TRUE
		UserID = objRec("UserID")
		dtPasswordExpires = objRec("PasswordExpires")
	Else
		strRedirect = "c_log.asp"
		blnSuccessfulLogin = FALSE
	End If
	objRec.Close	
End If

objRec.CursorType = adOpenKeyset
objRec.LockType = adLockOptimistic

If isRUser = FALSE Then
	If blnSuccessfulLogin = TRUE Then
		AddLogFile TRUE, strUsername
		If dtPasswordExpires <= Date Then
			objRec.Open "SELECT * FROM C_Settings", objConn
			intDaysUserInactive = objRec("DaysUserInactive")
			objRec.Close

			If intDaysUserInactive <> 0 Then
				If (dtPasswordExpires + intDaysUserInactive) <= Date+intDaysUserInactive Then
					Session("Username") = strUsername
					strRedirect = "customer_resources/customer_front.asp"
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
End If

Set objRec = NOTHING
%>
<!--#INCLUDE file="inc/db_conn_close.asp" -->
<%
Response.Redirect strRedirect
%>