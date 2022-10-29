#Using Puppet, install flask from pip3.
#Install flask
#Version must be 2..0

# Install a package using Puppet

exec { 'install ruby':
  command => '/usr/bin/apt-get install -y ruby'
}

exec { 'install puppet-lint':
  command => '/usr/bin/gem install puppet-lint -v 3.0.0'
}

package { 'ruby':
  ensure => 'installed',
  before => Exec['install ruby']
}

package { 'puppet-lint':
  ensure  => 'installed',
  before  => Exec['install puppet-lint'],
  require => Package['ruby']
}
