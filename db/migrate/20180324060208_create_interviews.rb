class CreateInterviews < ActiveRecord::Migration[5.1]
  def change
    create_table :interviews do |t|
      t.string :candidate
      t.string :approval
      t.string :user_id

      t.timestamps
    end
  end
end
