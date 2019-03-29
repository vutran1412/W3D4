class RemoveQuestions < ActiveRecord::Migration[5.2]
  def change
    remove_column :polls, :questions
    remove_column :questions, :answer_choices
    add_column :questions, :question, :text, null:false
    add_column :answer_choices, :answer_choice_name, :text, null:false
  end
end
