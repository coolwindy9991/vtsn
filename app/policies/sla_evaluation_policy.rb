class SlaEvaluationPolicy < ApplicationPolicy
  def destroy?
    user.admin?
  end
end