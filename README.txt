SendMail.ps1 Library
===================

Version: 1.0.0
Date: July 27, 2010
Author: Johan Cyprich
Author Email: jcyprich@live.com
Author URL: www.cyprich.com
License: The MIT License (MIT)

---

PowerShell function to send mail with an option for authentication. If you do not want to authentication, leave $sAuthUserName and $AuthPassword as empty strings.

Functions
---------
function SendMail ([string] $sHost, [string] $sFrom, [string] $sTo, [string] $sSubject, [string] $sMessage, [string] $sAuthUserName, [string] $sAuthPassword)

$sHost - Host name of mail server.
$sFrom - E-mail address of mail sender.
$sTo - E-mail address of mail recipient.
$sSubject - Subject title of message.
$sMessage - Message sent to recipient.
$sAuthUserName - User name for authentication.
$sAuthPassword - Password for authentication.

Returns True if mail was sent succesfully, False otherwise.
