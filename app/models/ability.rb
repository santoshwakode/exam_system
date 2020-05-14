class Ability
  include CanCan::Ability

  def initialize(user)
    if user.teacher?
        can :manage, Student
        can :manage, Exam
        can :manage, ExamDetail
        can :manage, ExamFormat
        can :manage, TestDetail
   end

    if user.student?
        can :read, ExamDetail
        can :create, TestDetail
   end

  end
end
