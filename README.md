SendMail.ps1 Library
=====

Version: 1.0.0<br />
Date: July 27, 2010<br />
Author: Johan Cyprich<br />
Author Email: jcyprich@live.com<br />
Author URL: www.cyprich.com<br />
License: The MIT License (MIT)<br />

SUMMARY:
-----
PowerShell function to send mail with an option for authentication. If you do not want to authentication, leave $sAuthUserName and $AuthPassword as empty strings.

FUNCTIONS
-----
*function SendMail* ([string] $sHost, [string] $sFrom, [string] $sTo, [string] $sSubject, [string] $sMessage, [string] $sAuthUserName, [string] $sAuthPassword)

*$sHost* - Host name of mail server.<br />
*$sFrom* - E-mail address of mail sender.<br />
*$sTo* - E-mail address of mail recipient.<br />
*$sSubject* - Subject title of message.<br />
*$sMessage* - Message sent to recipient.<br />
*$sAuthUserName* - User name for authentication.<br />
*$sAuthPassword* - Password for authentication.<br />

Returns True if mail was sent successfully, False otherwise.
