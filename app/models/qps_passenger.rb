class QpsPassenger < ActiveRecord::Base
  include SharedMethod
  validates :evaluation_date, :flight_no, :presence => true
  validates :staff_id, presence: {:message => ' ID is not found.'}
  validates_uniqueness_of :flight_no, :scope => [:evaluation_date]
  scope :order_desc, -> {order(:evaluation_date => :desc, :flight_no => :asc)}
  scope :start_from, lambda { |value| where("evaluation_date >= ?", value) if value }
  scope :end_from, lambda { |value| where("evaluation_date <= ?", value) if value }
  
  validate :evaluation
  
  def evaluation
    self.class.evaluation_date_cannot_be_in_the_future(self.evaluation_date)
  end
end
