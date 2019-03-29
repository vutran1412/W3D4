class AddColumnAnswerChoice < ActiveRecord::Migration[5.2]
  def change
    add_column :answer_choices, :answer_choice, :text, null:false
  end
end
