class sogo3::service {
  service { $sogo3::service:
    ensure => running,
    enable => true,
  }
}
