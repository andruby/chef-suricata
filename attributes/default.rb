# You can set this to stable, beta or daily
default['suricata']['ppa'] = "stable"
default['suricata']['config_file'] = "/etc/suricata/suricata.yaml"
default['suricata']['log_dir'] = "/var/log/suricata/"
default['suricata']['pid_file'] = "/var/run/suricata.pid"

default['suricata']['rules_path'] = "/etc/suricata/rules/"
default['suricata']['rule_file'] = "pulledpork.rules"
default['suricata']['sid_msg'] = "/etc/suricata/sid-msg.map"

default['suricata']['interface'] = "eth0"
default['suricata']['enable_stats'] = true

