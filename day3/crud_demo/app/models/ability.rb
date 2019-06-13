# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    if user.nil?
      guest_user
    else
      signed_in_user(user)
    end
  end

  def guest_user
    can :index, Task
    can :read, Task
  end

  def signed_in_user(user)
    guest_user
    can :create, Task
    can :edit, Task, user_id: user.id
    can :destroy, Task, user_id: user.id
  end
end









