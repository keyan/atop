name             'atop'
maintainer       'Keyan Pishdadian'
maintainer_email 'kpishdadian@gmail.com'
license          'Apache-2.0'
description      'Installs/Configures atop'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
source_url       'https://github.com/keyan/atop/'
issues_url       'https://github.com/keyan/atop/issues'
version          '1.0.4'

depends 'yum-epel'
depends 'logrotate'

supports 'amazon'
supports 'centos'
supports 'redhat'
supports 'ubuntu'

chef_version '>= 13'
