class CsEvaluationPolicy < ApplicationPolicy
  def destroy?
    user.admin?
  end
end