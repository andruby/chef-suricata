default['pulledpork']['bin'] = "/usr/local/bin/pulledpork.pl"
default['pulledpork']['source_url'] = "https://pulledpork.googlecode.com/svn/trunk/pulledpork.pl"
default['pulledpork']['run_cmd'] = "#{node['pulledpork']['bin']} -c /etc/pulledpork/pulledpork.conf -S suricata"
default['pulledpork']['rule_urls'] = [
  'http://rules.emergingthreats.net/|emerging.rules.tar.gz|open'
]

default['pulledpork']['mailto'] = nil
