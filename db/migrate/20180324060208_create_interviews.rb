class CreateInterviews < ActiveRecord::Migration[5.1]
  def change
    create_table :interviews do |t|
      t.datetime :candidate
      t.integer :approval, default: 0
      t.string :user_id

      t.timestamps
    end
  end
end
