# Manage docker setup

class docker {

  file { '/etc/apt/sources.list.d/docker.list':
    source => 'puppet:///modules/docker/docker.list',
  } 

  package { "linux-image-extra-$kernelrelease":
    ensure => installed,
  }

  package { 'linux-image-extra-virtual':
    ensure => installed,
  }

  package { 'docker.io':
    ensure => installed,
    require => [ File['/etc/apt/sources.list.d/docker.list'], Package["linux-image-extra-$::kernelrelease"], Package['linux-image-extra-virtual'] ],
  }

  service { 'docker':
    ensure => running,
    require => Package['docker.io'],
  } 

  group { 'docker':
    ensure => present,
  }

  user { 'vagrant':
    groups => ['docker'],
    require => Group['docker'],
  }

}
