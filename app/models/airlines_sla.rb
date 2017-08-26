class AirlinesSla < ActiveRecord::Base
  default_scope -> { order(airline_code: :asc) }
  before_save :downcase_airline_code
  before_save :downcase_category
  
  private
    def downcase_airline_code
      self.airline_code = airline_code.downcase
    end
    
    def downcase_category
      self.category = category.downcase
    end
end
