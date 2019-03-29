class AddIndexesAnswerChoiceResponseQuestionAndPoll < ActiveRecord::Migration[5.2]
  def change
    add_index(:answer_choices,:question_id)
    add_index(:polls,:author)
    add_index(:questions,:poll_id)
    add_index(:responses,:user_id)
    add_index(:responses,:answer_choice_id)
  end
end
