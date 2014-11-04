name             'python-api'
maintainer       'Rackspace'
maintainer_email 'rackspace-cookbooks@rackspace.com'
license          'All rights reserved'
description      'Installs/Configures python-api'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

depends 'yum'
depends 'yum-epel'
depends 'yum-ius'
depends 'apt'
depends 'build-essential'
depends 'chef-sugar'
depends 'platformstack'
depends 'python'
depends 'git'
depends 'rackops_rolebook'
depends 'uwsgi'