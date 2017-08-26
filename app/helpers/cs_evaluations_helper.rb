module CsEvaluationsHelper
  def staff_name(staff_id)
    if !staff_id.nil?
      u = User.find_by_staff_id(staff_id)
      u.name unless u.nil?
    end
  end
end
