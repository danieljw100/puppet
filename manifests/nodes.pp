node 'master' {
  include users
  include nginx
  #include sudoers
  include docker
}

node 'node01' {
  include users
  include nginx
  #include sudoers
  include docker
}

node 'node02' {
  include users
  include nginx
  #include sudoers
  include docker
}
