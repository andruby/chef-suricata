default['pulledpork']['bin'] = "/usr/local/bin/pulledpork.pl"
default['pulledpork']['source_url'] = "https://pulledpork.googlecode.com/svn/trunk/pulledpork.pl"
default['pulledpork']['run_cmd'] = "#{node['pulledpork']['bin']} -c /etc/pulledpork/pulledpork.conf -S suricata -H -T -l -E"
default['pulledpork']['rule_urls'] = [
  'http://rules.emergingthreats.net/|emerging.rules.tar.gz|open'
]

default['pulledpork']['mailto'] = nil

default['pulledpork']['dropsids'] = %w{}
default['pulledpork']['enablesids'] = %w{}
default['pulledpork']['modifysids'] = [""]

default['pulledpork']['disablesids'] = %w{
imap
pop2
pop3
icmp
voip
netbios
experimental
chat
dns
web-iis
oracle
x11
telnet
policy
scada
web-activex
web-coldfusion
web-frontpage
misc
emerging-compromised
emerging-game
emerging-inappropriate
emerging-deleted
emerging-chat
emerging-policy
emerging-web_specific_apps
}
