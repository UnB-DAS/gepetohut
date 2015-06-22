class Ability
  include CanCan::Ability
  alias_action :read, :update, to: :read_and_edit
  alias_action :create, :destroy, to: :create_and_destroy

  def initialize( user )
    user ||= User.new

    if user.has_role? :admin
        can :manage, :all
    elsif user.has_role? :manager
        can :manage, Employee
        can :manage, Pizza
        can :manage, Ingredients
        can :update, Restaurant
        can :read, :all
    elsif user.has_role? :customer
        can :show, :update, User, id: user.id
        can :create, Pizza
        can :create, Order
    end
  end
end
