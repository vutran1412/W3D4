class CreateUser < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :authored_polls
      t.text :responses
      t.timestamps
    end
  end
end
