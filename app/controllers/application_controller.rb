class ApplicationController < ActionController::Base
  protect_from_forgery

  def current_ability
    @current_ability ||= Ability.new(current_usuario)
  end
end
