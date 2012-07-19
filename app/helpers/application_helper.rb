module ApplicationHelper
  def usuario_omniauth_authorize_url(provider, options = {})
    url = root_url(options).gsub(/\/$/, '')
    path = usuario_omniauth_authorize_path(provider)
    "#{url}#{path}"
  end
end
