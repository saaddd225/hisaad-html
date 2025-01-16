version: 0.0
os: linux
files:
  - source: /index.html
    destination: /var/www/html/index.html

hooks:
  AfterInstall:
    - location: scripts/after_install.sh
      timeout: 300
      runas: ec2-user
