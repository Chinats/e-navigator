class AddNameToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :name, :string
    add_column :users, :birthday, :datetime
    add_column :users, :sex, :integer,  limit: 1, default:nil
    add_column :users, :school, :string
  end
end
