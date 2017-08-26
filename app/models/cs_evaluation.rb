class CsEvaluation < ActiveRecord::Base
  include SharedMethod
  belongs_to :user, foreign_key: "evaluator"
  has_many :questionnaire, foreign_key: "evaluation_id"
  
  validates :evaluation_date, :flight_no, :presence => true
  validates :staff_id, presence: {:message => ' ID is not found.'}
  validate :evaluation, :staff_not_found, :staff_evaluated_twice
  
  scope :evaluation_times, ->(value) {
    if (value.nil? || value == '2') 
      group(:staff_id).having("count(cs_evaluations.staff_id) >= ?", value)
    else 
      group(:staff_id).having("count(cs_evaluations.staff_id) = 1")
    end
  }
  scope :evaluated, -> {group(:staff_id).having("count(cs_evaluations.staff_id) >= 1")}
  scope :order_desc, -> {order(:evaluation_date => :desc)}
  scope :team, lambda {|value| joins("INNER JOIN users ON cs_evaluations.staff_id = users.staff_id").where("users.team_id = ?", value) unless (value.nil? || value.to_i  == 0)}
  scope :start_from, lambda { |value| where("evaluation_date >= ?", value) if value }
  scope :end_from, lambda { |value| where("evaluation_date <= ?", value) if value }
  
  def staff_evaluated_twice
    unless self.evaluation_date.blank?
      Date.beginning_of_week=(:monday)
      s_date = self.evaluation_date.beginning_of_week
      e_date = self.evaluation_date.end_of_week
      staff = CsEvaluation.where(:staff_id => staff_id).where("evaluation_date >= ? and evaluation_date <= ?", s_date, e_date)
      if staff.size >= 2
        errors.add(:staff_id, " ID has been evaluated twice #{s_date.strftime("%d/%m/%Y")} - #{e_date.strftime("%d/%m/%Y")}")
      end
    end
  end
  
  def staff_not_found
    u = User.where(activated: true).find_by_staff_id(staff_id)
    if u.blank?
      errors.add(:staff_id, " ID #{staff_id} not found.")
    end
  end
  
  def evaluation
    self.class.evaluation_date_cannot_be_in_the_future(self.evaluation_date)
  end
end
