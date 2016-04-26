class sogo3::debian::repo {
  apt::source { 'inverse_ca':
    ensure   => present,
    comment  => 'Inverse repository for SOGo',
    location => 'http://inverse.ca/debian-v3',
    release  => $::lsbdistcodename,
    repos    => $::lsbdistcodename,
    key      => {
      id     => 'FE9E84327B18FF82B0378B6719CDA6A9810273C4',
      server => 'pgp.mit.edu',
    },
  }
}
