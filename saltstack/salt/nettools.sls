# to run this file, log onto the salt master and do this
# salt 'minion2' state.apply nettools
install_network_packages:
  pkg.installed:
    - pkgs:
        - rsync
        - lftp
        - curl