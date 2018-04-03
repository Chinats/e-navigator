class CreateInterviews < ActiveRecord::Migration[5.1]
  def change
    create_table :interviews do |t|
      t.datetime :candidate
      t.string :approval, default: "保留"
      t.string :user_id

      t.timestamps
    end
  end
end
