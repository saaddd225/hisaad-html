version: 0.0
os: linux
files:
  - source: /   # Specify the source directory or files to deploy
    destination: /var/www/html/   # The destination path on the EC2 instance
hooks:
  BeforeInstall:
    - location: scripts/before_install.sh
      timeout: 180
  AfterInstall:
    - location: scripts/after_install.sh
      timeout: 180
  ApplicationStart:
    - location: scripts/application_start.sh
      timeout: 180
