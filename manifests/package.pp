class sogo3::package {
  include sogo3

  package { $sogo3::package:
    ensure => installed,
  }
}
