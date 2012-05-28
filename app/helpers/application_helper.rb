module ApplicationHelper
  def usuario_omniauth_authorize_url(provider, options = {})
    url = root_url(options).gsub(/\/$/, '')
    "#{url}#{usuario_omniauth_authorize_path(provider)}"
  end
end
