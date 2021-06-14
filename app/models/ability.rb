# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new 
    if user.id == 1
      can :manage, :all
    end
    if user.admin?
      can :manage, :all
    else
      can :index, MedicalCenter # Solo puede ver, los demas tienen before_action: authenticate_user!
      #Permitir a un usuario, solo modificar sus datos.
      can :read, User, :id => user.id
      can :update, User, :id => user.id
    end
  end
end
