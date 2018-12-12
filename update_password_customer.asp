<!--#INCLUDE file="inc/functions_customers.asp" -->
<!--#INCLUDE file="inc/settings.asp" -->
<!--#INCLUDE file="inc/db_conn_open.asp" -->
<%
Dim strRedirect

strRedirect = "customer_resources/customer_front.asp"

blnShouldValidate = TRUE
strPassword = UCase(Request.Form("Password"))

Set objRec = Server.CreateObject("ADODB.RecordSet")

If SQLInject(strPassword) Then
	blnShouldValidate = FALSE
End If

If blnShouldValidate = TRUE Then
	objRec.Open "SELECT * FROM Settings", objConn
	PasswordExpires = objRec("PasswordExpires")
	objRec.Close

	objRec.CursorType = adOpenKeyset
	objRec.LockType = adLockOptimistic

	objRec.Open "SELECT * FROM C_Users WHERE Username = '" & Session("Username") & "'", objConn
	objRec("Password") = strPassword
	objRec("PasswordExpires") = Date + PasswordExpires
	objRec.Update
	objRec.Close
End If

Set objRec = NOTHING
%>
<!--#INCLUDE file="inc/db_conn_close.asp" -->
<%
Response.Redirect strRedirect
%>