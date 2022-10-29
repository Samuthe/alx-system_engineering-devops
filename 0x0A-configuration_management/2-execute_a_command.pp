#Using Puppet, create a manifest that kills a process named killmenow.
#Must use the exec Puppet resource
#Must use pkill

exec { 'killmenow':
  command  => '/usr/bin/pkill killmenow',
  provider => 'shell',
  returns  => [0, 1],
}
