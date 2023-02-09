# @summary Manage SOGo configuration file
#
# @api private
class sogo::config {
  assert_private()

  file { $sogo::configuration_file:
    ensure  => file,
    group   => 'sogo',
    mode    => '0440',
    content => epp('sogo/sogo.conf.epp'),
  }
}
