class sogo3::config(
  $language = 'English',
  $time_zone = 'America/Montreal',
  $login_module = 'Calendar',
  $password_change_enabled = false,
  $user_sources = [],
  $profile_url = 'postgresql://sogo:sogo@localhost:5432/sogo/sogo_user_profile',
  $folder_info_url = 'postgresql://sogo:sogo@localhost:5432/sogo/sogo_folder_info',
  $sessions_folder_url = 'postgresql://sogo:sogo@localhost:5432/sogo/sogo_sessions_folder',
) {
  file { $sogo3::sogo_conf:
    ensure  => file,
    content => template('sogo3/sogo.conf.erb'),
  }
}
