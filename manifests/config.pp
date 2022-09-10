# @summary Manage SOGo configuration file
#
# @api private
class sogo::config {
  assert_private()

  file { $sogo::configuration_file:
    ensure  => file,
    content => epp('sogo/sogo.conf.epp'),
  }
}
