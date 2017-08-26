module SharedMethod
  extend ActiveSupport::Concern

  module ClassMethods
    def evaluation_date_cannot_be_in_the_future(de)
      if de.present? && de > Date.today
        errors.add(:evaluation_date, "can't be in the future.")
      end
    end
  end
end