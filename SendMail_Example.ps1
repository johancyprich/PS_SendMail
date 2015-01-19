### APPLICATION: SendMail Example
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
###
### SUMMARY:
### Sending mail example using SendMail library.


#=[ LIBRARIES ]====================================================================================


[string] $libraries = "D:\Projects\Libraries\MyLib\PowerShell"

."$libraries\SendMail\SendMail.ps1"


#=[ MAIN ]=========================================================================================


SendMail 'mail.server.com' 'sender@email.com' 'password' 'jcyprich@dominionblue.com' 'Test' 'This is a test' $false
