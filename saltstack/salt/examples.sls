install vim:
  pkg.installed:
    - name: vim

create my_new_directory:
 file.directory:
   - name: /opt/my_new_directory
   - user: root
   - group: root
   - mode: 755

# yes this is a valid ID, just has to be unique
Make sure the mysql service is running:
  service.running:
    - name: mysql

Make sure the mysql service is running and enable it to start at boot:
  service.running:
    - name: mysql
    - enable: True

user account for pete:
  user.present:
    - name: pete
    - shell: /bin/bash
    - home: /home/pete
    - groups:
      - sudo

myserver in hosts file:
  host.present:
    - name: myserver
    - ip: 192.168.0.42

# this is an example of remote execution function
# these are commands called from the command line
# start with salt.module.*
# a state execution function
restart vsftpd:
  module.run:
    - name: service.restart
    - m_name: vsftpd  # m_name gets passed to the execution module as "name"