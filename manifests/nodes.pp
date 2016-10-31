node 'node01' {

  include nginx

  user { 'art':
    ensure 		=> present,
    comment		=> 'Art Vandeley',
    home 		=> '/home/art',
    managehome 	=> true,			##ensures that home dir is created (if required) 
  }

  ## Adds the specified public key to art's authorized_users file (art is the name of a user)
  ## Recap: this allows any user with the associated private key to ssh onto this puppet node as user: art
  ssh_authorized_key { 'art_ssh':
    user		=> 'art',
    type		=> 'rsa',
    key 		=> 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDO/I8pygUsouZkYcwaeneroXiTli7ZoM4PeVdC1CcJfizyAIeN3GTUNO6hmixNW7b1TctwPrruXDQLoWK6FLtJCx1mNVmt3VTEMcqL9brED1c61K3twaqWlbsOTwUThYYcPAZpDV20hQSetXvi3RnbFYqDc/y4hd2y1nojDhBhOy6pFHU4EHV4uyfSYt0ENN8cMVaZ9G0TlrBtHruRTT29aw0UDSA+nOndJetginLst86gtDzTUoWyGLvOmGfORzH3m8yj+jmB+TD9YhvEu6KUxZS98kB3AxSlyN8VP+6QmiTEwNFy3uEr8DuQGagZD+np1e+uTZ+PtH+ZlG03uQ4r',
  }

  #user { 'art':
  #  ensure 	=> absent,
  #}

}

node 'node02' {
  include nginx
}