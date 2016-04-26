class sogo3::service {
  include sogo3

  service { $sogo3::service:
    ensure => running,
    enable => true,
  }
}
