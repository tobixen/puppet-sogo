class sogo3::repo {
  include sogo3

  if $sogo3::repository_username and $sogo3::repository_password {
    $location = "https://${sogo3::repository_username}:${sogo3::repository_password}@packages.inverse.ca/SOGo/release/3/debian/"
  } else {
    $location = 'https://packages.inverse.ca/SOGo/nightly/3/debian/'
  }

  apt::source { 'inverse_ca':
    ensure   => $sogo3::ensure_repository,
    comment  => 'Inverse repository for SOGo',
    location => $location,
    release  => $facts['lsbdistcodename'],
    repos    => $facts['lsbdistcodename'],
    key      => {
      id     => 'FE9E84327B18FF82B0378B6719CDA6A9810273C4',
      server => 'pgp.mit.edu',
    },
  }
}
