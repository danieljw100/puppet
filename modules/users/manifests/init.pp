# Comments

class users {

  user { 'danw':
    ensure => present,
    groups => ['vagrant'],
    comment => 'Daniel Wilkie',
    home => '/home/danw',
    managehome => true,
  }

  ssh_authorized_key { 'danw_ssh':
    user => 'danw',
    type => 'rsa',
    key => '123456789123456789',
  }

#  package { '<package-name>':
#    ensure => installed,
#  }

#  service { '<service-name>':
#    ensure => running,
#    require => Package['<package-name>'],
#  } 

}
