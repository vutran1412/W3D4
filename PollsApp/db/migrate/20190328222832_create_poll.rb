class CreatePoll < ActiveRecord::Migration[5.2]
  def change
    create_table :polls do |t|
      t.integer :author, null: false
      t.text :questions, null: false
      t.timestamps
    end
  end
end
