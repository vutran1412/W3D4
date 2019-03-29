class RemoveResponseFromUser < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :responses
  end
end
