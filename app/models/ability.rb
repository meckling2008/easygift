class Ability
  include CanCan::Ability

  def initialize(user)
    # See the wiki for details: https://github.com/ryanb/cancan/wiki/Defining-Abilities
    user ||= User.new # in case of guest

    if user.role? :admin
      can :manage, :all
    elsif user.role? :user
      can :manage, :all
    else
      cannot :manage, :all
      logger.error "User with an invalid role attempted access. #{user.inspect}"
    end

  end

end
