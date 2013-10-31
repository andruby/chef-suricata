# Installs and configures pulled pork (to keep your rulesets up to date)

# Install pre-requisites
package "libcrypt-ssleay-perl"
package "liblwp-protocol-https-perl"

# Install latest version van svn trunk
remote_file node['pulledpork']['bin'] do
  source node['pulledpork']['source_url']
end

file node['pulledpork']['bin'] do
  mode 0755
end

# Configuration files
directory "/etc/pulledpork"

template "/etc/pulledpork/pulledpork.conf"
template "/etc/pulledpork/disablesid.conf"
template "/etc/pulledpork/dropsid.conf"
template "/etc/pulledpork/enablesid.conf"
template "/etc/pulledpork/modifysid.conf"
