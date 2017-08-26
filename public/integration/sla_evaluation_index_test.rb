require 'test_helper'

class SlaEvaluationIndexTest < ActionDispatch::IntegrationTest
  test "sla evaluations index" do
    get sla_evaluations_path
  end
end
