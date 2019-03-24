module RedmineAnotherAvatar
  module PublicMethods
    def gravatar_api_url(hash)
      url = Setting.plugin_redmine_another_avatar['avatar_server_url'] ||
            '//www.gravatar.com/avatar'

      "#{url}/#{hash}"
    end
  end
end

ActionView::Base.send :prepend, RedmineAnotherAvatar::PublicMethods
