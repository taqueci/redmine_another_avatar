Redmine::Plugin.register :redmine_another_avatar do
  name 'Redmine Another Avatar plugin'
  author 'Takeshi Nakamura'
  description 'Enables to configure an avatar server URL'
  version '0.1.0'
  url 'https://github.com/taqueci/redmine_another_avatar'
  author_url 'https://github.com/taqueci'

  settings default: {
    avatar_server_url: 'https://www.gravatar.com/avatar'
  }, partial: 'redmine_another_avatar/configure'
end

require_dependency 'redmine_another_avatar/gravatar_helper_patch'
