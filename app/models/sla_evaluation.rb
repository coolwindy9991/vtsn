class SlaEvaluation < ActiveRecord::Base
  belongs_to :user
  default_scope -> { order(created_at: :desc) }
  validates :evaluation_date, presence: true
  validates :airline_code, presence: true
  validates :flight_no, presence: true
end
