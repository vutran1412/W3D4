class AddColumnResponse < ActiveRecord::Migration[5.2]
  def change
    add_column :responses, :answer_choice_id,:integer, null: false
  end
end
