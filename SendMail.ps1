### APPLICATION: SendMail
### VERSION: 1.0.0
### DATE: August 18, 2014
### AUTHOR: Johan Cyprich
### AUTHOR URL: www.cyprich.com
### AUTHOR EMAIL: jcyprich@live.com
###   
### LICENSE:
### The MIT License (MIT)
### "http://opensource.org/licenses/mit-license.php">###
###
### Copyright (c) 2014 Johan Cyprich. All rights reserved.
###
### Permission is hereby granted, free of charge, to any person obtaining a copy 
### of this software and associated documentation files (the "Software"), to deal
### in the Software without restriction, including without limitation the rights
### to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
### copies of the Software, and to permit persons to whom the Software is
### furnished to do so, subject to the following conditions:
###
### The above copyright notice and this permission notice shall be included in
### all copies or substantial portions of the Software.
###
### THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
### IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
### FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
### AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
### LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
### OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
### THE SOFTWARE.


####################################################################################################
### SUMMARY:
### Send e-mail with or without credentials.
###
### PARAMETERS:
### smtpHost (in): mail server
### smtpUser (in): user name for sending mail
### smtpPassword (in): password of user for sending mail
### to (in): mail recipient
### subject (in): subject of email
### body (in): text content of email
### getCredentials (in): should use be prompted for credentials?
###
### USAGE:
### Set getCredentials to $true if user is to be prompted to enter username and password to send
### mail, otherwise enter $false and the credentials in the parameters will will be used.
####################################################################################################

function SendMail
{
  param
  (
    [string] $smtpHost,
    [string] $smtpUser,
    [string] $smtpPassword,
    [string] $to,   
    [string] $subject,
    [string] $body,
    [bool] $getCredentials
  )
  
  # Create a secure password for user authentication.
  
  $securePassword = New-Object -TypeName System.Security.SecureString
  $smtpPassword.ToCharArray() | ForEach-Object {$securePassword.AppendChar($_)}
  $cred = new-object -typename System.Management.Automation.PSCredential -argumentlist $smtpUser, $securePassword

  if ($getCredentials)
  {
    # Ask user to enter credentials.
    Send-MailMessage -To $to -From $smtpUser -SMTPServer $smtpHost -Credential (Get-Credential) -Subject $subject -Body $body -BodyAsHtml
  } 
  
  else
  {
    # Use credentials without prompting the user.
    Send-MailMessage -To $to -From $smtpUser -SMTPServer $smtpHost -Credential $cred -Subject $subject -Body $body -BodyAsHtml
  }
} # SendMail
