class profile::ssh_server {
  package { 'openssh-server':
    ensure => present,
  }
  service {'ssh':
    ensure => 'runnig',
    enable => true,
  }
  ssh_authorized_key { 'root@master.puppet.vm':
    ensure => present,
    user   => 'root',
    type   => 'ssh-rsa',
    key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDadotDah2OP9TdbT1jca2TAU+/JLwXeCGyBIxbe+gug8fFEKAJoSNGFTRVb++s2xPG+NeYToF5dn0tNK8JyVu3EAXPM/kGrfCpq5cCuEVWOvYh16VyIKllKe1E19979SyjTz4z1geXpJHcn4XFnXPf23TU8BQ6Bbu8kxIIJAJ0fdCTIyrktAV0oCPEZvxx6Yub641fcXFwGGWJrFKVls97krdJIKfdalTiMTU7MEAETKqKUIXIZufrnXdaYQXzOC6Yjr0zuAmMpAcYH8JkIFppe1/1Jxk9s/zdk1l/yeLBdkzmjZFvl3uczBUHWPCQdZ07lQ0SDNKXng58UzlJibwX',
  }
}
