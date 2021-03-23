node default {
  file {'/root/README':
    ensure => file,
  }
}
node 'master.puppet.vm' {
  include role::master_server
}
