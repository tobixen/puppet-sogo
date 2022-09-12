# @summary Manage the SOGo service
#
# @api private
class sogo::service {
  assert_private()

  service { $sogo::service:
    ensure => running,
    enable => true,
  }
}
