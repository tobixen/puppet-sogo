class sogo3::config {
  file { $sogo3::configuration_file:
    ensure  => file,
    content => epp('sogo3/sogo.conf.epp'),
  }
}
