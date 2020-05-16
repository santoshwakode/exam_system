class Ability
  include CanCan::Ability

  def initialize(user)
    if user.teacher?
      can :manage, :all 
    else 
      can :manage, Student
      can :create, TestDetail
   end

  end
end
