class Ability
  include CanCan::Ability

  def initialize(user)
    usuario ||= Usuario.new

    if usuario.papel == 'super-administrador'
      can :manage, :all
    else
      can :read, :all
    end
  end
end
