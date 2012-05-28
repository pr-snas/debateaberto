class Ability
  include CanCan::Ability

  def initialize(usuario)
    usuario ||= Usuario.new

    if usuario.papel == 'administrador'
      can :manage, :all
    else
      can :read, :all
      can :create, Canal do |canal|
        usuario.persisted?
      end
      can [:update, :destroy], Canal do |canal|
        canal.try(:usuario) == usuario || usuario.papel == 'moderador'
      end
    end
  end
end
