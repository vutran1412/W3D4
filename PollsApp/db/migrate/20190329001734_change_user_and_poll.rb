class ChangeUserAndPoll < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :authored_polls
    add_column :polls, :poll, :text, null:false
  end
end
