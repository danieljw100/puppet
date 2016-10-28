node 'master' {
  include nginx
  include ssh
}

node 'node01' {
  include nginx
  include ssh
}