node default {
  file {'/root/README':
    ensure => file,
  }
}
node 'master.puppet.vm' {
  include role::master_server
  file { '/root/README':
    ensure => file,
    content => " welcome to the ${fqdn}\n",
  }
}

node /^web/ {
  include role::app_server
}

node /^db/ {
  include role::db_server
}

node 'minetest.puppet.vm' {
  include role::minecraft_service
}
