#Using Puppet, install flask from pip3.
#Install flask
#Version must be 2..0

package { 'puppet-lint':
  ensure => '3.0.0',
  provider => 'gem',
}
