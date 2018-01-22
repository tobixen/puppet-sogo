class sogo3 (
  $language = 'English',
  $time_zone = 'America/Montreal',
  $login_module = 'Calendar',
  $password_change_enabled = false,
  $user_sources = [],
  $profile_url = 'postgresql://sogo:sogo@localhost:5432/sogo/sogo_user_profile',
  $folder_info_url = 'postgresql://sogo:sogo@localhost:5432/sogo/sogo_folder_info',
  $sessions_folder_url = 'postgresql://sogo:sogo@localhost:5432/sogo/sogo_sessions_folder',
  $ensure_repository = present,
  $repository_username = undef,
  $repository_password = undef,
  $configuration_file = undef,
  $package = undef,
  $service = undef,
) {
  include inline_template('sogo3::<%= @osfamily.downcase %>')
  include sogo3::package
  include sogo3::service

  validate_re($ensure_repository, '^(present|absent)$')

  class { 'sogo3::config':
    language                => $language,
    time_zone               => $time_zone,
    login_module            => $login_module,
    user_sources            => $user_sources,
    profile_url             => $profile_url,
    folder_info_url         => $folder_info_url,
    sessions_folder_url     => $sessions_folder_url,
    password_change_enabled => $password_change_enabled,
  }

  Class['sogo3::package'] ->
  Class['sogo3::config'] ~>
  Class['sogo3::service']
}
