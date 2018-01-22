class sogo3 (
  String                    $language = 'English',
  String                    $time_zone = 'America/Montreal',
  String                    $login_module = 'Calendar',
  Boolean                   $password_change_enabled = false,
  Array[Sogo3::Usersource]  $user_sources = [],
  String                    $profile_url = 'postgresql://sogo:sogo@localhost:5432/sogo/sogo_user_profile',
  String                    $folder_info_url = 'postgresql://sogo:sogo@localhost:5432/sogo/sogo_folder_info',
  String                    $sessions_folder_url = 'postgresql://sogo:sogo@localhost:5432/sogo/sogo_sessions_folder',
  Boolean                   $use_custom_repo = false,
  Enum['present', 'absent'] $ensure_repository = present,
  Optional[String]          $repository_username = undef,
  Optional[String]          $repository_password = undef,
  String                    $configuration_file = undef,
  String                    $package = undef,
  String                    $service = undef,
) {
  if $use_custom_repo {
    include sogo3::repo

    Class['sogo3::repo']
    -> Class['sogo3::package']
  }
  include sogo3::package
  include sogo3::config
  include sogo3::service

  Class['sogo3::package']
  -> Class['sogo3::config']
  ~> Class['sogo3::service']
}
