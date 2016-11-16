# Comments

class <class-name> {

  package { '<package-name>':
    ensure => installed,
  }

  service { '<service-name>':
    ensure => running,
    require => Package['<package-name>'],
  } 

}
