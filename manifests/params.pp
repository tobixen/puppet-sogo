class sogo3::params {
  case $::osfamily {
    'debian': {
      $package = ['sogo', 'sogo-common']
      $service = 'sogo'
      $sogo_conf = '/etc/sogo/sogo.conf'
    }
    'freebsd': {
      $package = 'sogo3'
      $service = 'sogod'
      $sogo_conf = '/usr/local/etc/sogo3/sogo.conf'
    }
    default: {
      fail("Unsupported osfamily: ${::osfamily}")
    }
  }
}
