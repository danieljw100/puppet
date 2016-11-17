node 'node01' {
  include nginx
  #include sudoers
  include docker
}

node 'node02' {
  include nginx
  #include sudoers
  include docker
}