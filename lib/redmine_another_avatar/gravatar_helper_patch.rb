module RedmineAnotherAvatar
  module PublicMethods
    def gravatar_api_url(hash)
      settings = Setting.find_by_name('plugin_redmine_another_avatar').value

      url = settings[:avatar_server_url] || '//www.gravatar.com/avatar'

      "#{url}/#{hash}"
    end
  end
end

ActionView::Base.send :prepend, RedmineAnotherAvatar::PublicMethods
