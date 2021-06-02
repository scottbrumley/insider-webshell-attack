#!/bin/bash
  
cd /var/www/html/
rsync -rptgoDvhP --chown=apache:apache ./ apache@172.16.60.14:/var/www/html/ --delete
