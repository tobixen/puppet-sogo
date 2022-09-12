# @summary Manage the SOGo package
#
# @api private
class sogo::package {
  assert_private()

  package { $sogo::package:
    ensure => installed,
  }
}
