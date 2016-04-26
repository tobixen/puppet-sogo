class sogo3::params {
  case $::osfamily {
    'Debian': {
      $package = ['sogo', 'sogo-common']
      $service = 'sogo'
      $sogo_conf = '/etc/sogo/sogo.conf'
     }
    'FreeBSD': {
      $package = 'sogo3'
      $service = 'sogod'
      $sogo_conf = '/usr/local/etc/sogo3/sogo.conf'
    }
  }
}
