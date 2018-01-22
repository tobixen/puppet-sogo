class sogo3::debian {
  include sogo3::debian::repo

  Class['sogo3::debian::repo']
  -> Class['sogo3::package']
}
