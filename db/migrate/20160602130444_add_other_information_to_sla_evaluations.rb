class AddOtherInformationToSlaEvaluations < ActiveRecord::Migration
  def change
    add_column :sla_evaluations, :other_information, :text
  end
end
